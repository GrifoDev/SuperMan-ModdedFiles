.class final Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;
.super Ljava/util/stream/SpinedBuffer$OfDouble;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfDouble;
.implements Ljava/util/stream/Node$Builder$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DoubleSpinedNodeBuilder"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private building:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->-assertionsDisabled:Z

    .line 1758
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 1763
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfDouble;-><init>()V

    .line 1761
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->building:Z

    .line 1763
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3
    .param p1, "i"    # D

    .prologue
    .line 1788
    sget-boolean v0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->building:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "not building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1789
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    .line 1787
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;

    .prologue
    .line 229
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "i":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfDouble;->accept(Ljava/lang/Double;)V

    return-void
.end method

.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1806
    invoke-virtual {p0}, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->asPrimitiveArray()[D

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[D
    .locals 2

    .prologue
    .line 1807
    sget-boolean v0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->building:Z

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

    .line 1808
    :cond_1
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    const/4 v1, 0x1

    .line 1780
    sget-boolean v0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->building:Z

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

    .line 1781
    :cond_1
    iput-boolean v1, p0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->building:Z

    .line 1782
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->clear()V

    .line 1783
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->ensureCapacity(J)V

    .line 1779
    return-void
.end method

.method public build()Ljava/util/stream/Node$OfDouble;
    .locals 2

    .prologue
    .line 1813
    sget-boolean v0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->building:Z

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

    .line 1814
    :cond_1
    return-object p0
.end method

.method public bridge synthetic build()Ljava/util/stream/Node;
    .locals 1

    .prologue
    .line 1812
    invoke-virtual {p0}, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->build()Ljava/util/stream/Node$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copyInto(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "offset"    # I

    .prologue
    .line 1800
    check-cast p1, [D

    .end local p1    # "array":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->copyInto([DI)V

    return-void
.end method

.method public copyInto([DI)V
    .locals 2
    .param p1, "array"    # [D
    .param p2, "offset"    # I

    .prologue
    .line 1801
    sget-boolean v0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->building:Z

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

    .line 1802
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfDouble;->copyInto(Ljava/lang/Object;I)V

    .line 1800
    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0
    .param p1, "boxed"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .prologue
    .line 493
    check-cast p1, [Ljava/lang/Double;

    .end local p1    # "boxed":[Ljava/lang/Object;
    invoke-interface {p0, p1, p2}, Ljava/util/stream/Node$OfDouble;->copyInto([Ljava/lang/Double;I)V

    return-void
.end method

.method public end()V
    .locals 2

    .prologue
    .line 1794
    sget-boolean v0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->building:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "was not building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1795
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->building:Z

    .line 1793
    return-void
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0
    .param p1, "consumer"    # Ljava/lang/Object;

    .prologue
    .line 1772
    check-cast p1, Ljava/util/function/DoubleConsumer;

    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->forEach(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEach(Ljava/util/function/DoubleConsumer;)V
    .locals 2
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .prologue
    .line 1773
    sget-boolean v0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->building:Z

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

    .line 1774
    :cond_1
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer$OfDouble;->forEach(Ljava/lang/Object;)V

    .line 1772
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
    .line 982
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfDouble;->newArray(I)[D

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator$OfDouble;
    .locals 2

    .prologue
    .line 1767
    sget-boolean v0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->building:Z

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

    .line 1768
    :cond_1
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfDouble;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    .prologue
    .line 1766
    invoke-virtual {p0}, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .prologue
    .line 1766
    invoke-virtual {p0}, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfPrimitive;
    .locals 1
    .param p1, "from"    # J
    .param p3, "to"    # J
    .param p5, "generator"    # Ljava/util/function/IntFunction;

    .prologue
    .line 504
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfDouble;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 1
    .param p1, "from"    # J
    .param p3, "to"    # J
    .param p5, "generator"    # Ljava/util/function/IntFunction;

    .prologue
    .line 504
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfDouble;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfDouble;

    move-result-object v0

    return-object v0
.end method
