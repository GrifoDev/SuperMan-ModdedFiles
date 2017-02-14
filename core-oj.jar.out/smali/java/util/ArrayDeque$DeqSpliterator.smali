.class final Ljava/util/ArrayDeque$DeqSpliterator;
.super Ljava/lang/Object;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DeqSpliterator"
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
.field private final deq:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<TE;>;"
        }
    .end annotation
.end field

.field private fence:I

.field private index:I


# direct methods
.method constructor <init>(Ljava/util/ArrayDeque;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayDeque",
            "<TE;>;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    iput p2, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    iput p3, p0, Ljava/util/ArrayDeque$DeqSpliterator;->fence:I

    return-void
.end method

.method private getFence()I
    .locals 2

    iget v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->fence:I

    if-gez v0, :cond_0

    iget-object v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    iget v0, v1, Ljava/util/ArrayDeque;->tail:I

    iput v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->fence:I

    iget-object v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    iget v1, v1, Ljava/util/ArrayDeque;->head:I

    iput v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    :cond_0
    return v0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x4150

    return v0
.end method

.method public estimateSize()J
    .locals 4

    invoke-direct {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->getFence()I

    move-result v1

    iget v2, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    sub-int v0, v1, v2

    if-gez v0, :cond_0

    iget-object v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    iget-object v1, v1, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_0
    int-to-long v2, v0

    return-wide v2
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 6
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
    iget-object v5, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    iget-object v0, v5, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v5, v0

    add-int/lit8 v4, v5, -0x1

    invoke-direct {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->getFence()I

    move-result v2

    iget v3, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    iput v2, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    :goto_0
    if-eq v3, v2, :cond_2

    aget-object v1, v0, v3

    add-int/lit8 v5, v3, 0x1

    and-int v3, v5, v4

    if-nez v1, :cond_1

    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_0
    iget-object v5, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    iget-object v0, v5, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v5, v0

    add-int/lit8 v4, v5, -0x1

    invoke-direct {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->getFence()I

    move-result v2

    iget v3, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    if-eq v3, v2, :cond_2

    aget-object v1, v0, v3

    add-int/lit8 v5, v3, 0x1

    and-int/2addr v5, v4

    iput v5, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    if-nez v1, :cond_1

    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v5, 0x1

    return v5

    :cond_2
    const/4 v5, 0x0

    return v5
.end method

.method public trySplit()Ljava/util/ArrayDeque$DeqSpliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque$DeqSpliterator",
            "<TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->getFence()I

    move-result v3

    iget v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    iget-object v4, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    iget-object v4, v4, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v4

    if-eq v0, v3, :cond_1

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v2, -0x1

    and-int/2addr v4, v5

    if-eq v4, v3, :cond_1

    if-le v0, v3, :cond_0

    add-int/2addr v3, v2

    :cond_0
    add-int v4, v0, v3

    ushr-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v2, -0x1

    and-int v1, v4, v5

    new-instance v4, Ljava/util/ArrayDeque$DeqSpliterator;

    iget-object v5, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    iput v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    invoke-direct {v4, v5, v0, v1}, Ljava/util/ArrayDeque$DeqSpliterator;-><init>(Ljava/util/ArrayDeque;II)V

    return-object v4

    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->trySplit()Ljava/util/ArrayDeque$DeqSpliterator;

    move-result-object v0

    return-object v0
.end method
