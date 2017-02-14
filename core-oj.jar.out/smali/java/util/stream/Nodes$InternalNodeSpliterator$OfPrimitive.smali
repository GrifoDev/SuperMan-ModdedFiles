.class abstract Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;
.super Ljava/util/stream/Nodes$InternalNodeSpliterator;
.source "Nodes.java"

# interfaces
.implements Ljava/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$InternalNodeSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_ARR:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava/util/Spliterator$OfPrimitive",
        "<TT;TT_CONS;TT_SP",
        "LITR;",
        ">;N::",
        "Ljava/util/stream/Node$OfPrimitive",
        "<TT;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TN;>;>",
        "Ljava/util/stream/Nodes$InternalNodeSpliterator",
        "<TT;TT_SP",
        "LITR;",
        "TN;>;",
        "Ljava/util/Spliterator$OfPrimitive",
        "<TT;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/stream/Node$OfPrimitive;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator;-><init>(Ljava/util/stream/Node;)V

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    if-nez v2, :cond_4

    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->initStack()Ljava/util/Deque;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->findNextLeafNode(Ljava/util/Deque;)Ljava/util/stream/Node;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node$OfPrimitive;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/stream/Node$OfPrimitive;->forEach(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iput-object v3, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    check-cast v2, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v2, p1}, Ljava/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->initTryAdvance()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    check-cast v2, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v2, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    if-nez v2, :cond_1

    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceStack:Ljava/util/Deque;

    invoke-virtual {p0, v2}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->findNextLeafNode(Ljava/util/Deque;)Ljava/util/stream/Node;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Node$OfPrimitive;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/stream/Node$OfPrimitive;->spliterator()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v2

    iput-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    check-cast v2, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v2, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_1
    iput-object v3, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    :cond_2
    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    return-object v0
.end method
