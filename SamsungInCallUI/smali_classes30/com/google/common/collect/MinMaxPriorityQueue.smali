.class public final Lcom/google/common/collect/MinMaxPriorityQueue;
.super Ljava/util/AbstractQueue;
.source "MinMaxPriorityQueue.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MinMaxPriorityQueue$1;,
        Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;,
        Lcom/google/common/collect/MinMaxPriorityQueue$Heap;,
        Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;,
        Lcom/google/common/collect/MinMaxPriorityQueue$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPACITY:I = 0xb

.field private static final EVEN_POWERS_OF_TWO:I = 0x55555555

.field private static final ODD_POWERS_OF_TWO:I = -0x55555556


# instance fields
.field private final maxHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TE;>.Heap;"
        }
    .end annotation
.end field

.field final maximumSize:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final minHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TE;>.Heap;"
        }
    .end annotation
.end field

.field private modCount:I

.field private queue:[Ljava/lang/Object;

.field private size:I


# direct methods
.method private constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue$Builder;I)V
    .locals 3
    .param p2, "queueSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MinMaxPriorityQueue$Builder",
            "<-TE;>;I)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    .local p1, "builder":Lcom/google/common/collect/MinMaxPriorityQueue$Builder;, "Lcom/google/common/collect/MinMaxPriorityQueue$Builder<-TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 240
    # invokes: Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->ordering()Lcom/google/common/collect/Ordering;
    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->access$200(Lcom/google/common/collect/MinMaxPriorityQueue$Builder;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 241
    .local v0, "ordering":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TE;>;"
    new-instance v1, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/Ordering;)V

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->minHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    .line 242
    new-instance v1, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/Ordering;)V

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->maxHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    .line 243
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->minHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->maxHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    iput-object v2, v1, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->otherHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    .line 244
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->maxHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->minHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    iput-object v2, v1, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->otherHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    .line 246
    # getter for: Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->maximumSize:I
    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->access$300(Lcom/google/common/collect/MinMaxPriorityQueue$Builder;)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->maximumSize:I

    .line 248
    new-array v1, p2, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    .line 249
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue$Builder;ILcom/google/common/collect/MinMaxPriorityQueue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/MinMaxPriorityQueue$Builder;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/common/collect/MinMaxPriorityQueue$1;

    .prologue
    .line 105
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue$Builder;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/MinMaxPriorityQueue;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/MinMaxPriorityQueue;

    .prologue
    .line 105
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/common/collect/MinMaxPriorityQueue;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/MinMaxPriorityQueue;

    .prologue
    .line 105
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->modCount:I

    return v0
.end method

.method private calculateNewCapacity()I
    .locals 4

    .prologue
    .line 948
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    array-length v1, v2

    .line 949
    .local v1, "oldCapacity":I
    const/16 v2, 0x40

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    mul-int/lit8 v0, v2, 0x2

    .line 953
    .local v0, "newCapacity":I
    :goto_0
    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->maximumSize:I

    invoke-static {v0, v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->capAtMaximumSize(II)I

    move-result v2

    return v2

    .line 949
    .end local v0    # "newCapacity":I
    :cond_0
    div-int/lit8 v2, v1, 0x2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v0

    goto :goto_0
.end method

.method private static capAtMaximumSize(II)I
    .locals 1
    .param p0, "queueSize"    # I
    .param p1, "maximumSize"    # I

    .prologue
    .line 958
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static create()Lcom/google/common/collect/MinMaxPriorityQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<TE;>;>()",
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V

    invoke-virtual {v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->create()Lcom/google/common/collect/MinMaxPriorityQueue;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/MinMaxPriorityQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<TE;>;>(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "initialContents":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/MinMaxPriorityQueue;

    move-result-object v0

    return-object v0
.end method

.method public static expectedSize(I)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;
    .locals 3
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$Builder",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->expectedSize(I)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    move-result-object v0

    return-object v0
.end method

.method private fillHole(ILjava/lang/Object;)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 429
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    .local p2, "toTrickle":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->heapForIndex(I)Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    move-result-object v1

    .line 437
    .local v1, "heap":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    invoke-virtual {v1, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->fillHoleAt(I)I

    move-result v2

    .line 439
    .local v2, "vacated":I
    invoke-virtual {v1, v2, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->bubbleUpAlternatingLevels(ILjava/lang/Object;)I

    move-result v0

    .line 440
    .local v0, "bubbledTo":I
    if-ne v0, v2, :cond_0

    .line 444
    invoke-virtual {v1, p1, v2, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->tryCrossOverAndBubbleUp(IILjava/lang/Object;)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    move-result-object v3

    .line 446
    :goto_0
    return-object v3

    :cond_0
    if-ge v0, p1, :cond_1

    new-instance v3, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getMaxElementIndex()I
    .locals 3

    .prologue
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 319
    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    packed-switch v2, :pswitch_data_0

    .line 327
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->maxHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->compareElements(II)I

    move-result v2

    if-gtz v2, :cond_0

    :goto_0
    :pswitch_0
    return v0

    .line 321
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 327
    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private growIfNeeded()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    const/4 v4, 0x0

    .line 938
    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 939
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->calculateNewCapacity()I

    move-result v0

    .line 940
    .local v0, "newCapacity":I
    new-array v1, v0, [Ljava/lang/Object;

    .line 941
    .local v1, "newQueue":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 942
    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    .line 944
    .end local v0    # "newCapacity":I
    .end local v1    # "newQueue":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private heapForIndex(I)Lcom/google/common/collect/MinMaxPriorityQueue$Heap;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TE;>.Heap;"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->isEvenLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->minHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->maxHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    goto :goto_0
.end method

.method static initialQueueSize(IILjava/lang/Iterable;)I
    .locals 3
    .param p0, "configuredExpectedSize"    # I
    .param p1, "maximumSize"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Iterable",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 922
    .local p2, "initialContents":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    const/16 v1, 0xb

    .line 928
    .local v1, "result":I
    :goto_0
    instance-of v2, p2, Ljava/util/Collection;

    if-eqz v2, :cond_0

    .line 929
    check-cast p2, Ljava/util/Collection;

    .end local p2    # "initialContents":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 930
    .local v0, "initialSize":I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 934
    .end local v0    # "initialSize":I
    :cond_0
    invoke-static {v1, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->capAtMaximumSize(II)I

    move-result v2

    return v2

    .end local v1    # "result":I
    .restart local p2    # "initialContents":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    :cond_1
    move v1, p0

    .line 922
    goto :goto_0
.end method

.method static isEvenLevel(I)Z
    .locals 5
    .param p0, "index"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 479
    add-int/lit8 v0, p0, 0x1

    .line 480
    .local v0, "oneBased":I
    if-lez v0, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "negative index"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 481
    const v1, 0x55555555

    and-int/2addr v1, v0

    const v4, -0x55555556

    and-int/2addr v4, v0

    if-le v1, v4, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    .line 480
    goto :goto_0

    :cond_1
    move v2, v3

    .line 481
    goto :goto_1
.end method

.method public static maximumSize(I)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;
    .locals 3
    .param p0, "maximumSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$Builder",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->maximumSize(I)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TB;>;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$Builder",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TB;>;"
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V

    return-object v0
.end method

.method private removeAndGet(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v0

    .line 466
    .local v0, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->removeAt(I)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    .line 467
    return-object v0
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
    .line 266
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    .local p1, "newElements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v2, 0x0

    .line 273
    .local v2, "modified":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 274
    .local v0, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 275
    const/4 v2, 0x1

    .line 276
    goto :goto_0

    .line 277
    .end local v0    # "element":Ljava/lang/Object;, "TE;"
    :cond_0
    return v2
.end method

.method capacity()I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 911
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 887
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    if-ge v0, v1, :cond_0

    .line 888
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 887
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 890
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    .line 891
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
    .line 906
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->minHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    iget-object v0, v0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method elementData(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method isIntact()Z
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 492
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    if-ge v0, v1, :cond_1

    .line 493
    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->heapForIndex(I)Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    move-result-object v1

    # invokes: Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->verifyIndex(I)Z
    invoke-static {v1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->access$400(Lcom/google/common/collect/MinMaxPriorityQueue$Heap;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 494
    const/4 v1, 0x0

    .line 497
    :goto_1
    return v1

    .line 492
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 497
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
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
    .line 882
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V

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
    .line 288
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->modCount:I

    .line 290
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    .line 292
    .local v0, "insertIndex":I
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->growIfNeeded()V

    .line 296
    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->heapForIndex(I)Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->bubbleUp(ILjava/lang/Object;)V

    .line 297
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->maximumSize:I

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->pollLast()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->getMaxElementIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->removeAndGet(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->getMaxElementIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->removeAndGet(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method removeAt(I)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;
    .locals 6
    .param p1, "index"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    const/4 v1, 0x0

    .line 401
    iget v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    invoke-static {p1, v4}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 402
    iget v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->modCount:I

    .line 403
    iget v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    .line 404
    iget v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    if-ne v4, p1, :cond_1

    .line 405
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    aput-object v1, v4, v5

    .line 425
    :cond_0
    :goto_0
    return-object v1

    .line 408
    :cond_1
    iget v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    invoke-virtual {p0, v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v0

    .line 409
    .local v0, "actualLastElement":Ljava/lang/Object;, "TE;"
    iget v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    invoke-direct {p0, v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->heapForIndex(I)Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getCorrectLastElement(Ljava/lang/Object;)I

    move-result v2

    .line 410
    .local v2, "lastElementAt":I
    iget v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    invoke-virtual {p0, v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v3

    .line 411
    .local v3, "toTrickle":Ljava/lang/Object;, "TE;"
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    aput-object v1, v4, v5

    .line 412
    invoke-direct {p0, p1, v3}, Lcom/google/common/collect/MinMaxPriorityQueue;->fillHole(ILjava/lang/Object;)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    move-result-object v1

    .line 413
    .local v1, "changes":Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;, "Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc<TE;>;"
    if-ge v2, p1, :cond_0

    .line 415
    if-nez v1, :cond_2

    .line 417
    new-instance v1, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    .end local v1    # "changes":Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;, "Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc<TE;>;"
    invoke-direct {v1, v0, v3}, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 421
    .restart local v1    # "changes":Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;, "Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc<TE;>;"
    :cond_2
    new-instance v4, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    iget-object v5, v1, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;->replaced:Ljava/lang/Object;

    invoke-direct {v4, v0, v5}, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v4

    goto :goto_0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 373
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->getMaxElementIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->removeAndGet(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 253
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>;"
    const/4 v3, 0x0

    .line 895
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 896
    .local v0, "copyTo":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 897
    return-object v0
.end method
