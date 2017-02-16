.class public abstract Ljava/util/AbstractList;
.super Ljava/util/AbstractCollection;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/AbstractList$Itr;,
        Ljava/util/AbstractList$ListItr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected transient modCount:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 601
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 76
    return-void
.end method

.method private outOfBoundsMsg(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 609
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
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

    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private rangeCheckForAdd(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 604
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 605
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/AbstractList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_1
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/AbstractList;->rangeCheckForAdd(I)V

    .line 258
    const/4 v3, 0x0

    .line 259
    .local v3, "modified":Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 260
    .local v0, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 261
    const/4 v3, 0x1

    move p1, v2

    .end local v2    # "index":I
    .restart local p1    # "index":I
    goto :goto_0

    .line 263
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    return v3
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 234
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractList;->removeRange(II)V

    .line 233
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 513
    if-ne p1, p0, :cond_0

    .line 514
    return v4

    .line 515
    :cond_0
    instance-of v6, p1, Ljava/util/List;

    if-nez v6, :cond_1

    .line 516
    return v5

    .line 518
    :cond_1
    invoke-virtual {p0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 519
    .local v0, "e1":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    check-cast p1, Ljava/util/List;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 520
    .local v1, "e2":Ljava/util/ListIterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 521
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 522
    .local v2, "o1":Ljava/lang/Object;, "TE;"
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 523
    .local v3, "o2":Ljava/lang/Object;
    if-nez v2, :cond_4

    if-nez v3, :cond_3

    move v6, v4

    :goto_0
    if-nez v6, :cond_2

    .line 524
    return v5

    :cond_3
    move v6, v5

    .line 523
    goto :goto_0

    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0

    .line 526
    .end local v2    # "o1":Ljava/lang/Object;, "TE;"
    .end local v3    # "o2":Ljava/lang/Object;
    :cond_5
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    move v4, v5

    :cond_7
    return v4
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 539
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    const/4 v2, 0x1

    .line 540
    .local v2, "hashCode":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 541
    .local v0, "e":Ljava/lang/Object;, "TE;"
    mul-int/lit8 v4, v2, 0x1f

    if-nez v0, :cond_0

    const/4 v3, 0x0

    :goto_1
    add-int v2, v4, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    .line 542
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    return v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 178
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 179
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    if-nez p1, :cond_1

    .line 180
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 182
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    return v1

    .line 184
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    return v1

    .line 188
    :cond_2
    const/4 v1, -0x1

    return v1
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

    .prologue
    .line 288
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    new-instance v0, Ljava/util/AbstractList$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/AbstractList$Itr;-><init>(Ljava/util/AbstractList;Ljava/util/AbstractList$Itr;)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 203
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 204
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    if-nez p1, :cond_1

    .line 205
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 207
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    return v1

    .line 209
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    return v1

    .line 213
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

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
    .line 325
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/AbstractList;->rangeCheckForAdd(I)V

    .line 327
    new-instance v0, Ljava/util/AbstractList$ListItr;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractList$ListItr;-><init>(Ljava/util/AbstractList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected removeRange(II)V
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 568
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 569
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    sub-int v2, p2, p1

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 570
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 571
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 569
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 567
    :cond_0
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 484
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 485
    new-instance v0, Ljava/util/RandomAccessSubList;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/RandomAccessSubList;-><init>(Ljava/util/AbstractList;II)V

    .line 484
    :goto_0
    return-object v0

    .line 486
    :cond_0
    new-instance v0, Ljava/util/SubList;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/SubList;-><init>(Ljava/util/AbstractList;II)V

    goto :goto_0
.end method
