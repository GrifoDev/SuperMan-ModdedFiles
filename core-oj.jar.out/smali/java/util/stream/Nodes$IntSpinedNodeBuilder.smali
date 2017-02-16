.class final Ljava/util/stream/Nodes$IntSpinedNodeBuilder;
.super Ljava/util/stream/SpinedBuffer$OfInt;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfInt;
.implements Ljava/util/stream/Node$Builder$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntSpinedNodeBuilder"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private building:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->-assertionsDisabled:Z

    .line 1638
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 1643
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfInt;-><init>()V

    .line 1641
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    .line 1643
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 1668
    sget-boolean v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "not building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1669
    :cond_0
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->accept(I)V

    .line 1667
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;

    .prologue
    .line 195
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "i":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfInt;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1686
    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->asPrimitiveArray()[I

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[I
    .locals 2

    .prologue
    .line 1687
    sget-boolean v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "during building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1688
    :cond_1
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    const/4 v1, 0x1

    .line 1660
    sget-boolean v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "was already building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 1661
    :cond_1
    iput-boolean v1, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    .line 1662
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->clear()V

    .line 1663
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->ensureCapacity(J)V

    .line 1659
    return-void
.end method

.method public build()Ljava/util/stream/Node$OfInt;
    .locals 2

    .prologue
    .line 1693
    sget-boolean v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "during building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1694
    :cond_1
    return-object p0
.end method

.method public bridge synthetic build()Ljava/util/stream/Node;
    .locals 1

    .prologue
    .line 1692
    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->build()Ljava/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copyInto(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "offset"    # I

    .prologue
    .line 1680
    check-cast p1, [I

    .end local p1    # "array":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->copyInto([II)V

    return-void
.end method

.method public copyInto([II)V
    .locals 2
    .param p1, "array"    # [I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 1681
    sget-boolean v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "during building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1682
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfInt;->copyInto(Ljava/lang/Object;I)V

    .line 1680
    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0
    .param p1, "boxed"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .prologue
    .line 345
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "boxed":[Ljava/lang/Object;
    invoke-interface {p0, p1, p2}, Ljava/util/stream/Node$OfInt;->copyInto([Ljava/lang/Integer;I)V

    return-void
.end method

.method public end()V
    .locals 2

    .prologue
    .line 1674
    sget-boolean v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "was not building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1675
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    .line 1673
    return-void
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0
    .param p1, "consumer"    # Ljava/lang/Object;

    .prologue
    .line 1652
    check-cast p1, Ljava/util/function/IntConsumer;

    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public forEach(Ljava/util/function/IntConsumer;)V
    .locals 2
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 1653
    sget-boolean v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "during building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1654
    :cond_1
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->forEach(Ljava/lang/Object;)V

    .line 1652
    return-void
.end method

.method public bridge synthetic getChild(I)Ljava/util/stream/Node;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 249
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfPrimitive;->getChild(I)Ljava/util/stream/Node$OfPrimitive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 752
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->newArray(I)[I

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator$OfInt;
    .locals 2

    .prologue
    .line 1647
    sget-boolean v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "during building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1648
    :cond_1
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    .prologue
    .line 1646
    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .prologue
    .line 1646
    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfPrimitive;
    .locals 1
    .param p1, "from"    # J
    .param p3, "to"    # J
    .param p5, "generator"    # Ljava/util/function/IntFunction;

    .prologue
    .line 356
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfInt;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 1
    .param p1, "from"    # J
    .param p3, "to"    # J
    .param p5, "generator"    # Ljava/util/function/IntFunction;

    .prologue
    .line 356
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfInt;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0
.end method
