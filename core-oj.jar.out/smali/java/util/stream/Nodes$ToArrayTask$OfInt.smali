.class final Ljava/util/stream/Nodes$ToArrayTask$OfInt;
.super Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$ToArrayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/util/function/IntConsumer;",
        "[I",
        "Ljava/util/Spliterator$OfInt;",
        "Ljava/util/stream/Node$OfInt;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/stream/Node$OfInt;[II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;-><init>(Ljava/util/stream/Node$OfPrimitive;Ljava/lang/Object;ILjava/util/stream/Nodes$ToArrayTask$OfPrimitive;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/stream/Node$OfInt;[IILjava/util/stream/Nodes$ToArrayTask$OfInt;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/Nodes$ToArrayTask$OfInt;-><init>(Ljava/util/stream/Node$OfInt;[II)V

    return-void
.end method
