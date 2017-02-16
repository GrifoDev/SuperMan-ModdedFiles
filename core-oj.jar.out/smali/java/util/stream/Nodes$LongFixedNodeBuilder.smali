.class final Ljava/util/stream/Nodes$LongFixedNodeBuilder;
.super Ljava/util/stream/Nodes$LongArrayNode;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$Builder$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongFixedNodeBuilder"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/util/stream/Nodes$LongFixedNodeBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/stream/Nodes$LongFixedNodeBuilder;->-assertionsDisabled:Z

    .line 1530
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 1535
    invoke-direct {p0, p1, p2}, Ljava/util/stream/Nodes$LongArrayNode;-><init>(J)V

    .line 1536
    sget-boolean v0, Ljava/util/stream/Nodes$LongFixedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1534
    :cond_1
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 5
    .param p1, "i"    # J

    .prologue
    .line 1561
    iget v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    iget-object v1, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1562
    iget-object v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    iget v1, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    aput-wide p1, v0, v1

    .line 1560
    return-void

    .line 1564
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Accept exceeded fixed size of %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1565
    iget-object v3, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1564
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;

    .prologue
    .line 212
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "i":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfLong;->accept(Ljava/lang/Long;)V

    return-void
.end method

.method public begin(J)V
    .locals 5
    .param p1, "size"    # J

    .prologue
    const/4 v4, 0x0

    .line 1551
    iget-object v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1552
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Begin size %d is not equal to fixed size %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1553
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 1552
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1556
    :cond_0
    iput v4, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    .line 1550
    return-void
.end method

.method public build()Ljava/util/stream/Node$OfLong;
    .locals 5

    .prologue
    .line 1541
    iget v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    iget-object v1, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1542
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Current size %d is less than fixed size %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1543
    iget v3, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 1542
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1546
    :cond_0
    return-object p0
.end method

.method public bridge synthetic build()Ljava/util/stream/Node;
    .locals 1

    .prologue
    .line 1540
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongFixedNodeBuilder;->build()Ljava/util/stream/Node$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 5

    .prologue
    .line 1571
    iget v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    iget-object v1, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1572
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "End size %d is less than fixed size %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1573
    iget v3, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 1572
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1570
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1579
    const-string/jumbo v0, "LongFixedNodeBuilder[%d][%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 1580
    iget-object v2, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v2, v2

    iget v3, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1579
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
