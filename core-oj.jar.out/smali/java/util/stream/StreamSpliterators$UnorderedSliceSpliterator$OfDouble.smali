.class final Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;
.super Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;
.implements Ljava/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive",
        "<",
        "Ljava/lang/Double;",
        "Ljava/util/function/DoubleConsumer;",
        "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;",
        "Ljava/util/Spliterator$OfDouble;",
        ">;",
        "Ljava/util/Spliterator$OfDouble;",
        "Ljava/util/function/DoubleConsumer;"
    }
.end annotation


# instance fields
.field tmpValue:D


# direct methods
.method constructor <init>(Ljava/util/Spliterator$OfDouble;JJ)V
    .locals 0
    .param p1, "s"    # Ljava/util/Spliterator$OfDouble;
    .param p2, "skip"    # J
    .param p4, "limit"    # J

    .prologue
    .line 1206
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfDouble;"
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJ)V

    .line 1205
    return-void
.end method

.method constructor <init>(Ljava/util/Spliterator$OfDouble;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;)V
    .locals 0
    .param p1, "s"    # Ljava/util/Spliterator$OfDouble;
    .param p2, "parent"    # Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;

    .prologue
    .line 1210
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfDouble;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;)V

    .line 1209
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 1215
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfDouble;"
    iput-wide p1, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;->tmpValue:D

    .line 1214
    return-void
.end method

.method protected bridge synthetic acceptConsumed(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 1219
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfDouble;"
    check-cast p1, Ljava/util/function/DoubleConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;->acceptConsumed(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method protected acceptConsumed(Ljava/util/function/DoubleConsumer;)V
    .locals 2
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .prologue
    .line 1220
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfDouble;"
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;->tmpValue:D

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 1219
    return-void
.end method

.method protected bufferCreate(I)Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 1225
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfDouble;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;

    invoke-direct {v0, p1}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic bufferCreate(I)Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 1224
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfDouble;"
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;->bufferCreate(I)Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 0
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .prologue
    .line 1098
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfDouble;"
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method protected makeSpliterator(Ljava/util/Spliterator$OfDouble;)Ljava/util/Spliterator$OfDouble;
    .locals 1
    .param p1, "s"    # Ljava/util/Spliterator$OfDouble;

    .prologue
    .line 1230
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfDouble;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;

    invoke-direct {v0, p1, p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;-><init>(Ljava/util/Spliterator$OfDouble;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;)V

    return-object v0
.end method

.method protected bridge synthetic makeSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .locals 1
    .param p1, "s"    # Ljava/util/Spliterator;

    .prologue
    .line 1229
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfDouble;"
    check-cast p1, Ljava/util/Spliterator$OfDouble;

    .end local p1    # "s":Ljava/util/Spliterator;
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;->makeSpliterator(Ljava/util/Spliterator$OfDouble;)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 1
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .prologue
    .line 1079
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfDouble;"
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfDouble;
    .locals 1

    .prologue
    .line 971
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfDouble;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfDouble;

    return-object v0
.end method
