.class final Ljava/util/Vector$VectorSpliterator;
.super Ljava/lang/Object;
.source "Vector.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Vector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VectorSpliterator"
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
.field private array:[Ljava/lang/Object;

.field private expectedModCount:I

.field private fence:I

.field private index:I

.field private final list:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Vector;[Ljava/lang/Object;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<TE;>;[",
            "Ljava/lang/Object;",
            "III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    iput-object p2, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    iput p3, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    iput p4, p0, Ljava/util/Vector$VectorSpliterator;->fence:I

    iput p5, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    return-void
.end method

.method private getFence()I
    .locals 3

    iget v0, p0, Ljava/util/Vector$VectorSpliterator;->fence:I

    if-gez v0, :cond_0

    iget-object v2, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    iget-object v1, v1, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    iget v0, v1, Ljava/util/Vector;->elementCount:I

    iput v0, p0, Ljava/util/Vector$VectorSpliterator;->fence:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .locals 2

    invoke-direct {p0}, Ljava/util/Vector$VectorSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/Vector$VectorSpliterator;->index:I

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

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_0
    iget-object v4, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    if-eqz v4, :cond_3

    iget v1, p0, Ljava/util/Vector$VectorSpliterator;->fence:I

    if-gez v1, :cond_1

    monitor-enter v4

    :try_start_0
    iget v5, v4, Ljava/util/AbstractList;->modCount:I

    iput v5, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    iget-object v0, v4, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    iget v1, v4, Ljava/util/Vector;->elementCount:I

    iput v1, p0, Ljava/util/Vector$VectorSpliterator;->fence:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    :goto_0
    if-eqz v0, :cond_3

    iget v2, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    if-ltz v2, :cond_3

    iput v1, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    array-length v5, v0

    if-gt v1, v5, :cond_3

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    add-int/lit8 v2, v3, 0x1

    aget-object v5, v0, v3

    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v3, v2

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5

    :cond_1
    iget-object v0, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget v5, v4, Ljava/util/AbstractList;->modCount:I

    iget v6, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    if-ne v5, v6, :cond_3

    return-void

    :cond_3
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    invoke-direct {p0}, Ljava/util/Vector$VectorSpliterator;->getFence()I

    move-result v1

    iget v0, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    if-le v1, v0, :cond_2

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iget v2, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/Vector$VectorSpliterator;->getFence()I

    move-result v6

    iget v3, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    add-int v0, v3, v6

    ushr-int/lit8 v4, v0, 0x1

    if-lt v3, v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector$VectorSpliterator;

    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    iget-object v2, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    iput v4, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    iget v5, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    invoke-direct/range {v0 .. v5}, Ljava/util/Vector$VectorSpliterator;-><init>(Ljava/util/Vector;[Ljava/lang/Object;III)V

    goto :goto_0
.end method
