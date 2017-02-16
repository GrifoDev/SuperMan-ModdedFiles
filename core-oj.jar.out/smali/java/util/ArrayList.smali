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

    .prologue
    .line 120
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 159
    sget-object v0, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 157
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "initialCapacity"    # I

    .prologue
    .line 147
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 148
    if-gez p1, :cond_0

    .line 149
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

    .line 151
    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 146
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

    .prologue
    .line 170
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 171
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Ljava/util/ArrayList;->size:I

    .line 174
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    const-class v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 170
    :cond_0
    return-void
.end method

.method private batchRemove(Ljava/util/Collection;Z)Z
    .locals 9
    .param p2, "complement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v8, 0x0

    .line 687
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 688
    .local v0, "elementData":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "r":I
    const/4 v4, 0x0

    .line 689
    .local v4, "w":I
    const/4 v2, 0x0

    .local v2, "modified":Z
    move v5, v4

    .line 691
    .end local v4    # "w":I
    .local v5, "w":I
    :goto_0
    :try_start_0
    iget v6, p0, Ljava/util/ArrayList;->size:I

    if-ge v3, v6, :cond_0

    .line 692
    aget-object v6, v0, v3

    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-ne v6, p2, :cond_7

    .line 693
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "w":I
    .restart local v4    # "w":I
    :try_start_1
    aget-object v6, v0, v3

    aput-object v6, v0, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 691
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4    # "w":I
    .restart local v5    # "w":I
    goto :goto_0

    .line 697
    :cond_0
    iget v6, p0, Ljava/util/ArrayList;->size:I

    if-eq v3, v6, :cond_6

    .line 700
    iget v6, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v6, v3

    .line 698
    invoke-static {v0, v3, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 701
    iget v6, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v6, v3

    add-int v4, v5, v6

    .line 703
    .end local v5    # "w":I
    .restart local v4    # "w":I
    :goto_2
    iget v6, p0, Ljava/util/ArrayList;->size:I

    if-eq v4, v6, :cond_2

    .line 705
    move v1, v4

    .local v1, "i":I
    :goto_3
    iget v6, p0, Ljava/util/ArrayList;->size:I

    if-ge v1, v6, :cond_1

    .line 706
    aput-object v8, v0, v1

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 707
    :cond_1
    iget v6, p0, Ljava/util/ArrayList;->modCount:I

    iget v7, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v7, v4

    add-int/2addr v6, v7

    iput v6, p0, Ljava/util/ArrayList;->modCount:I

    .line 708
    iput v4, p0, Ljava/util/ArrayList;->size:I

    .line 709
    const/4 v2, 0x1

    .line 712
    .end local v1    # "i":I
    :cond_2
    return v2

    .line 694
    .end local v4    # "w":I
    .restart local v5    # "w":I
    :catchall_0
    move-exception v6

    move v4, v5

    .line 697
    .end local v5    # "w":I
    .restart local v4    # "w":I
    :goto_4
    iget v7, p0, Ljava/util/ArrayList;->size:I

    if-eq v3, v7, :cond_3

    .line 700
    iget v7, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v7, v3

    .line 698
    invoke-static {v0, v3, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 701
    iget v7, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v7, v3

    add-int/2addr v4, v7

    .line 703
    :cond_3
    iget v7, p0, Ljava/util/ArrayList;->size:I

    if-eq v4, v7, :cond_5

    .line 705
    move v1, v4

    .restart local v1    # "i":I
    :goto_5
    iget v7, p0, Ljava/util/ArrayList;->size:I

    if-ge v1, v7, :cond_4

    .line 706
    aput-object v8, v0, v1

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 707
    :cond_4
    iget v7, p0, Ljava/util/ArrayList;->modCount:I

    iget v8, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v8, v4

    add-int/2addr v7, v8

    iput v7, p0, Ljava/util/ArrayList;->modCount:I

    .line 708
    iput v4, p0, Ljava/util/ArrayList;->size:I

    .line 709
    const/4 v2, 0x1

    .line 694
    .end local v1    # "i":I
    :cond_5
    throw v6

    :catchall_1
    move-exception v6

    goto :goto_4

    .end local v4    # "w":I
    .restart local v5    # "w":I
    :cond_6
    move v4, v5

    .end local v5    # "w":I
    .restart local v4    # "w":I
    goto :goto_2

    .end local v4    # "w":I
    .restart local v5    # "w":I
    :cond_7
    move v4, v5

    .end local v5    # "w":I
    .restart local v4    # "w":I
    goto :goto_1
.end method

.method private ensureCapacityInternal(I)V
    .locals 2
    .param p1, "minCapacity"    # I

    .prologue
    .line 211
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    sget-object v1, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 212
    const/16 v0, 0xa

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 215
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/ArrayList;->ensureExplicitCapacity(I)V

    .line 210
    return-void
.end method

.method private ensureExplicitCapacity(I)V
    .locals 1
    .param p1, "minCapacity"    # I

    .prologue
    .line 219
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 222
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    sub-int v0, p1, v0

    if-lez v0, :cond_0

    .line 223
    invoke-direct {p0, p1}, Ljava/util/ArrayList;->grow(I)V

    .line 218
    :cond_0
    return-void
.end method

.method private fastRemove(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 526
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/ArrayList;->modCount:I

    .line 527
    iget v1, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v1, p1

    add-int/lit8 v0, v1, -0x1

    .line 528
    .local v0, "numMoved":I
    if-lez v0, :cond_0

    .line 529
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-static {v1, v2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    :cond_0
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/ArrayList;->size:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 525
    return-void
.end method

.method private grow(I)V
    .locals 3
    .param p1, "minCapacity"    # I

    .prologue
    .line 242
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    array-length v1, v2

    .line 243
    .local v1, "oldCapacity":I
    shr-int/lit8 v2, v1, 0x1

    add-int v0, v1, v2

    .line 244
    .local v0, "newCapacity":I
    sub-int v2, v0, p1

    if-gez v2, :cond_0

    .line 245
    move v0, p1

    .line 246
    :cond_0
    const v2, 0x7ffffff7

    sub-int v2, v0, v2

    if-lez v2, :cond_1

    .line 247
    invoke-static {p1}, Ljava/util/ArrayList;->hugeCapacity(I)I

    move-result v0

    .line 249
    :cond_1
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 240
    return-void
.end method

.method private static hugeCapacity(I)I
    .locals 1
    .param p0, "minCapacity"    # I

    .prologue
    const v0, 0x7ffffff7

    .line 253
    if-gez p0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    .line 255
    :cond_0
    if-le p0, v0, :cond_1

    .line 256
    const v0, 0x7fffffff

    .line 255
    :cond_1
    return v0
.end method

.method private outOfBoundsMsg(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 644
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
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
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 748
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    sget-object v2, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    iput-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 751
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 754
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 756
    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-lez v2, :cond_0

    .line 758
    iget v2, p0, Ljava/util/ArrayList;->size:I

    invoke-direct {p0, v2}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    .line 760
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 762
    .local v0, "a":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-ge v1, v2, :cond_0

    .line 763
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 762
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 747
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method static subListRangeCheck(III)V
    .locals 3
    .param p0, "fromIndex"    # I
    .param p1, "toIndex"    # I
    .param p2, "size"    # I

    .prologue
    .line 984
    if-gez p0, :cond_0

    .line 985
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

    .line 986
    :cond_0
    if-le p1, p2, :cond_1

    .line 987
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

    .line 988
    :cond_1
    if-le p0, p1, :cond_2

    .line 989
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fromIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 990
    const-string/jumbo v2, ") > toIndex("

    .line 989
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 990
    const-string/jumbo v2, ")"

    .line 989
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 983
    :cond_2
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 726
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 727
    .local v0, "expectedModCount":I
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 730
    iget v2, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 733
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-ge v1, v2, :cond_0

    .line 734
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 733
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 737
    :cond_0
    iget v2, p0, Ljava/util/ArrayList;->modCount:I

    if-eq v2, v0, :cond_1

    .line 738
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 724
    :cond_1
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 456
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 457
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_1
    iget v0, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    .line 460
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    .line 461
    iget v3, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v3, p1

    .line 460
    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 463
    iget v0, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->size:I

    .line 455
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 441
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    .line 442
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/ArrayList;->size:I

    aput-object p1, v0, v1

    .line 443
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v3, 0x0

    .line 586
    iget v4, p0, Ljava/util/ArrayList;->size:I

    if-gt p1, v4, :cond_0

    if-gez p1, :cond_1

    .line 587
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 589
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 590
    .local v0, "a":[Ljava/lang/Object;
    array-length v2, v0

    .line 591
    .local v2, "numNew":I
    iget v4, p0, Ljava/util/ArrayList;->size:I

    add-int/2addr v4, v2

    invoke-direct {p0, v4}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    .line 593
    iget v4, p0, Ljava/util/ArrayList;->size:I

    sub-int v1, v4, p1

    .line 594
    .local v1, "numMoved":I
    if-lez v1, :cond_2

    .line 595
    iget-object v4, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    add-int v6, p1, v2

    invoke-static {v4, p1, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    :cond_2
    iget-object v4, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-static {v0, v3, v4, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 599
    iget v4, p0, Ljava/util/ArrayList;->size:I

    add-int/2addr v4, v2

    iput v4, p0, Ljava/util/ArrayList;->size:I

    .line 600
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

    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v2, 0x0

    .line 562
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 563
    .local v0, "a":[Ljava/lang/Object;
    array-length v1, v0

    .line 564
    .local v1, "numNew":I
    iget v3, p0, Ljava/util/ArrayList;->size:I

    add-int/2addr v3, v1

    invoke-direct {p0, v3}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    .line 565
    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/ArrayList;->size:I

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    iget v3, p0, Ljava/util/ArrayList;->size:I

    add-int/2addr v3, v1

    iput v3, p0, Ljava/util/ArrayList;->size:I

    .line 567
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 539
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/ArrayList;->modCount:I

    .line 542
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_0

    .line 543
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 542
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 545
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/ArrayList;->size:I

    .line 538
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 339
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 340
    .local v1, "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayList;->size:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 341
    const/4 v2, 0x0

    iput v2, v1, Ljava/util/ArrayList;->modCount:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    return-object v1

    .line 343
    .end local v1    # "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v0, 0x0

    .line 288
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "minCapacity"    # I

    .prologue
    .line 198
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    sget-object v2, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    .line 200
    const/4 v0, 0x0

    .line 205
    .local v0, "minExpand":I
    :goto_0
    if-le p1, v0, :cond_0

    .line 206
    invoke-direct {p0, p1}, Ljava/util/ArrayList;->ensureExplicitCapacity(I)V

    .line 197
    :cond_0
    return-void

    .line 203
    .end local v0    # "minExpand":I
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

    .prologue
    .line 1227
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    .line 1230
    .local v1, "expectedModCount":I
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 1231
    .local v0, "elementData":[Ljava/lang/Object;, "[TE;"
    iget v3, p0, Ljava/util/ArrayList;->size:I

    .line 1232
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v4, v1, :cond_0

    if-ge v2, v3, :cond_0

    .line 1233
    aget-object v4, v0, v2

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1232
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1238
    :cond_0
    iget v4, p0, Ljava/util/ArrayList;->modCount:I

    if-eq v4, v1, :cond_1

    .line 1239
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1226
    :cond_1
    return-void
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
    .line 410
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-lt p1, v0, :cond_0

    .line 411
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 299
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-nez p1, :cond_1

    .line 300
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_3

    .line 301
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 302
    return v0

    .line 300
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_3

    .line 305
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    return v0

    .line 304
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 308
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v0, 0x0

    .line 275
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

    .prologue
    .line 806
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    new-instance v0, Ljava/util/ArrayList$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/ArrayList$Itr;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList$Itr;)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 319
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-nez p1, :cond_1

    .line 320
    iget v1, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 321
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 322
    return v0

    .line 320
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 324
    .end local v0    # "i":I
    :cond_1
    iget v1, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 325
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 326
    return v0

    .line 324
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 328
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

    .prologue
    .line 795
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    new-instance v0, Ljava/util/ArrayList$ListItr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/ArrayList$ListItr;-><init>(Ljava/util/ArrayList;I)V

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
    .line 781
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-le p1, v0, :cond_1

    .line 782
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

    .line 783
    :cond_1
    new-instance v0, Ljava/util/ArrayList$ListItr;

    invoke-direct {v0, p0, p1}, Ljava/util/ArrayList$ListItr;-><init>(Ljava/util/ArrayList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-lt p1, v2, :cond_0

    .line 477
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 479
    :cond_0
    iget v2, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/ArrayList;->modCount:I

    .line 480
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v2, p1

    .line 482
    .local v1, "oldValue":Ljava/lang/Object;, "TE;"
    iget v2, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v2, p1

    add-int/lit8 v0, v2, -0x1

    .line 483
    .local v0, "numMoved":I
    if-lez v0, :cond_1

    .line 484
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-static {v2, v3, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    :cond_1
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/ArrayList;->size:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 488
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v2, 0x1

    .line 505
    if-nez p1, :cond_1

    .line 506
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_3

    .line 507
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 508
    invoke-direct {p0, v0}, Ljava/util/ArrayList;->fastRemove(I)V

    .line 509
    return v2

    .line 506
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    .end local v0    # "index":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_1
    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_3

    .line 513
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 514
    invoke-direct {p0, v0}, Ljava/util/ArrayList;->fastRemove(I)V

    .line 515
    return v2

    .line 512
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 518
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

    .prologue
    .line 663
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
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

    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    const/4 v0, 0x0

    .line 1381
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    const/4 v7, 0x0

    .line 1386
    .local v7, "removeCount":I
    new-instance v8, Ljava/util/BitSet;

    iget v10, p0, Ljava/util/ArrayList;->size:I

    invoke-direct {v8, v10}, Ljava/util/BitSet;-><init>(I)V

    .line 1387
    .local v8, "removeSet":Ljava/util/BitSet;
    iget v2, p0, Ljava/util/ArrayList;->modCount:I

    .line 1388
    .local v2, "expectedModCount":I
    iget v9, p0, Ljava/util/ArrayList;->size:I

    .line 1389
    .local v9, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v10, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v10, v2, :cond_1

    if-ge v3, v9, :cond_1

    .line 1391
    iget-object v10, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v10, v3

    .line 1392
    .local v1, "element":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1393
    invoke-virtual {v8, v3}, Ljava/util/BitSet;->set(I)V

    .line 1394
    add-int/lit8 v7, v7, 0x1

    .line 1389
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1397
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    :cond_1
    iget v10, p0, Ljava/util/ArrayList;->modCount:I

    if-eq v10, v2, :cond_2

    .line 1398
    new-instance v10, Ljava/util/ConcurrentModificationException;

    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v10

    .line 1402
    :cond_2
    if-lez v7, :cond_3

    const/4 v0, 0x1

    .line 1403
    .local v0, "anyToRemove":Z
    :cond_3
    if-eqz v0, :cond_7

    .line 1404
    sub-int v6, v9, v7

    .line 1405
    .local v6, "newSize":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v3, v9, :cond_4

    if-ge v4, v6, :cond_4

    .line 1406
    invoke-virtual {v8, v3}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v3

    .line 1407
    iget-object v10, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget-object v11, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v11, v11, v3

    aput-object v11, v10, v4

    .line 1405
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1409
    :cond_4
    move v5, v6

    .local v5, "k":I
    :goto_2
    if-ge v5, v9, :cond_5

    .line 1410
    iget-object v10, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v11, v10, v5

    .line 1409
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1412
    :cond_5
    iput v6, p0, Ljava/util/ArrayList;->size:I

    .line 1413
    iget v10, p0, Ljava/util/ArrayList;->modCount:I

    if-eq v10, v2, :cond_6

    .line 1414
    new-instance v10, Ljava/util/ConcurrentModificationException;

    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v10

    .line 1416
    :cond_6
    iget v10, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Ljava/util/ArrayList;->modCount:I

    .line 1419
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v6    # "newSize":I
    :cond_7
    return v0
.end method

.method protected removeRange(II)V
    .locals 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 621
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-ge p2, p1, :cond_0

    .line 622
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v4, "toIndex < fromIndex"

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 625
    :cond_0
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/ArrayList;->modCount:I

    .line 626
    iget v3, p0, Ljava/util/ArrayList;->size:I

    sub-int v2, v3, p2

    .line 627
    .local v2, "numMoved":I
    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget-object v4, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-static {v3, p2, v4, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 631
    iget v3, p0, Ljava/util/ArrayList;->size:I

    sub-int v4, p2, p1

    sub-int v1, v3, v4

    .line 632
    .local v1, "newSize":I
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget v3, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v3, :cond_1

    .line 633
    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    :cond_1
    iput v1, p0, Ljava/util/ArrayList;->size:I

    .line 617
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

    .prologue
    .line 1425
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 1427
    .local v0, "expectedModCount":I
    iget v2, p0, Ljava/util/ArrayList;->size:I

    .line 1428
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v3, v0, :cond_0

    if-ge v1, v2, :cond_0

    .line 1429
    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget-object v4, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-interface {p1, v4}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1428
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1431
    :cond_0
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    if-eq v3, v0, :cond_1

    .line 1432
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 1434
    :cond_1
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/ArrayList;->modCount:I

    .line 1424
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

    .prologue
    .line 683
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/ArrayList;->batchRemove(Ljava/util/Collection;Z)Z

    move-result v0

    return v0
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
    .line 426
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-lt p1, v1, :cond_0

    .line 427
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 429
    :cond_0
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 430
    .local v0, "oldValue":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 431
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 266
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
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

    .prologue
    .line 1440
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 1441
    .local v0, "expectedModCount":I
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList;->size:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 1442
    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    if-eq v1, v0, :cond_0

    .line 1443
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1445
    :cond_0
    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/ArrayList;->modCount:I

    .line 1439
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

    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v2, 0x0

    .line 1258
    new-instance v0, Ljava/util/ArrayList$ArrayListSpliterator;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v2, v1, v2}, Ljava/util/ArrayList$ArrayListSpliterator;-><init>(Ljava/util/ArrayList;III)V

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
    .line 979
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    invoke-static {p1, p2, v0}, Ljava/util/ArrayList;->subListRangeCheck(III)V

    .line 980
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

    .prologue
    .line 364
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
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

    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    .line 393
    array-length v0, p1

    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_0

    .line 395
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 396
    :cond_0
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    array-length v0, p1

    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-le v0, v1, :cond_1

    .line 398
    iget v0, p0, Ljava/util/ArrayList;->size:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 399
    :cond_1
    return-object p1
.end method

.method public trimToSize()V
    .locals 2

    .prologue
    .line 184
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 185
    iget v0, p0, Ljava/util/ArrayList;->size:I

    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 183
    :cond_0
    return-void
.end method
