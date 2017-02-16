.class Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;
.super Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/SpinedBuffer$OfPrimitive",
        "<",
        "Ljava/lang/Long;",
        "[J",
        "Ljava/util/function/LongConsumer;",
        ">.BaseSpliterator<",
        "Ljava/util/Spliterator$OfLong;",
        ">;",
        "Ljava/util/Spliterator$OfLong;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/SpinedBuffer$OfLong;


# direct methods
.method constructor <init>(Ljava/util/stream/SpinedBuffer$OfLong;IIII)V
    .locals 0
    .param p2, "firstSpineIndex"    # I
    .param p3, "lastSpineIndex"    # I
    .param p4, "firstSpineElementIndex"    # I
    .param p5, "lastSpineElementFence"    # I

    .prologue
    .line 908
    .local p1, "this$1":Ljava/util/stream/SpinedBuffer$OfLong;, "Ljava/util/stream/SpinedBuffer<TE;>.OfLong;"
    iput-object p1, p0, Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;->this$1:Ljava/util/stream/SpinedBuffer$OfLong;

    .line 910
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;-><init>(Ljava/util/stream/SpinedBuffer$OfPrimitive;IIII)V

    .line 909
    return-void
.end method


# virtual methods
.method bridge synthetic arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "consumer"    # Ljava/lang/Object;

    .prologue
    .line 922
    check-cast p1, [J

    .end local p1    # "array":Ljava/lang/Object;
    check-cast p3, Ljava/util/function/LongConsumer;

    .end local p3    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;->arrayForOne([JILjava/util/function/LongConsumer;)V

    return-void
.end method

.method arrayForOne([JILjava/util/function/LongConsumer;)V
    .locals 2
    .param p1, "array"    # [J
    .param p2, "index"    # I
    .param p3, "consumer"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 923
    aget-wide v0, p1, p2

    invoke-interface {p3, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 922
    return-void
.end method

.method arraySpliterator([JII)Ljava/util/Spliterator$OfLong;
    .locals 1
    .param p1, "array"    # [J
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 928
    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->spliterator([JII)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic arraySpliterator(Ljava/lang/Object;II)Ljava/util/Spliterator$OfPrimitive;
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 927
    check-cast p1, [J

    .end local p1    # "array":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;->arraySpliterator([JII)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 0
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 672
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method bridge synthetic newSpliterator(IIII)Ljava/util/Spliterator$OfPrimitive;
    .locals 1
    .param p1, "firstSpineIndex"    # I
    .param p2, "lastSpineIndex"    # I
    .param p3, "firstSpineElementIndex"    # I
    .param p4, "lastSpineElementFence"    # I

    .prologue
    .line 915
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;->newSpliterator(IIII)Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;

    move-result-object v0

    return-object v0
.end method

.method newSpliterator(IIII)Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;
    .locals 6
    .param p1, "firstSpineIndex"    # I
    .param p2, "lastSpineIndex"    # I
    .param p3, "firstSpineElementIndex"    # I
    .param p4, "lastSpineElementFence"    # I

    .prologue
    .line 917
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;->this$1:Ljava/util/stream/SpinedBuffer$OfLong;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer$OfLong;IIII)V

    return-object v0
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 653
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfLong;
    .locals 1

    .prologue
    .line 694
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->trySplit()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfLong;

    return-object v0
.end method
