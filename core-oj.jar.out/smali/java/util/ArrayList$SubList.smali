.class Ljava/util/ArrayList$SubList;
.super Ljava/util/AbstractList;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final offset:I

.field private final parent:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final parentOffset:I

.field size:I

.field final synthetic this$0:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/AbstractList;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList",
            "<TE;>;III)V"
        }
    .end annotation

    iput-object p1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p2, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iput p4, p0, Ljava/util/ArrayList$SubList;->parentOffset:I

    add-int v0, p3, p4

    iput v0, p0, Ljava/util/ArrayList$SubList;->offset:I

    sub-int v0, p5, p4

    iput v0, p0, Ljava/util/ArrayList$SubList;->size:I

    iget v0, p1, Ljava/util/ArrayList;->modCount:I

    iput v0, p0, Ljava/util/ArrayList$SubList;->modCount:I

    return-void
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

    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/ArrayList$SubList;->parentOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/ArrayList$SubList;->modCount:I

    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList$SubList;->size:I

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    if-le p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    iget v2, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-eq v1, v2, :cond_3

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    :cond_3
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/ArrayList$SubList;->parentOffset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2, p2}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    iget-object v1, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/util/ArrayList$SubList;->size:I

    const/4 v1, 0x1

    return v1
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

    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList$SubList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget-object v0, v0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList$SubList;->offset:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

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

    invoke-virtual {p0}, Ljava/util/ArrayList$SubList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

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

    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    iget v2, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    :cond_0
    if-ltz p1, :cond_1

    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    if-le p1, v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget v0, p0, Ljava/util/ArrayList$SubList;->offset:I

    new-instance v1, Ljava/util/ArrayList$SubList$1;

    invoke-direct {v1, p0, p1, v0}, Ljava/util/ArrayList$SubList$1;-><init>(Ljava/util/ArrayList$SubList;II)V

    return-object v1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    if-lt p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    iget v2, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    :cond_2
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/ArrayList$SubList;->parentOffset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/ArrayList$SubList;->size:I

    return-object v0
.end method

.method protected removeRange(II)V
    .locals 3

    iget-object v0, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/ArrayList$SubList;->parentOffset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/util/ArrayList$SubList;->parentOffset:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractList;->removeRange(II)V

    iget-object v0, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/ArrayList$SubList;->modCount:I

    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/ArrayList$SubList;->size:I

    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    if-lt p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    iget v2, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    :cond_2
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget-object v1, v1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList$SubList;->offset:I

    add-int/2addr v2, p1

    aget-object v0, v1, v2

    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget-object v1, v1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList$SubList;->offset:I

    add-int/2addr v2, p1

    aput-object p2, v1, v2

    return-object v0
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    iget v0, p0, Ljava/util/ArrayList$SubList;->modCount:I

    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList$ArrayListSpliterator;

    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v2, p0, Ljava/util/ArrayList$SubList;->offset:I

    iget v3, p0, Ljava/util/ArrayList$SubList;->offset:I

    iget v4, p0, Ljava/util/ArrayList$SubList;->size:I

    add-int/2addr v3, v4

    iget v4, p0, Ljava/util/ArrayList$SubList;->modCount:I

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/ArrayList$ArrayListSpliterator;-><init>(Ljava/util/ArrayList;III)V

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

    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    invoke-static {p1, p2, v0}, Ljava/util/ArrayList;->subListRangeCheck(III)V

    new-instance v0, Ljava/util/ArrayList$SubList;

    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v3, p0, Ljava/util/ArrayList$SubList;->offset:I

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayList$SubList;-><init>(Ljava/util/ArrayList;Ljava/util/AbstractList;III)V

    return-object v0
.end method
