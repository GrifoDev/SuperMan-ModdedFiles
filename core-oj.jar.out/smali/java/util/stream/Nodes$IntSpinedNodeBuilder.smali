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

    const-class v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfInt;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2

    sget-boolean v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "not building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->accept(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfInt;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->asPrimitiveArray()[I

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[I
    .locals 2

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

    :cond_1
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public begin(J)V
    .locals 3

    const/4 v1, 0x1

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

    :cond_1
    iput-boolean v1, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->clear()V

    invoke-virtual {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->ensureCapacity(J)V

    return-void
.end method

.method public build()Ljava/util/stream/Node$OfInt;
    .locals 2

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

    :cond_1
    return-object p0
.end method

.method public bridge synthetic build()Ljava/util/stream/Node;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->build()Ljava/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copyInto(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->copyInto([II)V

    return-void
.end method

.method public copyInto([II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

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

    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfInt;->copyInto(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-interface {p0, p1, p2}, Ljava/util/stream/Node$OfInt;->copyInto([Ljava/lang/Integer;I)V

    return-void
.end method

.method public end()V
    .locals 2

    sget-boolean v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "was not building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    return-void
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public forEach(Ljava/util/function/IntConsumer;)V
    .locals 2

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

    :cond_1
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->forEach(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic getChild(I)Ljava/util/stream/Node;
    .locals 1

    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfPrimitive;->getChild(I)Ljava/util/stream/Node$OfPrimitive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->newArray(I)[I

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator$OfInt;
    .locals 2

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

    :cond_1
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfPrimitive;
    .locals 1

    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfInt;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 1

    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfInt;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0
.end method
