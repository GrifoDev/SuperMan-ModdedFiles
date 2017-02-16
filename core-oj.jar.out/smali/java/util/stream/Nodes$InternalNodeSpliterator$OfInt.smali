.class final Ljava/util/stream/Nodes$InternalNodeSpliterator$OfInt;
.super Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;
.source "Nodes.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$InternalNodeSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/util/function/IntConsumer;",
        "[I",
        "Ljava/util/Spliterator$OfInt;",
        "Ljava/util/stream/Node$OfInt;",
        ">;",
        "Ljava/util/Spliterator$OfInt;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/stream/Node$OfInt;)V
    .locals 0
    .param p1, "cur"    # Ljava/util/stream/Node$OfInt;

    .prologue
    .line 1168
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfInt;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>.OfInt;"
    invoke-direct {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;-><init>(Ljava/util/stream/Node$OfPrimitive;)V

    .line 1167
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 0
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 1142
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfInt;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>.OfInt;"
    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 1120
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfInt;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>.OfInt;"
    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfInt;
    .locals 1

    .prologue
    .line 1016
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfInt;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfInt;

    return-object v0
.end method
