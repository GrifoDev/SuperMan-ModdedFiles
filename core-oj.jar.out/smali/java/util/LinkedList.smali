.class public Ljava/util/LinkedList;
.super Ljava/util/AbstractSequentialList;
.source "LinkedList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/Deque;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/LinkedList$DescendingIterator;,
        Ljava/util/LinkedList$LLSpliterator;,
        Ljava/util/LinkedList$ListItr;,
        Ljava/util/LinkedList$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSequentialList",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/Deque",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xc29535d4a608822L


# instance fields
.field transient first:Ljava/util/LinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field transient last:Ljava/util/LinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field transient size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/LinkedList;->size:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private checkElementIndex(I)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/util/LinkedList;->isElementIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/LinkedList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private checkPositionIndex(I)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/util/LinkedList;->isPositionIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/LinkedList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private isElementIndex(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget v1, p0, Ljava/util/LinkedList;->size:I

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isPositionIndex(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget v1, p0, Ljava/util/LinkedList;->size:I

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private linkFirst(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    new-instance v1, Ljava/util/LinkedList$Node;

    invoke-direct {v1, v2, p1, v0}, Ljava/util/LinkedList$Node;-><init>(Ljava/util/LinkedList$Node;Ljava/lang/Object;Ljava/util/LinkedList$Node;)V

    iput-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    if-nez v0, :cond_0

    iput-object v1, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    :goto_0
    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    return-void

    :cond_0
    iput-object v1, v0, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    goto :goto_0
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

    iget v1, p0, Ljava/util/LinkedList;->size:I

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

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->linkLast(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private superClone()Ljava/util/LinkedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractSequentialList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private unlinkFirst(Ljava/util/LinkedList$Node;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList$Node",
            "<TE;>;)TE;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    iget-object v1, p1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    iput-object v2, p1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    iput-object v2, p1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    iput-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    if-nez v1, :cond_0

    iput-object v2, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    :goto_0
    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    return-object v0

    :cond_0
    iput-object v2, v1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    goto :goto_0
.end method

.method private unlinkLast(Ljava/util/LinkedList$Node;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList$Node",
            "<TE;>;)TE;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    iget-object v1, p1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    iput-object v2, p1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    iput-object v2, p1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    iput-object v1, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    if-nez v1, :cond_0

    iput-object v2, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    :goto_0
    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    return-object v0

    :cond_0
    iput-object v2, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget v1, p0, Ljava/util/LinkedList;->size:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/LinkedList;->checkPositionIndex(I)V

    iget v0, p0, Ljava/util/LinkedList;->size:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Ljava/util/LinkedList;->linkLast(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->node(I)Ljava/util/LinkedList$Node;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ljava/util/LinkedList;->linkBefore(Ljava/lang/Object;Ljava/util/LinkedList$Node;)V

    goto :goto_0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->linkLast(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Ljava/util/LinkedList;->checkPositionIndex(I)V

    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v3, v0

    if-nez v3, :cond_0

    return v7

    :cond_0
    iget v8, p0, Ljava/util/LinkedList;->size:I

    if-ne p1, v8, :cond_1

    const/4 v6, 0x0

    iget-object v5, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    :goto_0
    array-length v8, v0

    :goto_1
    if-ge v7, v8, :cond_3

    aget-object v4, v0, v7

    move-object v1, v4

    new-instance v2, Ljava/util/LinkedList$Node;

    invoke-direct {v2, v5, v4, v9}, Ljava/util/LinkedList$Node;-><init>(Ljava/util/LinkedList$Node;Ljava/lang/Object;Ljava/util/LinkedList$Node;)V

    if-nez v5, :cond_2

    iput-object v2, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    :goto_2
    move-object v5, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->node(I)Ljava/util/LinkedList$Node;

    move-result-object v6

    iget-object v5, v6, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    goto :goto_0

    :cond_2
    iput-object v2, v5, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    goto :goto_2

    :cond_3
    if-nez v6, :cond_4

    iput-object v5, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    :goto_3
    iget v7, p0, Ljava/util/LinkedList;->size:I

    add-int/2addr v7, v3

    iput v7, p0, Ljava/util/LinkedList;->size:I

    iget v7, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/LinkedList;->modCount:I

    const/4 v7, 0x1

    return v7

    :cond_4
    iput-object v6, v5, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    iput-object v5, v6, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    goto :goto_3
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    iget v0, p0, Ljava/util/LinkedList;->size:I

    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/LinkedList;->linkFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->linkLast(Ljava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    iput-object v2, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    iput-object v2, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    iput-object v2, v1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    move-object v1, v0

    goto :goto_0

    :cond_0
    iput-object v2, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    iput-object v2, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    const/4 v2, 0x0

    iput v2, p0, Ljava/util/LinkedList;->size:I

    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/util/LinkedList;->superClone()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v2, v0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    iput-object v2, v0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    iput v3, v0, Ljava/util/LinkedList;->size:I

    iput v3, v0, Ljava/util/LinkedList;->modCount:I

    iget-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    new-instance v0, Ljava/util/LinkedList$DescendingIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/LinkedList$DescendingIterator;-><init>(Ljava/util/LinkedList;Ljava/util/LinkedList$DescendingIterator;)V

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/LinkedList;->checkElementIndex(I)V

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->node(I)Ljava/util/LinkedList$Node;

    move-result-object v0

    iget-object v0, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    return-object v1
.end method

.method public getLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    return-object v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    :goto_1
    if-eqz v1, :cond_3

    iget-object v2, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    return v2
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    iget v0, p0, Ljava/util/LinkedList;->size:I

    if-nez p1, :cond_1

    iget-object v1, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    :goto_0
    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v2, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    if-nez v2, :cond_0

    return v0

    :cond_0
    iget-object v1, v1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    :goto_1
    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v2, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    iget-object v1, v1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    return v2
.end method

.method linkBefore(Ljava/lang/Object;Ljava/util/LinkedList$Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/util/LinkedList$Node",
            "<TE;>;)V"
        }
    .end annotation

    iget-object v1, p2, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    new-instance v0, Ljava/util/LinkedList$Node;

    invoke-direct {v0, v1, p1, p2}, Ljava/util/LinkedList$Node;-><init>(Ljava/util/LinkedList$Node;Ljava/lang/Object;Ljava/util/LinkedList$Node;)V

    iput-object v0, p2, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    if-nez v1, :cond_0

    iput-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    :goto_0
    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    return-void

    :cond_0
    iput-object v0, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    goto :goto_0
.end method

.method linkLast(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    new-instance v1, Ljava/util/LinkedList$Node;

    invoke-direct {v1, v0, p1, v2}, Ljava/util/LinkedList$Node;-><init>(Ljava/util/LinkedList$Node;Ljava/lang/Object;Ljava/util/LinkedList$Node;)V

    iput-object v1, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    if-nez v0, :cond_0

    iput-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    :goto_0
    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    return-void

    :cond_0
    iput-object v1, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    goto :goto_0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/LinkedList;->checkPositionIndex(I)V

    new-instance v0, Ljava/util/LinkedList$ListItr;

    invoke-direct {v0, p0, p1}, Ljava/util/LinkedList$ListItr;-><init>(Ljava/util/LinkedList;I)V

    return-object v0
.end method

.method node(I)Ljava/util/LinkedList$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedList$Node",
            "<TE;>;"
        }
    .end annotation

    iget v2, p0, Ljava/util/LinkedList;->size:I

    shr-int/lit8 v2, v2, 0x1

    if-ge p1, v2, :cond_1

    iget-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    iget-object v1, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-le v0, p1, :cond_2

    iget-object v1, v1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

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

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

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

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    goto :goto_0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    goto :goto_0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Ljava/util/LinkedList;->unlinkFirst(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Ljava/util/LinkedList;->unlinkFirst(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Ljava/util/LinkedList;->unlinkLast(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/LinkedList;->checkElementIndex(I)V

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->node(I)Ljava/util/LinkedList$Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->unlink(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_1

    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->unlink(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    return v2

    :cond_0
    iget-object v0, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->unlink(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    return v2

    :cond_2
    iget-object v0, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    invoke-direct {p0, v0}, Ljava/util/LinkedList;->unlinkFirst(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    invoke-direct {p0, v0}, Ljava/util/LinkedList;->unlinkLast(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_1

    iget-object v0, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->unlink(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    return v2

    :cond_0
    iget-object v0, v0, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->unlink(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    return v2

    :cond_2
    iget-object v0, v0, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/LinkedList;->checkElementIndex(I)V

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->node(I)Ljava/util/LinkedList$Node;

    move-result-object v1

    iget-object v0, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    iput-object p2, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Ljava/util/LinkedList;->size:I

    return v0
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

    new-instance v0, Ljava/util/LinkedList$LLSpliterator;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ljava/util/LinkedList$LLSpliterator;-><init>(Ljava/util/LinkedList;II)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    iget v4, p0, Ljava/util/LinkedList;->size:I

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    move v1, v0

    :goto_0
    if-eqz v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    iget-object v4, v3, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    aput-object v4, v2, v1

    iget-object v3, v3, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v6, 0x0

    array-length v4, p1

    iget v5, p0, Ljava/util/LinkedList;->size:I

    if-ge v4, v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    iget v5, p0, Ljava/util/LinkedList;->size:I

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    move-object v2, p1

    iget-object v3, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    move v1, v0

    :goto_0
    if-eqz v3, :cond_1

    add-int/lit8 v0, v1, 0x1

    iget-object v4, v3, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    aput-object v4, v2, v1

    iget-object v3, v3, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    move v1, v0

    goto :goto_0

    :cond_1
    array-length v4, p1

    iget v5, p0, Ljava/util/LinkedList;->size:I

    if-le v4, v5, :cond_2

    iget v4, p0, Ljava/util/LinkedList;->size:I

    aput-object v6, p1, v4

    :cond_2
    return-object p1
.end method

.method unlink(Ljava/util/LinkedList$Node;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList$Node",
            "<TE;>;)TE;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    iget-object v1, p1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    iget-object v2, p1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    if-nez v2, :cond_0

    iput-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    :goto_0
    if-nez v1, :cond_1

    iput-object v2, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    :goto_1
    iput-object v3, p1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    iget v3, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/LinkedList;->size:I

    iget v3, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/LinkedList;->modCount:I

    return-object v0

    :cond_0
    iput-object v1, v2, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    iput-object v3, p1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    goto :goto_0

    :cond_1
    iput-object v2, v1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    iput-object v3, p1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    goto :goto_1
.end method
