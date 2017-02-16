.class Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;
.super Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/SpinedBuffer$OfPrimitive",
        "<",
        "Ljava/lang/Integer;",
        "[I",
        "Ljava/util/function/IntConsumer;",
        ">.BaseSpliterator<",
        "Ljava/util/Spliterator$OfInt;",
        ">;",
        "Ljava/util/Spliterator$OfInt;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/SpinedBuffer$OfInt;


# direct methods
.method constructor <init>(Ljava/util/stream/SpinedBuffer$OfInt;IIII)V
    .locals 0
    .param p2, "firstSpineIndex"    # I
    .param p3, "lastSpineIndex"    # I
    .param p4, "firstSpineElementIndex"    # I
    .param p5, "lastSpineElementFence"    # I

    .prologue
    .line 793
    .local p1, "this$1":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    iput-object p1, p0, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;->this$1:Ljava/util/stream/SpinedBuffer$OfInt;

    .line 795
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;-><init>(Ljava/util/stream/SpinedBuffer$OfPrimitive;IIII)V

    .line 794
    return-void
.end method


# virtual methods
.method bridge synthetic arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "consumer"    # Ljava/lang/Object;

    .prologue
    .line 807
    check-cast p1, [I

    .end local p1    # "array":Ljava/lang/Object;
    check-cast p3, Ljava/util/function/IntConsumer;

    .end local p3    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;->arrayForOne([IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method arrayForOne([IILjava/util/function/IntConsumer;)V
    .locals 1
    .param p1, "array"    # [I
    .param p2, "index"    # I
    .param p3, "consumer"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 808
    aget v0, p1, p2

    invoke-interface {p3, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 807
    return-void
.end method

.method arraySpliterator([III)Ljava/util/Spliterator$OfInt;
    .locals 1
    .param p1, "array"    # [I
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 813
    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->spliterator([III)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic arraySpliterator(Ljava/lang/Object;II)Ljava/util/Spliterator$OfPrimitive;
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 812
    check-cast p1, [I

    .end local p1    # "array":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;->arraySpliterator([III)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 0
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

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
    .line 800
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;->newSpliterator(IIII)Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;

    move-result-object v0

    return-object v0
.end method

.method newSpliterator(IIII)Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;
    .locals 6
    .param p1, "firstSpineIndex"    # I
    .param p2, "lastSpineIndex"    # I
    .param p3, "firstSpineElementIndex"    # I
    .param p4, "lastSpineElementFence"    # I

    .prologue
    .line 802
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;->this$1:Ljava/util/stream/SpinedBuffer$OfInt;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer$OfInt;IIII)V

    return-object v0
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 653
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfInt;
    .locals 1

    .prologue
    .line 694
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->trySplit()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfInt;

    return-object v0
.end method
