.class Ljava/util/stream/Nodes$IntArrayNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntArrayNode"
.end annotation


# instance fields
.field final array:[I

.field curSize:I


# direct methods
.method constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    long-to-int v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    return-void
.end method

.method constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    array-length v0, p1

    iput v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    return-void
.end method


# virtual methods
.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntArrayNode;->asPrimitiveArray()[I

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[I
    .locals 2

    iget-object v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    array-length v0, v0

    iget v1, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    iget v1, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copyInto(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$IntArrayNode;->copyInto([II)V

    return-void
.end method

.method public copyInto([II)V
    .locals 3

    iget-object v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    iget v1, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-interface {p0, p1, p2}, Ljava/util/stream/Node$OfInt;->copyInto([Ljava/lang/Integer;I)V

    return-void
.end method

.method public count()J
    .locals 2

    iget v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$IntArrayNode;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public forEach(Ljava/util/function/IntConsumer;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
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

    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfInt;->newArray(I)[I

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator$OfInt;
    .locals 3

    iget-object v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    iget v1, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->spliterator([III)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntArrayNode;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntArrayNode;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "IntArrayNode[%d][%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    array-length v2, v2

    iget v3, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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
