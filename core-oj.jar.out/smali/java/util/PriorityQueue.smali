.class public Ljava/util/PriorityQueue;
.super Ljava/util/AbstractQueue;
.source "PriorityQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/PriorityQueue$Itr;,
        Ljava/util/PriorityQueue$PriorityQueueSpliterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0xb

.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final serialVersionUID:J = -0x6b25cf4b04c07d4fL


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field

.field transient modCount:I

.field transient queue:[Ljava/lang/Object;

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 122
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 121
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 135
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 134
    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 166
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 168
    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 169
    iput-object p2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 163
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
    .line 189
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 190
    instance-of v2, p1, Ljava/util/SortedSet;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 191
    check-cast v1, Ljava/util/SortedSet;

    .line 192
    .local v1, "ss":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    invoke-interface {v1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v2

    iput-object v2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 193
    invoke-direct {p0, v1}, Ljava/util/PriorityQueue;->initElementsFromCollection(Ljava/util/Collection;)V

    .line 189
    .end local v1    # "ss":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    :goto_0
    return-void

    .line 195
    :cond_0
    instance-of v2, p1, Ljava/util/PriorityQueue;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 196
    check-cast v0, Ljava/util/PriorityQueue;

    .line 197
    .local v0, "pq":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<+TE;>;"
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    move-result-object v2

    iput-object v2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 198
    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->initFromPriorityQueue(Ljava/util/PriorityQueue;)V

    goto :goto_0

    .line 201
    .end local v0    # "pq":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<+TE;>;"
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 202
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initFromCollection(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/util/PriorityQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 222
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 223
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initFromPriorityQueue(Ljava/util/PriorityQueue;)V

    .line 221
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 241
    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 242
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initElementsFromCollection(Ljava/util/Collection;)V

    .line 240
    return-void
.end method

.method private grow(I)V
    .locals 3
    .param p1, "minCapacity"    # I

    .prologue
    .line 292
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    array-length v1, v2

    .line 294
    .local v1, "oldCapacity":I
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 295
    add-int/lit8 v2, v1, 0x2

    .line 294
    :goto_0
    add-int v0, v1, v2

    .line 298
    .local v0, "newCapacity":I
    const v2, 0x7ffffff7

    sub-int v2, v0, v2

    if-lez v2, :cond_0

    .line 299
    invoke-static {p1}, Ljava/util/PriorityQueue;->hugeCapacity(I)I

    move-result v0

    .line 300
    :cond_0
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 291
    return-void

    .line 296
    .end local v0    # "newCapacity":I
    :cond_1
    shr-int/lit8 v2, v1, 0x1

    goto :goto_0
.end method

.method private heapify()V
    .locals 2

    .prologue
    .line 735
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    ushr-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 736
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-direct {p0, v0, v1}, Ljava/util/PriorityQueue;->siftDown(ILjava/lang/Object;)V

    .line 735
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 734
    :cond_0
    return-void
.end method

.method private static hugeCapacity(I)I
    .locals 1
    .param p0, "minCapacity"    # I

    .prologue
    const v0, 0x7ffffff7

    .line 304
    if-gez p0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    .line 306
    :cond_0
    if-le p0, v0, :cond_1

    .line 307
    const v0, 0x7fffffff

    .line 306
    :cond_1
    return v0
.end method

.method private indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 354
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    if-eqz p1, :cond_1

    .line 355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_1

    .line 356
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    return v0

    .line 355
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    .end local v0    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private initElementsFromCollection(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 257
    .local v0, "a":[Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, [Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    .line 258
    array-length v3, v0

    const-class v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 259
    :cond_0
    array-length v2, v0

    .line 260
    .local v2, "len":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    if-eqz v3, :cond_3

    .line 261
    :cond_1
    const/4 v3, 0x0

    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 262
    .local v1, "e":Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 263
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 261
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 264
    .end local v1    # "e":Ljava/lang/Object;
    :cond_3
    iput-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 265
    array-length v3, v0

    iput v3, p0, Ljava/util/PriorityQueue;->size:I

    .line 254
    return-void
.end method

.method private initFromCollection(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initElementsFromCollection(Ljava/util/Collection;)V

    .line 275
    invoke-direct {p0}, Ljava/util/PriorityQueue;->heapify()V

    .line 273
    return-void
.end method

.method private initFromPriorityQueue(Ljava/util/PriorityQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<+TE;>;"
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/PriorityQueue;

    if-ne v0, v1, :cond_0

    .line 247
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 248
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iput v0, p0, Ljava/util/PriorityQueue;->size:I

    .line 245
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initFromCollection(Ljava/util/Collection;)V

    goto :goto_0
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
    .line 786
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 789
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 791
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 794
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_0

    .line 795
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 794
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 799
    :cond_0
    invoke-direct {p0}, Ljava/util/PriorityQueue;->heapify()V

    .line 784
    return-void
.end method

.method private siftDown(ILjava/lang/Object;)V
    .locals 1
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 686
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    .line 687
    invoke-direct {p0, p1, p2}, Ljava/util/PriorityQueue;->siftDownUsingComparator(ILjava/lang/Object;)V

    .line 685
    :goto_0
    return-void

    .line 689
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/util/PriorityQueue;->siftDownComparable(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private siftDownComparable(ILjava/lang/Object;)V
    .locals 7
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    move-object v3, p2

    .line 694
    check-cast v3, Ljava/lang/Comparable;

    .line 695
    .local v3, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TE;>;"
    iget v5, p0, Ljava/util/PriorityQueue;->size:I

    ushr-int/lit8 v2, v5, 0x1

    .line 696
    .local v2, "half":I
    :goto_0
    if-ge p1, v2, :cond_1

    .line 697
    shl-int/lit8 v5, p1, 0x1

    add-int/lit8 v1, v5, 0x1

    .line 698
    .local v1, "child":I
    iget-object v5, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v0, v5, v1

    .line 699
    .local v0, "c":Ljava/lang/Object;
    add-int/lit8 v4, v1, 0x1

    .line 700
    .local v4, "right":I
    iget v5, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v4, v5, :cond_0

    move-object v5, v0

    .line 701
    check-cast v5, Ljava/lang/Comparable;

    iget-object v6, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v6, v6, v4

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_0

    .line 702
    iget-object v5, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    move v1, v4

    aget-object v0, v5, v4

    .line 703
    :cond_0
    invoke-interface {v3, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2

    .line 708
    .end local v0    # "c":Ljava/lang/Object;
    .end local v1    # "child":I
    .end local v4    # "right":I
    :cond_1
    iget-object v5, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v3, v5, p1

    .line 693
    return-void

    .line 705
    .restart local v0    # "c":Ljava/lang/Object;
    .restart local v1    # "child":I
    .restart local v4    # "right":I
    :cond_2
    iget-object v5, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v0, v5, p1

    .line 706
    move p1, v1

    goto :goto_0
.end method

.method private siftDownUsingComparator(ILjava/lang/Object;)V
    .locals 6
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 713
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    iget v4, p0, Ljava/util/PriorityQueue;->size:I

    ushr-int/lit8 v2, v4, 0x1

    .line 714
    .local v2, "half":I
    :goto_0
    if-ge p1, v2, :cond_1

    .line 715
    shl-int/lit8 v4, p1, 0x1

    add-int/lit8 v1, v4, 0x1

    .line 716
    .local v1, "child":I
    iget-object v4, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v0, v4, v1

    .line 717
    .local v0, "c":Ljava/lang/Object;
    add-int/lit8 v3, v1, 0x1

    .line 718
    .local v3, "right":I
    iget v4, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v3, v4, :cond_0

    .line 719
    iget-object v4, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    iget-object v5, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v5, v5, v3

    invoke-interface {v4, v0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_0

    .line 720
    iget-object v4, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    move v1, v3

    aget-object v0, v4, v3

    .line 721
    :cond_0
    iget-object v4, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    invoke-interface {v4, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_2

    .line 726
    .end local v0    # "c":Ljava/lang/Object;
    .end local v1    # "child":I
    .end local v3    # "right":I
    :cond_1
    iget-object v4, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object p2, v4, p1

    .line 712
    return-void

    .line 723
    .restart local v0    # "c":Ljava/lang/Object;
    .restart local v1    # "child":I
    .restart local v3    # "right":I
    :cond_2
    iget-object v4, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v0, v4, p1

    .line 724
    move p1, v1

    goto :goto_0
.end method

.method private siftUp(ILjava/lang/Object;)V
    .locals 1
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 644
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    .line 645
    invoke-direct {p0, p1, p2}, Ljava/util/PriorityQueue;->siftUpUsingComparator(ILjava/lang/Object;)V

    .line 643
    :goto_0
    return-void

    .line 647
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/util/PriorityQueue;->siftUpComparable(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private siftUpComparable(ILjava/lang/Object;)V
    .locals 4
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    move-object v1, p2

    .line 652
    check-cast v1, Ljava/lang/Comparable;

    .line 653
    .local v1, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TE;>;"
    :goto_0
    if-lez p1, :cond_0

    .line 654
    add-int/lit8 v3, p1, -0x1

    ushr-int/lit8 v2, v3, 0x1

    .line 655
    .local v2, "parent":I
    iget-object v3, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v0, v3, v2

    .line 656
    .local v0, "e":Ljava/lang/Object;
    invoke-interface {v1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 661
    .end local v0    # "e":Ljava/lang/Object;
    .end local v2    # "parent":I
    :cond_0
    iget-object v3, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v1, v3, p1

    .line 651
    return-void

    .line 658
    .restart local v0    # "e":Ljava/lang/Object;
    .restart local v2    # "parent":I
    :cond_1
    iget-object v3, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v0, v3, p1

    .line 659
    move p1, v2

    goto :goto_0
.end method

.method private siftUpUsingComparator(ILjava/lang/Object;)V
    .locals 3
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 666
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    :goto_0
    if-lez p1, :cond_0

    .line 667
    add-int/lit8 v2, p1, -0x1

    ushr-int/lit8 v1, v2, 0x1

    .line 668
    .local v1, "parent":I
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v0, v2, v1

    .line 669
    .local v0, "e":Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    invoke-interface {v2, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 674
    .end local v0    # "e":Ljava/lang/Object;
    .end local v1    # "parent":I
    :cond_0
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object p2, v2, p1

    .line 665
    return-void

    .line 671
    .restart local v0    # "e":Ljava/lang/Object;
    .restart local v1    # "parent":I
    :cond_1
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v0, v2, p1

    .line 672
    move p1, v1

    goto :goto_0
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
    .line 764
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 767
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 770
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_0

    .line 771
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 770
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 762
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

    .prologue
    .line 321
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 579
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget v1, p0, Ljava/util/PriorityQueue;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/PriorityQueue;->modCount:I

    .line 580
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_0

    .line 581
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/PriorityQueue;->size:I

    .line 578
    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 749
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/4 v0, 0x0

    .line 409
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

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
    .line 484
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    new-instance v0, Ljava/util/PriorityQueue$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/PriorityQueue$Itr;-><init>(Ljava/util/PriorityQueue;Ljava/util/PriorityQueue$Itr;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x0

    .line 334
    if-nez p1, :cond_0

    .line 335
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 336
    :cond_0
    iget v1, p0, Ljava/util/PriorityQueue;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/PriorityQueue;->modCount:I

    .line 337
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    .line 338
    .local v0, "i":I
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 339
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Ljava/util/PriorityQueue;->grow(I)V

    .line 340
    :cond_1
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/PriorityQueue;->size:I

    .line 341
    if-nez v0, :cond_2

    .line 342
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 345
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 344
    :cond_2
    invoke-direct {p0, v0, p1}, Ljava/util/PriorityQueue;->siftUp(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/4 v1, 0x0

    .line 350
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 587
    iget v3, p0, Ljava/util/PriorityQueue;->size:I

    if-nez v3, :cond_0

    .line 588
    return-object v5

    .line 589
    :cond_0
    iget v3, p0, Ljava/util/PriorityQueue;->size:I

    add-int/lit8 v1, v3, -0x1

    iput v1, p0, Ljava/util/PriorityQueue;->size:I

    .line 590
    .local v1, "s":I
    iget v3, p0, Ljava/util/PriorityQueue;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/PriorityQueue;->modCount:I

    .line 591
    iget-object v3, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v0, v3, v4

    .line 592
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 593
    .local v2, "x":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v5, v3, v1

    .line 594
    if-eqz v1, :cond_1

    .line 595
    invoke-direct {p0, v4, v2}, Ljava/util/PriorityQueue;->siftDown(ILjava/lang/Object;)V

    .line 596
    :cond_1
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 374
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 375
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 376
    const/4 v1, 0x0

    return v1

    .line 378
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/PriorityQueue;->removeAt(I)Ljava/lang/Object;

    .line 379
    const/4 v1, 0x1

    return v1
.end method

.method removeAt(I)Ljava/lang/Object;
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/4 v3, 0x0

    .line 614
    iget v2, p0, Ljava/util/PriorityQueue;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/PriorityQueue;->modCount:I

    .line 615
    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Ljava/util/PriorityQueue;->size:I

    .line 616
    .local v1, "s":I
    if-ne v1, p1, :cond_1

    .line 617
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v3, v2, p1

    .line 628
    :cond_0
    return-object v3

    .line 619
    :cond_1
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v0, v2, v1

    .line 620
    .local v0, "moved":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 621
    invoke-direct {p0, p1, v0}, Ljava/util/PriorityQueue;->siftDown(ILjava/lang/Object;)V

    .line 622
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v2, v2, p1

    if-ne v2, v0, :cond_0

    .line 623
    invoke-direct {p0, p1, v0}, Ljava/util/PriorityQueue;->siftUp(ILjava/lang/Object;)V

    .line 624
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v2, v2, p1

    if-eq v2, v0, :cond_0

    .line 625
    return-object v0
.end method

.method removeEq(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 391
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_1

    .line 392
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 393
    invoke-virtual {p0, v0}, Ljava/util/PriorityQueue;->removeAt(I)Ljava/lang/Object;

    .line 394
    const/4 v1, 0x1

    return v1

    .line 391
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 571
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    return v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/4 v2, 0x0

    .line 816
    new-instance v0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v2, v1, v2}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;-><init>(Ljava/util/PriorityQueue;III)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 426
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/PriorityQueue;->size:I

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
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    .line 467
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    .line 468
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 470
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 471
    :cond_0
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 473
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 474
    :cond_1
    return-object p1
.end method
