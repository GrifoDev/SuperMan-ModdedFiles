.class final Ljava/util/stream/Nodes$ConcNode;
.super Ljava/util/stream/Nodes$AbstractConcNode;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Nodes$ConcNode$OfDouble;,
        Ljava/util/stream/Nodes$ConcNode$OfInt;,
        Ljava/util/stream/Nodes$ConcNode$OfLong;,
        Ljava/util/stream/Nodes$ConcNode$OfPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$AbstractConcNode",
        "<TT;",
        "Ljava/util/stream/Node",
        "<TT;>;>;",
        "Ljava/util/stream/Node",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/stream/Node;Ljava/util/stream/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Node",
            "<TT;>;",
            "Ljava/util/stream/Node",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/util/stream/Nodes$AbstractConcNode;-><init>(Ljava/util/stream/Node;Ljava/util/stream/Node;)V

    return-void
.end method


# virtual methods
.method public asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/stream/Nodes$AbstractConcNode;->count()J

    move-result-wide v2

    const-wide/32 v4, 0x7ffffff7

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Stream size exceeds max array size"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    long-to-int v1, v2

    invoke-interface {p1, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/stream/Nodes$ConcNode;->copyInto([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    iget-object v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->right:Ljava/util/stream/Node;

    iget-object v1, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    invoke-interface {v1}, Ljava/util/stream/Node;->count()J

    move-result-wide v2

    long-to-int v1, v2

    add-int/2addr v1, p2

    invoke-interface {v0, p1, v1}, Ljava/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    invoke-interface {v0, p1}, Ljava/util/stream/Node;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->right:Ljava/util/stream/Node;

    invoke-interface {v0, p1}, Ljava/util/stream/Node;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfRef;-><init>(Ljava/util/stream/Node;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/util/stream/Nodes$AbstractConcNode;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string/jumbo v0, "ConcNode[%s.%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    aput-object v2, v1, v4

    iget-object v2, p0, Ljava/util/stream/Nodes$AbstractConcNode;->right:Ljava/util/stream/Node;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "ConcNode[size=%d]"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/stream/Nodes$AbstractConcNode;->count()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/stream/Nodes$AbstractConcNode;->count()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    invoke-interface {v0}, Ljava/util/stream/Node;->count()J

    move-result-wide v4

    cmp-long v0, p1, v4

    if-ltz v0, :cond_1

    iget-object v1, p0, Ljava/util/stream/Nodes$AbstractConcNode;->right:Ljava/util/stream/Node;

    sub-long v2, p1, v4

    sub-long v4, p3, v4

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0

    :cond_1
    cmp-long v0, p3, v4

    if-gtz v0, :cond_2

    iget-object v1, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode;->getShape()Ljava/util/stream/StreamShape;

    move-result-object v0

    iget-object v1, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    move-wide v2, p1

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v1

    iget-object v7, p0, Ljava/util/stream/Nodes$AbstractConcNode;->right:Ljava/util/stream/Node;

    const-wide/16 v8, 0x0

    sub-long v10, p3, v4

    move-object/from16 v12, p5

    invoke-interface/range {v7 .. v12}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/stream/Nodes;->conc(Ljava/util/stream/StreamShape;Ljava/util/stream/Node;Ljava/util/stream/Node;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0
.end method
