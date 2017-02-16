.class Ljava/util/ArrayDeque$DescendingIterator;
.super Ljava/lang/Object;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private cursor:I

.field private fence:I

.field private lastRet:I

.field final synthetic this$0:Ljava/util/ArrayDeque;


# direct methods
.method private constructor <init>(Ljava/util/ArrayDeque;)V
    .locals 1

    .prologue
    .line 664
    .local p0, "this":Ljava/util/ArrayDeque$DescendingIterator;, "Ljava/util/ArrayDeque<TE;>.DescendingIterator;"
    .local p1, "this$0":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iput-object p1, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    iget-object v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    iget v0, v0, Ljava/util/ArrayDeque;->tail:I

    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    .line 666
    iget-object v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    iget v0, v0, Ljava/util/ArrayDeque;->head:I

    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->fence:I

    .line 667
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->lastRet:I

    .line 664
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque$DescendingIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/ArrayDeque;

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque$DescendingIterator;, "Ljava/util/ArrayDeque<TE;>.DescendingIterator;"
    invoke-direct {p0, p1}, Ljava/util/ArrayDeque$DescendingIterator;-><init>(Ljava/util/ArrayDeque;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 670
    .local p0, "this":Ljava/util/ArrayDeque$DescendingIterator;, "Ljava/util/ArrayDeque<TE;>.DescendingIterator;"
    iget v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    iget v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->fence:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 674
    .local p0, "this":Ljava/util/ArrayDeque$DescendingIterator;, "Ljava/util/ArrayDeque<TE;>.DescendingIterator;"
    iget v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    iget v2, p0, Ljava/util/ArrayDeque$DescendingIterator;->fence:I

    if-ne v1, v2, :cond_0

    .line 675
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 676
    :cond_0
    iget v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    iget-object v2, v2, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    .line 678
    iget-object v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    iget-object v1, v1, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    aget-object v0, v1, v2

    .line 679
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    iget v1, v1, Ljava/util/ArrayDeque;->head:I

    iget v2, p0, Ljava/util/ArrayDeque$DescendingIterator;->fence:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_2

    .line 680
    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 681
    :cond_2
    iget v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    iput v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->lastRet:I

    .line 682
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 686
    .local p0, "this":Ljava/util/ArrayDeque$DescendingIterator;, "Ljava/util/ArrayDeque<TE;>.DescendingIterator;"
    iget v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->lastRet:I

    if-gez v0, :cond_0

    .line 687
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 688
    :cond_0
    iget-object v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    iget v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->lastRet:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->delete(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 689
    iget v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    iget-object v1, v1, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    .line 690
    iget-object v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    iget v0, v0, Ljava/util/ArrayDeque;->head:I

    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->fence:I

    .line 692
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->lastRet:I

    .line 685
    return-void
.end method
