.class final Ljava/util/stream/Nodes$FixedNodeBuilder;
.super Ljava/util/stream/Nodes$ArrayNode;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FixedNodeBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$ArrayNode",
        "<TT;>;",
        "Ljava/util/stream/Node$Builder",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/util/stream/Nodes$FixedNodeBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/stream/Nodes$FixedNodeBuilder;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(JLjava/util/function/IntFunction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/Nodes$ArrayNode;-><init>(JLjava/util/function/IntFunction;)V

    sget-boolean v0, Ljava/util/stream/Nodes$FixedNodeBuilder;->-assertionsDisabled:Z

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

    :cond_1
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    iget-object v1, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    aput-object p1, v0, v1

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Accept exceeded fixed size of %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public begin(J)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Begin size %d is not equal to fixed size %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput v4, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    return-void
.end method

.method public build()Ljava/util/stream/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    iget v0, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    iget-object v1, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Current size %d is less than fixed size %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method

.method public end()V
    .locals 5

    iget v0, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    iget-object v1, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "End size %d is less than fixed size %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "FixedNodeBuilder[%d][%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    array-length v2, v2

    iget v3, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
