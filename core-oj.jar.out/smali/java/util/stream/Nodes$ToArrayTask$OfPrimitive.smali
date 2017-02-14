.class Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;
.super Ljava/util/stream/Nodes$ToArrayTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$ToArrayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_ARR:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava/util/Spliterator$OfPrimitive",
        "<TT;TT_CONS;TT_SP",
        "LITR;",
        ">;T_NODE::",
        "Ljava/util/stream/Node$OfPrimitive",
        "<TT;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TT_NODE;>;>",
        "Ljava/util/stream/Nodes$ToArrayTask",
        "<TT;TT_NODE;",
        "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive",
        "<TT;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TT_NODE;>;>;"
    }
.end annotation


# instance fields
.field private final array:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_ARR;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/stream/Node$OfPrimitive;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_NODE;TT_ARR;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Ljava/util/stream/Nodes$ToArrayTask;-><init>(Ljava/util/stream/Node;I)V

    iput-object p2, p0, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;->array:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/stream/Node$OfPrimitive;Ljava/lang/Object;ILjava/util/stream/Nodes$ToArrayTask$OfPrimitive;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;-><init>(Ljava/util/stream/Node$OfPrimitive;Ljava/lang/Object;I)V

    return-void
.end method

.method private constructor <init>(Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;Ljava/util/stream/Node$OfPrimitive;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive",
            "<TT;TT_CONS;TT_ARR;TT_SP",
            "LITR;",
            "TT_NODE;>;TT_NODE;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/Nodes$ToArrayTask;-><init>(Ljava/util/stream/Nodes$ToArrayTask;Ljava/util/stream/Node;I)V

    iget-object v0, p1, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;->array:Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;->array:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method copyNodeToArray()V
    .locals 3

    iget-object v0, p0, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    check-cast v0, Ljava/util/stream/Node$OfPrimitive;

    iget-object v1, p0, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;->array:Ljava/lang/Object;

    iget v2, p0, Ljava/util/stream/Nodes$ToArrayTask;->offset:I

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Node$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    return-void
.end method

.method makeChild(II)Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive",
            "<TT;TT_CONS;TT_ARR;TT_SP",
            "LITR;",
            "TT_NODE;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;

    iget-object v0, p0, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    check-cast v0, Ljava/util/stream/Node$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/stream/Node$OfPrimitive;->getChild(I)Ljava/util/stream/Node$OfPrimitive;

    move-result-object v0

    invoke-direct {v1, p0, v0, p2}, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;-><init>(Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;Ljava/util/stream/Node$OfPrimitive;I)V

    return-object v1
.end method

.method bridge synthetic makeChild(II)Ljava/util/stream/Nodes$ToArrayTask;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;->makeChild(II)Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;

    move-result-object v0

    return-object v0
.end method
