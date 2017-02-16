.class final Ljava/util/PriorityQueue$Itr;
.super Ljava/lang/Object;
.source "PriorityQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/PriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Itr"
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

.field private expectedModCount:I

.field private forgetMeNot:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<TE;>;"
        }
    .end annotation
.end field

.field private lastRet:I

.field private lastRetElt:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/PriorityQueue;


# direct methods
.method private constructor <init>(Ljava/util/PriorityQueue;)V
    .locals 1

    .prologue
    .line 487
    .local p0, "this":Ljava/util/PriorityQueue$Itr;, "Ljava/util/PriorityQueue<TE;>.Itr;"
    .local p1, "this$0":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iput-object p1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    .line 525
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v0, v0, Ljava/util/PriorityQueue;->modCount:I

    iput v0, p0, Ljava/util/PriorityQueue$Itr;->expectedModCount:I

    .line 487
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/PriorityQueue;Ljava/util/PriorityQueue$Itr;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/PriorityQueue;

    .prologue
    .local p0, "this":Ljava/util/PriorityQueue$Itr;, "Ljava/util/PriorityQueue<TE;>.Itr;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue$Itr;-><init>(Ljava/util/PriorityQueue;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .prologue
    .local p0, "this":Ljava/util/PriorityQueue$Itr;, "Ljava/util/PriorityQueue<TE;>.Itr;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 528
    iget v2, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    iget-object v3, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v3, v3, Ljava/util/PriorityQueue;->size:I

    if-lt v2, v3, :cond_1

    .line 529
    iget-object v2, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 528
    :cond_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 534
    .local p0, "this":Ljava/util/PriorityQueue$Itr;, "Ljava/util/PriorityQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/PriorityQueue$Itr;->expectedModCount:I

    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v1, v1, Ljava/util/PriorityQueue;->modCount:I

    if-eq v0, v1, :cond_0

    .line 535
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 536
    :cond_0
    iget v0, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v1, v1, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_1

    .line 537
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget-object v0, v0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    iput v1, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    aget-object v0, v0, v1

    return-object v0

    .line 538
    :cond_1
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_2

    .line 539
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    .line 540
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    .line 541
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    return-object v0

    .line 544
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 5

    .prologue
    .local p0, "this":Ljava/util/PriorityQueue$Itr;, "Ljava/util/PriorityQueue<TE;>.Itr;"
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 548
    iget v1, p0, Ljava/util/PriorityQueue$Itr;->expectedModCount:I

    iget-object v2, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v2, v2, Ljava/util/PriorityQueue;->modCount:I

    if-eq v1, v2, :cond_0

    .line 549
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 550
    :cond_0
    iget v1, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    if-eq v1, v4, :cond_3

    .line 551
    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v2, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 552
    .local v0, "moved":Ljava/lang/Object;, "TE;"
    iput v4, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    .line 553
    if-nez v0, :cond_1

    .line 554
    iget v1, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    .line 566
    .end local v0    # "moved":Ljava/lang/Object;, "TE;"
    :goto_0
    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v1, v1, Ljava/util/PriorityQueue;->modCount:I

    iput v1, p0, Ljava/util/PriorityQueue$Itr;->expectedModCount:I

    .line 547
    return-void

    .line 556
    .restart local v0    # "moved":Ljava/lang/Object;, "TE;"
    :cond_1
    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    if-nez v1, :cond_2

    .line 557
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    .line 558
    :cond_2
    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 560
    .end local v0    # "moved":Ljava/lang/Object;, "TE;"
    :cond_3
    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 561
    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget-object v2, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->removeEq(Ljava/lang/Object;)Z

    .line 562
    iput-object v3, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    goto :goto_0

    .line 564
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method
