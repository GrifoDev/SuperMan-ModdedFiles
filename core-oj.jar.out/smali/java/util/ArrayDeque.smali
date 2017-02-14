.class public Ljava/util/ArrayDeque;
.super Ljava/util/AbstractCollection;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Deque;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ArrayDeque$DeqIterator;,
        Ljava/util/ArrayDeque$DeqSpliterator;,
        Ljava/util/ArrayDeque$DescendingIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/util/Deque",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final MIN_INITIAL_CAPACITY:I = 0x8

.field private static final serialVersionUID:J = 0x207cda2e240da08bL


# instance fields
.field transient elements:[Ljava/lang/Object;

.field transient head:I

.field transient tail:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/ArrayDeque;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    invoke-direct {p0, p1}, Ljava/util/ArrayDeque;->allocateElements(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayDeque;->allocateElements(I)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private allocateElements(I)V
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0x8

    if-lt p1, v1, :cond_0

    move v0, p1

    ushr-int/lit8 v1, p1, 0x1

    or-int v0, p1, v1

    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    if-gez v0, :cond_0

    ushr-int/lit8 v0, v0, 0x1

    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    return-void
.end method

.method private checkInvariants()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Ljava/util/ArrayDeque;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    aget-object v2, v2, v3

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    sget-boolean v2, Ljava/util/ArrayDeque;->-assertionsDisabled:Z

    if-nez v2, :cond_6

    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    aget-object v2, v2, v3

    if-nez v2, :cond_2

    move v2, v0

    :goto_1
    if-nez v2, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_5

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    aget-object v2, v2, v3

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_1

    :cond_6
    sget-boolean v2, Ljava/util/ArrayDeque;->-assertionsDisabled:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    aget-object v2, v2, v3

    if-nez v2, :cond_7

    :goto_2
    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    return-void
.end method

.method private doubleCapacity()V
    .locals 8

    const/4 v6, 0x0

    sget-boolean v5, Ljava/util/ArrayDeque;->-assertionsDisabled:Z

    if-nez v5, :cond_1

    iget v5, p0, Ljava/util/ArrayDeque;->head:I

    iget v7, p0, Ljava/util/ArrayDeque;->tail:I

    if-ne v5, v7, :cond_0

    const/4 v5, 0x1

    :goto_0
    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    iget-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v5

    sub-int v4, v1, v3

    shl-int/lit8 v2, v1, 0x1

    if-gez v2, :cond_2

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Sorry, deque too big"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v5, v3, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v5, v6, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iput v6, p0, Ljava/util/ArrayDeque;->head:I

    iput v1, p0, Ljava/util/ArrayDeque;->tail:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayDeque;->allocateElements(I)V

    const/4 v2, 0x0

    iput v2, p0, Ljava/util/ArrayDeque;->head:I

    iput v1, p0, Ljava/util/ArrayDeque;->tail:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    :goto_0
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x1

    and-int v0, v2, v1

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

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Ljava/util/ArrayDeque;->head:I

    aput-object p1, v0, v1

    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Ljava/util/ArrayDeque;->doubleCapacity()V

    :cond_1
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    aput-object p1, v0, v1

    iget v0, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Ljava/util/ArrayDeque;->tail:I

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Ljava/util/ArrayDeque;->doubleCapacity()V

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 6

    const/4 v4, 0x0

    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    if-eq v0, v3, :cond_1

    iput v4, p0, Ljava/util/ArrayDeque;->tail:I

    iput v4, p0, Ljava/util/ArrayDeque;->head:I

    move v1, v0

    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    :cond_0
    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    add-int/lit8 v4, v1, 0x1

    and-int v1, v4, v2

    if-ne v1, v3, :cond_0

    :cond_1
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clone()Ljava/util/ArrayDeque;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/util/ArrayDeque;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque",
            "<TE;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractCollection;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayDeque;

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    if-eqz p1, :cond_1

    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    :goto_0
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v3, v0

    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int/lit8 v3, v0, 0x1

    and-int v0, v3, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method delete(I)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/util/ArrayDeque;->checkInvariants()V

    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v6, v1

    add-int/lit8 v4, v6, -0x1

    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    iget v5, p0, Ljava/util/ArrayDeque;->tail:I

    sub-int v6, p1, v3

    and-int v2, v6, v4

    sub-int v6, v5, p1

    and-int v0, v6, v4

    sub-int v6, v5, v3

    and-int/2addr v6, v4

    if-lt v2, v6, :cond_0

    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    :cond_0
    if-ge v2, v0, :cond_2

    if-gt v3, p1, :cond_1

    add-int/lit8 v6, v3, 0x1

    invoke-static {v1, v3, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    const/4 v6, 0x0

    aput-object v6, v1, v3

    add-int/lit8 v6, v3, 0x1

    and-int/2addr v6, v4

    iput v6, p0, Ljava/util/ArrayDeque;->head:I

    return v8

    :cond_1
    invoke-static {v1, v8, v1, v9, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, v1, v4

    aput-object v6, v1, v8

    add-int/lit8 v6, v3, 0x1

    sub-int v7, v4, v3

    invoke-static {v1, v3, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    if-ge p1, v5, :cond_3

    add-int/lit8 v6, p1, 0x1

    invoke-static {v1, v6, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Ljava/util/ArrayDeque;->tail:I

    :goto_1
    return v9

    :cond_3
    add-int/lit8 v6, p1, 0x1

    sub-int v7, v4, p1

    invoke-static {v1, v6, v1, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, v1, v8

    aput-object v6, v1, v4

    invoke-static {v1, v9, v1, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v5, -0x1

    and-int/2addr v6, v4

    iput v6, p0, Ljava/util/ArrayDeque;->tail:I

    goto :goto_1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayDeque$DescendingIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/ArrayDeque$DescendingIterator;-><init>(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque$DescendingIterator;)V

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    aget-object v0, v1, v2

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aget-object v0, v1, v2

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    new-instance v0, Ljava/util/ArrayDeque$DeqIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/ArrayDeque$DeqIterator;-><init>(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque$DeqIterator;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    aput-object v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    iput v3, p0, Ljava/util/ArrayDeque;->head:I

    :cond_0
    return-object v2
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v3, v3, -0x1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    and-int v2, v3, v4

    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    aput-object v5, v0, v2

    iput v2, p0, Ljava/util/ArrayDeque;->tail:I

    :cond_0
    return-object v1
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 4

    if-eqz p1, :cond_1

    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    :goto_0
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v3, v0

    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->delete(I)Z

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int/lit8 v3, v0, 0x1

    and-int v0, v3, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 4

    if-eqz p1, :cond_1

    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v3, v3, -0x1

    and-int v0, v3, v1

    :goto_0
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v3, v0

    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->delete(I)Z

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int/lit8 v3, v0, -0x1

    and-int v0, v3, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public size()I
    .locals 2

    iget v0, p0, Ljava/util/ArrayDeque;->tail:I

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    const/4 v1, -0x1

    new-instance v0, Ljava/util/ArrayDeque$DeqSpliterator;

    invoke-direct {v0, p0, v1, v1}, Ljava/util/ArrayDeque$DeqSpliterator;-><init>(Ljava/util/ArrayDeque;II)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 8

    const/4 v5, 0x0

    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    if-ge v3, v2, :cond_1

    const/4 v4, 0x1

    :goto_0
    if-eqz v4, :cond_2

    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v6, v6

    add-int v1, v3, v6

    :goto_1
    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v6, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v4, :cond_0

    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget-object v7, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v7, v7

    sub-int/2addr v7, v2

    invoke-static {v6, v5, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v7, 0x0

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    iget v4, p0, Ljava/util/ArrayDeque;->tail:I

    if-ge v4, v1, :cond_2

    const/4 v5, 0x1

    :goto_0
    sub-int v8, v4, v1

    if-eqz v5, :cond_3

    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v6, v6

    :goto_1
    add-int v3, v8, v6

    if-eqz v5, :cond_4

    move v6, v4

    :goto_2
    sub-int v0, v3, v6

    array-length v2, p1

    if-le v3, v2, :cond_5

    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    add-int v8, v1, v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v6, v1, v8, v9}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    :cond_0
    :goto_3
    if-eqz v5, :cond_1

    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v6, v7, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object p1

    :cond_2
    move v5, v7

    goto :goto_0

    :cond_3
    move v6, v7

    goto :goto_1

    :cond_4
    move v6, v7

    goto :goto_2

    :cond_5
    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v6, v1, p1, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ge v3, v2, :cond_0

    const/4 v6, 0x0

    aput-object v6, p1, v3

    goto :goto_3
.end method
