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
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList",
            "<TE;>;II)V"
        }
    .end annotation

    .prologue
    .line 618
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    .local p1, "list":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 619
    if-gez p2, :cond_0

    .line 620
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

    .line 621
    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractList;->size()I

    move-result v0

    if-le p3, v0, :cond_1

    .line 622
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

    .line 623
    :cond_1
    if-le p2, p3, :cond_2

    .line 624
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fromIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 625
    const-string/jumbo v2, ") > toIndex("

    .line 624
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 625
    const-string/jumbo v2, ")"

    .line 624
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_2
    iput-object p1, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    .line 627
    iput p2, p0, Ljava/util/SubList;->offset:I

    .line 628
    sub-int v0, p3, p2

    iput v0, p0, Ljava/util/SubList;->size:I

    .line 629
    iget-object v0, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/SubList;->modCount:I

    .line 618
    return-void
.end method

.method private checkForComodification()V
    .locals 2

    .prologue
    .line 768
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    iget v0, p0, Ljava/util/SubList;->modCount:I

    iget-object v1, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    if-eq v0, v1, :cond_0

    .line 769
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 767
    :cond_0
    return-void
.end method

.method private outOfBoundsMsg(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 764
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
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
    .param p1, "index"    # I

    .prologue
    .line 754
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/util/SubList;->size:I

    if-lt p1, v0, :cond_1

    .line 755
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_1
    return-void
.end method

.method private rangeCheckForAdd(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 759
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/util/SubList;->size:I

    if-le p1, v0, :cond_1

    .line 760
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 758
    :cond_1
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 650
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/SubList;->rangeCheckForAdd(I)V

    .line 651
    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    .line 652
    iget-object v0, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 653
    iget-object v0, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/SubList;->modCount:I

    .line 654
    iget v0, p0, Ljava/util/SubList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/SubList;->size:I

    .line 649
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v1, 0x0

    .line 678
    invoke-direct {p0, p1}, Ljava/util/SubList;->rangeCheckForAdd(I)V

    .line 679
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 680
    .local v0, "cSize":I
    if-nez v0, :cond_0

    .line 681
    return v1

    .line 683
    :cond_0
    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    .line 684
    iget-object v1, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/SubList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2, p2}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    .line 685
    iget-object v1, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/SubList;->modCount:I

    .line 686
    iget v1, p0, Ljava/util/SubList;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/util/SubList;->size:I

    .line 687
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

    .prologue
    .line 674
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v0, p0, Ljava/util/SubList;->size:I

    invoke-virtual {p0, v0, p1}, Ljava/util/SubList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 639
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/SubList;->rangeCheck(I)V

    .line 640
    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    .line 641
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

    .prologue
    .line 691
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    invoke-virtual {p0}, Ljava/util/SubList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 695
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    .line 696
    invoke-direct {p0, p1}, Ljava/util/SubList;->rangeCheckForAdd(I)V

    .line 698
    new-instance v0, Ljava/util/SubList$1;

    invoke-direct {v0, p0, p1}, Ljava/util/SubList$1;-><init>(Ljava/util/SubList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 658
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/SubList;->rangeCheck(I)V

    .line 659
    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    .line 660
    iget-object v1, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/SubList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 661
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/SubList;->modCount:I

    .line 662
    iget v1, p0, Ljava/util/SubList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/SubList;->size:I

    .line 663
    return-object v0
.end method

.method protected removeRange(II)V
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 667
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    .line 668
    iget-object v0, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/SubList;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/util/SubList;->offset:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractList;->removeRange(II)V

    .line 669
    iget-object v0, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/SubList;->modCount:I

    .line 670
    iget v0, p0, Ljava/util/SubList;->size:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/SubList;->size:I

    .line 666
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 633
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/SubList;->rangeCheck(I)V

    .line 634
    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    .line 635
    iget-object v0, p0, Ljava/util/SubList;->l:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 645
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    invoke-direct {p0}, Ljava/util/SubList;->checkForComodification()V

    .line 646
    iget v0, p0, Ljava/util/SubList;->size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 750
    .local p0, "this":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    new-instance v0, Ljava/util/SubList;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/SubList;-><init>(Ljava/util/AbstractList;II)V

    return-object v0
.end method
