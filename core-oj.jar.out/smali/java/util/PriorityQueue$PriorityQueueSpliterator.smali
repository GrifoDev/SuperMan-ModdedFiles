.class final Ljava/util/PriorityQueue$PriorityQueueSpliterator;
.super Ljava/lang/Object;
.source "PriorityQueue.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/PriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PriorityQueueSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private expectedModCount:I

.field private fence:I

.field private index:I

.field private final pq:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/PriorityQueue;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<TE;>;III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    iput p2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    iput p3, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    iput p4, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    return-void
.end method

.method private getFence()I
    .locals 2

    iget v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    if-gez v0, :cond_0

    iget-object v1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    iget v1, v1, Ljava/util/PriorityQueue;->modCount:I

    iput v1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    iget-object v1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    iget v0, v1, Ljava/util/PriorityQueue;->size:I

    iput v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    :cond_0
    return v0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x4140

    return v0
.end method

.method public estimateSize()J
    .locals 2

    invoke-direct {p0}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    :cond_0
    iget-object v5, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    if-eqz v5, :cond_1

    iget-object v0, v5, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget v2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    if-gez v2, :cond_2

    iget v4, v5, Ljava/util/PriorityQueue;->modCount:I

    iget v2, v5, Ljava/util/PriorityQueue;->size:I

    :goto_0
    iget v3, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    if-ltz v3, :cond_1

    iput v2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    array-length v6, v0

    if-gt v2, v6, :cond_1

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v1, v0, v3

    if-nez v1, :cond_3

    :cond_1
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    :cond_2
    iget v4, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    goto :goto_0

    :cond_3
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget v6, v5, Ljava/util/PriorityQueue;->modCount:I

    if-ne v6, v4, :cond_1

    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    invoke-direct {p0}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->getFence()I

    move-result v1

    iget v2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    if-ltz v2, :cond_3

    if-ge v2, v1, :cond_3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    iget-object v3, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    iget-object v3, v3, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v0, v3, v2

    if-nez v0, :cond_1

    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v3, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    iget v3, v3, Ljava/util/PriorityQueue;->modCount:I

    iget v4, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    if-eq v3, v4, :cond_2

    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    :cond_2
    const/4 v3, 0x1

    return v3

    :cond_3
    return v3
.end method

.method public trySplit()Ljava/util/PriorityQueue$PriorityQueueSpliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/PriorityQueue$PriorityQueueSpliterator",
            "<TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    add-int v3, v1, v0

    ushr-int/lit8 v2, v3, 0x1

    if-lt v1, v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Ljava/util/PriorityQueue$PriorityQueueSpliterator;

    iget-object v4, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    iput v2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    iget v5, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    invoke-direct {v3, v4, v1, v2, v5}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;-><init>(Ljava/util/PriorityQueue;III)V

    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->trySplit()Ljava/util/PriorityQueue$PriorityQueueSpliterator;

    move-result-object v0

    return-object v0
.end method
