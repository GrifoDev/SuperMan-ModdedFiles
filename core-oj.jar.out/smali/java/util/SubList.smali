.class Ljava/util/SubList;
.super Ljava/util/AbstractList;
.source "AbstractList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final l:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final offset:I

.field private size:I


# direct methods
.method static synthetic -get0(Ljava/util/SubList;)Ljava/util/AbstractList;
    .locals 1

    iget-object v0, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/SubList;)I
    .locals 1

    iget v0, p0, Ljava/util/SubList;->offset:I

    return v0
.end method

.method static synthetic -get2(Ljava/util/SubList;)I
    .locals 1

    iget v0, p0, Ljava/util/SubList;->size:I

    return v0
.end method

.method static synthetic -set0(Ljava/util/SubList;I)I
    .locals 0

    iput p1, p0, Ljava/util/SubList;->size:I

    return p1
.end method

.method constructor <init>(Ljava/util/AbstractList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList",
            "<TE;>;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fromIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractList;->size()I

    move-result v0

    if-le p3, v0, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-le p2, p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fromIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") > toIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iput p2, p0, Ljava/util/SubList;->offset:I

    sub-int v0, p3, p2

    iput v0, p0, Ljava/util/SubList;->size:I

    iget-object v0, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/SubList;->modCount:I

    return-void
.end method

.method private checkForComodification()V
    .locals 2

    iget v0, p0, Ljava/util/SubList;->modCount:I

    iget-object v1, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
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

    iget v1, p0, Ljava/util/SubList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private rangeCheck(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/util/SubList;->size:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private rangeCheckForAdd(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/util/SubList;->size:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/SubList;->rangeCheckForAdd(I)V

    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    iget-object v0, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/SubList;->modCount:I

    iget v0, p0, Ljava/util/SubList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/SubList;->size:I

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

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljava/util/SubList;->rangeCheckForAdd(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    iget-object v1, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/SubList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2, p2}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    iget-object v1, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/SubList;->modCount:I

    iget v1, p0, Ljava/util/SubList;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/util/SubList;->size:I

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

    iget v0, p0, Ljava/util/SubList;->size:I

    invoke-virtual {p0, v0, p1}, Ljava/util/SubList;->addAll(ILjava/util/Collection;)Z

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

    invoke-direct {p0, p1}, Ljava/util/SubList;->rangeCheck(I)V

    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    iget-object v0, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

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

    invoke-virtual {p0}, Ljava/util/SubList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
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

    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    invoke-direct {p0, p1}, Ljava/util/SubList;->rangeCheckForAdd(I)V

    new-instance v0, Ljava/util/SubList$1;

    invoke-direct {v0, p0, p1}, Ljava/util/SubList$1;-><init>(Ljava/util/SubList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/SubList;->rangeCheck(I)V

    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    iget-object v1, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/SubList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/SubList;->modCount:I

    iget v1, p0, Ljava/util/SubList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/SubList;->size:I

    return-object v0
.end method

.method protected removeRange(II)V
    .locals 3

    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    iget-object v0, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/SubList;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/util/SubList;->offset:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractList;->removeRange(II)V

    iget-object v0, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/SubList;->modCount:I

    iget v0, p0, Ljava/util/SubList;->size:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/SubList;->size:I

    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/SubList;->rangeCheck(I)V

    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    iget-object v0, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    iget v0, p0, Ljava/util/SubList;->size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/SubList;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/SubList;-><init>(Ljava/util/AbstractList;II)V

    return-object v0
.end method
