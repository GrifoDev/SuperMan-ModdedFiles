.class final Ljava/util/stream/Nodes$ToArrayTask$OfRef;
.super Ljava/util/stream/Nodes$ToArrayTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$ToArrayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$ToArrayTask",
        "<TT;",
        "Ljava/util/stream/Node",
        "<TT;>;",
        "Ljava/util/stream/Nodes$ToArrayTask$OfRef",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/stream/Node;[Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Node",
            "<TT;>;[TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Ljava/util/stream/Nodes$ToArrayTask;-><init>(Ljava/util/stream/Node;I)V

    iput-object p2, p0, Ljava/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/stream/Node;[Ljava/lang/Object;ILjava/util/stream/Nodes$ToArrayTask$OfRef;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Ljava/util/stream/Node;[Ljava/lang/Object;I)V

    return-void
.end method

.method private constructor <init>(Ljava/util/stream/Nodes$ToArrayTask$OfRef;Ljava/util/stream/Node;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Nodes$ToArrayTask$OfRef",
            "<TT;>;",
            "Ljava/util/stream/Node",
            "<TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/Nodes$ToArrayTask;-><init>(Ljava/util/stream/Nodes$ToArrayTask;Ljava/util/stream/Node;I)V

    iget-object v0, p1, Ljava/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method copyNodeToArray()V
    .locals 3

    iget-object v0, p0, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    iget-object v1, p0, Ljava/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/stream/Nodes$ToArrayTask;->offset:I

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    return-void
.end method

.method makeChild(II)Ljava/util/stream/Nodes$ToArrayTask$OfRef;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/stream/Nodes$ToArrayTask$OfRef",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Nodes$ToArrayTask$OfRef;

    iget-object v1, p0, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    invoke-interface {v1, p1}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Ljava/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Ljava/util/stream/Nodes$ToArrayTask$OfRef;Ljava/util/stream/Node;I)V

    return-object v0
.end method

.method bridge synthetic makeChild(II)Ljava/util/stream/Nodes$ToArrayTask;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$ToArrayTask$OfRef;->makeChild(II)Ljava/util/stream/Nodes$ToArrayTask$OfRef;

    move-result-object v0

    return-object v0
.end method
