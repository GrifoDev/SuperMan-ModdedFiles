.class final Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;
.super Ljava/util/stream/Nodes$InternalNodeSpliterator;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$InternalNodeSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$InternalNodeSpliterator",
        "<TT;",
        "Ljava/util/Spliterator",
        "<TT;>;",
        "Ljava/util/stream/Node",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/stream/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Node",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1062
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>.OfRef<TT;>;"
    .local p1, "curNode":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator;-><init>(Ljava/util/stream/Node;)V

    .line 1061
    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>.OfRef<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v3, 0x0

    .line 1089
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    if-nez v2, :cond_0

    .line 1090
    return-void

    .line 1092
    :cond_0
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    if-nez v2, :cond_4

    .line 1093
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    if-nez v2, :cond_3

    .line 1094
    invoke-virtual {p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->initStack()Ljava/util/Deque;

    move-result-object v1

    .line 1096
    .local v1, "stack":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/util/stream/Node<TT;>;>;"
    :goto_0
    invoke-virtual {p0, v1}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->findNextLeafNode(Ljava/util/Deque;)Ljava/util/stream/Node;

    move-result-object v0

    .local v0, "leaf":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    if-eqz v0, :cond_1

    .line 1097
    invoke-interface {v0, p1}, Ljava/util/stream/Node;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 1099
    :cond_1
    iput-object v3, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    .line 1088
    .end local v0    # "leaf":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .end local v1    # "stack":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/util/stream/Node<TT;>;>;"
    :cond_2
    :goto_1
    return-void

    .line 1102
    :cond_3
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    invoke-interface {v2, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 1105
    :cond_4
    :goto_2
    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>.OfRef<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v3, 0x0

    .line 1067
    invoke-virtual {p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->initTryAdvance()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1068
    const/4 v2, 0x0

    return v2

    .line 1070
    :cond_0
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    invoke-interface {v2, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    .line 1071
    .local v0, "hasNext":Z
    if-nez v0, :cond_2

    .line 1072
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava/util/Spliterator;

    if-nez v2, :cond_1

    .line 1074
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceStack:Ljava/util/Deque;

    invoke-virtual {p0, v2}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->findNextLeafNode(Ljava/util/Deque;)Ljava/util/stream/Node;

    move-result-object v1

    .line 1075
    .local v1, "leaf":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    if-eqz v1, :cond_1

    .line 1076
    invoke-interface {v1}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v2

    iput-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    .line 1078
    iget-object v2, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava/util/Spliterator;

    invoke-interface {v2, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v2

    return v2

    .line 1082
    .end local v1    # "leaf":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    :cond_1
    iput-object v3, p0, Ljava/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava/util/stream/Node;

    .line 1084
    :cond_2
    return v0
.end method
