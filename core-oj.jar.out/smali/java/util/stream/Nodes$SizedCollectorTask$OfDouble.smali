.class final Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;
.super Ljava/util/stream/Nodes$SizedCollectorTask;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$SizedCollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$SizedCollectorTask",
        "<TP_IN;",
        "Ljava/lang/Double;",
        "Ljava/util/stream/Sink$OfDouble;",
        "Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble",
        "<TP_IN;>;>;",
        "Ljava/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field private final array:[D


# direct methods
.method constructor <init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[D)V
    .locals 1
    .param p3, "array"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Double;",
            ">;[D)V"
        }
    .end annotation

    .prologue
    .line 1998
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>.OfDouble<TP_IN;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p2, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    array-length v0, p3

    invoke-direct {p0, p1, p2, v0}, Ljava/util/stream/Nodes$SizedCollectorTask;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;I)V

    .line 1999
    iput-object p3, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;->array:[D

    .line 1997
    return-void
.end method

.method constructor <init>(Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;Ljava/util/Spliterator;JJ)V
    .locals 9
    .param p3, "offset"    # J
    .param p5, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble",
            "<TP_IN;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;JJ)V"
        }
    .end annotation

    .prologue
    .line 2004
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>.OfDouble<TP_IN;>;"
    .local p1, "parent":Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble<TP_IN;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    iget-object v0, p1, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;->array:[D

    array-length v8, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Ljava/util/stream/Nodes$SizedCollectorTask;-><init>(Ljava/util/stream/Nodes$SizedCollectorTask;Ljava/util/Spliterator;JJI)V

    .line 2005
    iget-object v0, p1, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;->array:[D

    iput-object v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;->array:[D

    .line 2003
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 2016
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>.OfDouble<TP_IN;>;"
    iget v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->index:I

    iget v1, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->fence:I

    if-lt v0, v1, :cond_0

    .line 2017
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v1, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2019
    :cond_0
    iget-object v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;->array:[D

    iget v1, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->index:I

    aput-wide p1, v0, v1

    .line 2015
    return-void
.end method

.method makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;
    .locals 8
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;JJ)",
            "Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble",
            "<TP_IN;>;"
        }
    .end annotation

    .prologue
    .line 2011
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>.OfDouble<TP_IN;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v1, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;-><init>(Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;Ljava/util/Spliterator;JJ)V

    return-object v1
.end method

.method bridge synthetic makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask;
    .locals 2
    .param p1, "spliterator"    # Ljava/util/Spliterator;
    .param p2, "offset"    # J
    .param p4, "size"    # J

    .prologue
    .line 2009
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>.OfDouble<TP_IN;>;"
    invoke-virtual/range {p0 .. p5}, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;->makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;

    move-result-object v0

    return-object v0
.end method
