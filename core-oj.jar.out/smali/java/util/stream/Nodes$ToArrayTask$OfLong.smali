.class final Ljava/util/stream/Nodes$ToArrayTask$OfLong;
.super Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$ToArrayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive",
        "<",
        "Ljava/lang/Long;",
        "Ljava/util/function/LongConsumer;",
        "[J",
        "Ljava/util/Spliterator$OfLong;",
        "Ljava/util/stream/Node$OfLong;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/stream/Node$OfLong;[JI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;-><init>(Ljava/util/stream/Node$OfPrimitive;Ljava/lang/Object;ILjava/util/stream/Nodes$ToArrayTask$OfPrimitive;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/stream/Node$OfLong;[JILjava/util/stream/Nodes$ToArrayTask$OfLong;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/Nodes$ToArrayTask$OfLong;-><init>(Ljava/util/stream/Node$OfLong;[JI)V

    return-void
.end method
