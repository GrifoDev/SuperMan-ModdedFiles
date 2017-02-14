.class Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;
.super Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/SpinedBuffer$OfDouble;->spliterator()Ljava/util/Spliterator$OfDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/SpinedBuffer$OfPrimitive",
        "<",
        "Ljava/lang/Double;",
        "[D",
        "Ljava/util/function/DoubleConsumer;",
        ">.BaseSpliterator<",
        "Ljava/util/Spliterator$OfDouble;",
        ">;",
        "Ljava/util/Spliterator$OfDouble;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/SpinedBuffer$OfDouble;


# direct methods
.method constructor <init>(Ljava/util/stream/SpinedBuffer$OfDouble;IIII)V
    .locals 0

    iput-object p1, p0, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;->this$1:Ljava/util/stream/SpinedBuffer$OfDouble;

    invoke-direct/range {p0 .. p5}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;-><init>(Ljava/util/stream/SpinedBuffer$OfPrimitive;IIII)V

    return-void
.end method


# virtual methods
.method bridge synthetic arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, [D

    check-cast p3, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;->arrayForOne([DILjava/util/function/DoubleConsumer;)V

    return-void
.end method

.method arrayForOne([DILjava/util/function/DoubleConsumer;)V
    .locals 2

    aget-wide v0, p1, p2

    invoke-interface {p3, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    return-void
.end method

.method arraySpliterator([DII)Ljava/util/Spliterator$OfDouble;
    .locals 1

    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->spliterator([DII)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic arraySpliterator(Ljava/lang/Object;II)Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    check-cast p1, [D

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;->arraySpliterator([DII)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method bridge synthetic newSpliterator(IIII)Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;->newSpliterator(IIII)Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;

    move-result-object v0

    return-object v0
.end method

.method newSpliterator(IIII)Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;
    .locals 6

    new-instance v0, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;->this$1:Ljava/util/stream/SpinedBuffer$OfDouble;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer$OfDouble;IIII)V

    return-object v0
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfDouble;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->trySplit()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfDouble;

    return-object v0
.end method
