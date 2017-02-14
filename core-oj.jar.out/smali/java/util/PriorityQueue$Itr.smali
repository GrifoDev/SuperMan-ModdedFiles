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

    iput-object p1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v0, v0, Ljava/util/PriorityQueue;->modCount:I

    iput v0, p0, Ljava/util/PriorityQueue$Itr;->expectedModCount:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/PriorityQueue;Ljava/util/PriorityQueue$Itr;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/PriorityQueue$Itr;-><init>(Ljava/util/PriorityQueue;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    iget-object v3, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v3, v3, Ljava/util/PriorityQueue;->size:I

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

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

    iget v0, p0, Ljava/util/PriorityQueue$Itr;->expectedModCount:I

    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v1, v1, Ljava/util/PriorityQueue;->modCount:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v1, v1, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget-object v0, v0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    iput v1, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    return-object v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget v1, p0, Ljava/util/PriorityQueue$Itr;->expectedModCount:I

    iget-object v2, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v2, v2, Ljava/util/PriorityQueue;->modCount:I

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    :cond_0
    iget v1, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v2, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    iput v4, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    if-nez v0, :cond_1

    iget v1, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    :goto_0
    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v1, v1, Ljava/util/PriorityQueue;->modCount:I

    iput v1, p0, Ljava/util/PriorityQueue$Itr;->expectedModCount:I

    return-void

    :cond_1
    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    :cond_2
    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget-object v2, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->removeEq(Ljava/lang/Object;)Z

    iput-object v3, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method
