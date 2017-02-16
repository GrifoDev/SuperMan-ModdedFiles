.class Ljava/util/stream/Nodes$DoubleArrayNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleArrayNode"
.end annotation


# instance fields
.field final array:[D

.field curSize:I


# direct methods
.method constructor <init>(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 1426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1427
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1429
    :cond_0
    long-to-int v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    .line 1430
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    .line 1426
    return-void
.end method

.method constructor <init>([D)V
    .locals 1
    .param p1, "array"    # [D

    .prologue
    .line 1433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1434
    iput-object p1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    .line 1435
    array-length v0, p1

    iput v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    .line 1433
    return-void
.end method


# virtual methods
.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1444
    invoke-virtual {p0}, Ljava/util/stream/Nodes$DoubleArrayNode;->asPrimitiveArray()[D

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[D
    .locals 2

    .prologue
    .line 1445
    iget-object v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    array-length v0, v0

    iget v1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    if-ne v0, v1, :cond_0

    .line 1446
    iget-object v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    return-object v0

    .line 1448
    :cond_0
    iget-object v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    iget v1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copyInto(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "dest"    # Ljava/lang/Object;
    .param p2, "destOffset"    # I

    .prologue
    .line 1453
    check-cast p1, [D

    .end local p1    # "dest":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$DoubleArrayNode;->copyInto([DI)V

    return-void
.end method

.method public copyInto([DI)V
    .locals 3
    .param p1, "dest"    # [D
    .param p2, "destOffset"    # I

    .prologue
    .line 1454
    iget-object v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    iget v1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 1453
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

.method public count()J
    .locals 2

    .prologue
    .line 1459
    iget v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0
    .param p1, "consumer"    # Ljava/lang/Object;

    .prologue
    .line 1463
    check-cast p1, Ljava/util/function/DoubleConsumer;

    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$DoubleArrayNode;->forEach(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEach(Ljava/util/function/DoubleConsumer;)V
    .locals 4
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .prologue
    .line 1464
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    if-ge v0, v1, :cond_0

    .line 1465
    iget-object v1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    aget-wide v2, v1, v0

    invoke-interface {p1, v2, v3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 1464
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1463
    :cond_0
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
    .param p1, "count"    # I

    .prologue
    .line 518
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfDouble;->newArray(I)[D

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator$OfDouble;
    .locals 3

    .prologue
    .line 1440
    iget-object v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    iget v1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->spliterator([DII)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    .prologue
    .line 1439
    invoke-virtual {p0}, Ljava/util/stream/Nodes$DoubleArrayNode;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .prologue
    .line 1439
    invoke-virtual {p0}, Ljava/util/stream/Nodes$DoubleArrayNode;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1471
    const-string/jumbo v0, "DoubleArrayNode[%d][%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 1472
    iget-object v2, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    array-length v2, v2

    iget v3, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    invoke-static {v2}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1471
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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
