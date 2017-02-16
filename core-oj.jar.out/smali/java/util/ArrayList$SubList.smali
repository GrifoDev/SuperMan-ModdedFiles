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
    .param p3, "offset"    # I
    .param p4, "fromIndex"    # I
    .param p5, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList",
            "<TE;>;III)V"
        }
    .end annotation

    .prologue
    .line 999
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    .local p1, "this$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p2, "parent":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    iput-object p1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 1001
    iput-object p2, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    .line 1002
    iput p4, p0, Ljava/util/ArrayList$SubList;->parentOffset:I

    .line 1003
    add-int v0, p3, p4

    iput v0, p0, Ljava/util/ArrayList$SubList;->offset:I

    .line 1004
    sub-int v0, p5, p4

    iput v0, p0, Ljava/util/ArrayList$SubList;->size:I

    .line 1005
    iget v0, p1, Ljava/util/ArrayList;->modCount:I

    iput v0, p0, Ljava/util/ArrayList$SubList;->modCount:I

    .line 1000
    return-void
.end method

.method private outOfBoundsMsg(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1214
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
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
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 1033
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    if-le p1, v0, :cond_1

    .line 1034
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1035
    :cond_1
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-eq v0, v1, :cond_2

    .line 1036
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1037
    :cond_2
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/ArrayList$SubList;->parentOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 1038
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/ArrayList$SubList;->modCount:I

    .line 1039
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList$SubList;->size:I

    .line 1032
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
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v2, 0x0

    .line 1067
    if-ltz p1, :cond_0

    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    if-le p1, v1, :cond_1

    .line 1068
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1069
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1070
    .local v0, "cSize":I
    if-nez v0, :cond_2

    .line 1071
    return v2

    .line 1073
    :cond_2
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    iget v2, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-eq v1, v2, :cond_3

    .line 1074
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1075
    :cond_3
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/ArrayList$SubList;->parentOffset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2, p2}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    .line 1076
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    .line 1077
    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/util/ArrayList$SubList;->size:I

    .line 1078
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
    .line 1063
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList$SubList;->addAll(ILjava/util/Collection;)Z

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
    .line 1019
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    if-lt p1, v0, :cond_1

    .line 1020
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1021
    :cond_1
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-eq v0, v1, :cond_2

    .line 1022
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1023
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

    .prologue
    .line 1082
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    invoke-virtual {p0}, Ljava/util/ArrayList$SubList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1086
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    iget v2, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-eq v1, v2, :cond_0

    .line 1087
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1088
    :cond_0
    if-ltz p1, :cond_1

    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    if-le p1, v1, :cond_2

    .line 1089
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1090
    :cond_2
    iget v0, p0, Ljava/util/ArrayList$SubList;->offset:I

    .line 1092
    .local v0, "offset":I
    new-instance v1, Ljava/util/ArrayList$SubList$1;

    invoke-direct {v1, p0, p1, v0}, Ljava/util/ArrayList$SubList$1;-><init>(Ljava/util/ArrayList$SubList;II)V

    return-object v1
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
    .line 1043
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    if-ltz p1, :cond_0

    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    if-lt p1, v1, :cond_1

    .line 1044
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1045
    :cond_1
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    iget v2, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-eq v1, v2, :cond_2

    .line 1046
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1047
    :cond_2
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/ArrayList$SubList;->parentOffset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 1048
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    .line 1049
    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/ArrayList$SubList;->size:I

    .line 1050
    return-object v0
.end method

.method protected removeRange(II)V
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 1054
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-eq v0, v1, :cond_0

    .line 1055
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1056
    :cond_0
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/ArrayList$SubList;->parentOffset:I

    add-int/2addr v1, p1

    .line 1057
    iget v2, p0, Ljava/util/ArrayList$SubList;->parentOffset:I

    add-int/2addr v2, p2

    .line 1056
    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractList;->removeRange(II)V

    .line 1058
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/ArrayList$SubList;->modCount:I

    .line 1059
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/ArrayList$SubList;->size:I

    .line 1053
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 1009
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    if-ltz p1, :cond_0

    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    if-lt p1, v1, :cond_1

    .line 1010
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1011
    :cond_1
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    iget v2, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-eq v1, v2, :cond_2

    .line 1012
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1013
    :cond_2
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget-object v1, v1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList$SubList;->offset:I

    add-int/2addr v2, p1

    aget-object v0, v1, v2

    .line 1014
    .local v0, "oldValue":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget-object v1, v1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList$SubList;->offset:I

    add-int/2addr v2, p1

    aput-object p2, v1, v2

    .line 1015
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 1027
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-eq v0, v1, :cond_0

    .line 1028
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1029
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

    .prologue
    .line 1218
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    iget v0, p0, Ljava/util/ArrayList$SubList;->modCount:I

    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    if-eq v0, v1, :cond_0

    .line 1219
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1220
    :cond_0
    new-instance v0, Ljava/util/ArrayList$ArrayListSpliterator;

    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v2, p0, Ljava/util/ArrayList$SubList;->offset:I

    .line 1221
    iget v3, p0, Ljava/util/ArrayList$SubList;->offset:I

    iget v4, p0, Ljava/util/ArrayList$SubList;->size:I

    add-int/2addr v3, v4

    iget v4, p0, Ljava/util/ArrayList$SubList;->modCount:I

    .line 1220
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/ArrayList$ArrayListSpliterator;-><init>(Ljava/util/ArrayList;III)V

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 6
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
    .line 1209
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    invoke-static {p1, p2, v0}, Ljava/util/ArrayList;->subListRangeCheck(III)V

    .line 1210
    new-instance v0, Ljava/util/ArrayList$SubList;

    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v3, p0, Ljava/util/ArrayList$SubList;->offset:I

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayList$SubList;-><init>(Ljava/util/ArrayList;Ljava/util/AbstractList;III)V

    return-object v0
.end method
