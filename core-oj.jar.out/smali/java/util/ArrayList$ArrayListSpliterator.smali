.class final Ljava/util/ArrayList$ArrayListSpliterator;
.super Ljava/lang/Object;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArrayListSpliterator"
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

.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/ArrayList;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TE;>;III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/ArrayList$ArrayListSpliterator;->list:Ljava/util/ArrayList;

    iput p2, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    iput p3, p0, Ljava/util/ArrayList$ArrayListSpliterator;->fence:I

    iput p4, p0, Ljava/util/ArrayList$ArrayListSpliterator;->expectedModCount:I

    return-void
.end method

.method private getFence()I
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Ljava/util/ArrayList$ArrayListSpliterator;->fence:I

    if-gez v0, :cond_0

    iget-object v1, p0, Ljava/util/ArrayList$ArrayListSpliterator;->list:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    iput v2, p0, Ljava/util/ArrayList$ArrayListSpliterator;->fence:I

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, v1, Ljava/util/ArrayList;->modCount:I

    iput v2, p0, Ljava/util/ArrayList$ArrayListSpliterator;->expectedModCount:I

    invoke-static {v1}, Ljava/util/ArrayList;->-get0(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Ljava/util/ArrayList$ArrayListSpliterator;->fence:I

    goto :goto_0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .locals 2

    invoke-direct {p0}, Ljava/util/ArrayList$ArrayListSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

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
    iget-object v4, p0, Ljava/util/ArrayList$ArrayListSpliterator;->list:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v0, v4, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget v2, p0, Ljava/util/ArrayList$ArrayListSpliterator;->fence:I

    if-gez v2, :cond_1

    iget v5, v4, Ljava/util/ArrayList;->modCount:I

    invoke-static {v4}, Ljava/util/ArrayList;->-get0(Ljava/util/ArrayList;)I

    move-result v2

    :goto_0
    iget v3, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    if-ltz v3, :cond_3

    iput v2, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    array-length v6, v0

    if-gt v2, v6, :cond_3

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v1, v0, v3

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget v5, p0, Ljava/util/ArrayList$ArrayListSpliterator;->expectedModCount:I

    goto :goto_0

    :cond_2
    iget v6, v4, Ljava/util/ArrayList;->modCount:I

    if-ne v6, v5, :cond_3

    return-void

    :cond_3
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6
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

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    invoke-direct {p0}, Ljava/util/ArrayList$ArrayListSpliterator;->getFence()I

    move-result v1

    iget v2, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    if-ge v2, v1, :cond_2

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    iget-object v3, p0, Ljava/util/ArrayList$ArrayListSpliterator;->list:Ljava/util/ArrayList;

    iget-object v3, v3, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v0, v3, v2

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v3, p0, Ljava/util/ArrayList$ArrayListSpliterator;->list:Ljava/util/ArrayList;

    iget v3, v3, Ljava/util/ArrayList;->modCount:I

    iget v4, p0, Ljava/util/ArrayList$ArrayListSpliterator;->expectedModCount:I

    if-eq v3, v4, :cond_1

    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    :cond_1
    const/4 v3, 0x1

    return v3

    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public trySplit()Ljava/util/ArrayList$ArrayListSpliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList$ArrayListSpliterator",
            "<TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/ArrayList$ArrayListSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    add-int v3, v1, v0

    ushr-int/lit8 v2, v3, 0x1

    if-lt v1, v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Ljava/util/ArrayList$ArrayListSpliterator;

    iget-object v4, p0, Ljava/util/ArrayList$ArrayListSpliterator;->list:Ljava/util/ArrayList;

    iput v2, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    iget v5, p0, Ljava/util/ArrayList$ArrayListSpliterator;->expectedModCount:I

    invoke-direct {v3, v4, v1, v2, v5}, Ljava/util/ArrayList$ArrayListSpliterator;-><init>(Ljava/util/ArrayList;III)V

    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/ArrayList$ArrayListSpliterator;->trySplit()Ljava/util/ArrayList$ArrayListSpliterator;

    move-result-object v0

    return-object v0
.end method
