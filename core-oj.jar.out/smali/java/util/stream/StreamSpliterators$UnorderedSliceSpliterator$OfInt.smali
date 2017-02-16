.class final Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;
.super Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/util/function/IntConsumer;",
        "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfInt;",
        "Ljava/util/Spliterator$OfInt;",
        ">;",
        "Ljava/util/Spliterator$OfInt;",
        "Ljava/util/function/IntConsumer;"
    }
.end annotation


# instance fields
.field tmpValue:I


# direct methods
.method constructor <init>(Ljava/util/Spliterator$OfInt;JJ)V
    .locals 0
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;
    .param p2, "skip"    # J
    .param p4, "limit"    # J

    .prologue
    .line 1136
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJ)V

    .line 1135
    return-void
.end method

.method constructor <init>(Ljava/util/Spliterator$OfInt;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;)V
    .locals 0
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;
    .param p2, "parent"    # Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;

    .prologue
    .line 1140
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;)V

    .line 1139
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 1145
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    iput p1, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->tmpValue:I

    .line 1144
    return-void
.end method

.method protected bridge synthetic acceptConsumed(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 1149
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    check-cast p1, Ljava/util/function/IntConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->acceptConsumed(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method protected acceptConsumed(Ljava/util/function/IntConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 1150
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    iget v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->tmpValue:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1149
    return-void
.end method

.method protected bufferCreate(I)Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfInt;
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 1155
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfInt;

    invoke-direct {v0, p1}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfInt;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic bufferCreate(I)Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 1154
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->bufferCreate(I)Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 0
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 1098
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method protected makeSpliterator(Ljava/util/Spliterator$OfInt;)Ljava/util/Spliterator$OfInt;
    .locals 1
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;

    .prologue
    .line 1160
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;

    invoke-direct {v0, p1, p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;-><init>(Ljava/util/Spliterator$OfInt;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;)V

    return-object v0
.end method

.method protected bridge synthetic makeSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .locals 1
    .param p1, "s"    # Ljava/util/Spliterator;

    .prologue
    .line 1159
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    check-cast p1, Ljava/util/Spliterator$OfInt;

    .end local p1    # "s":Ljava/util/Spliterator;
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->makeSpliterator(Ljava/util/Spliterator$OfInt;)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 1
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 1079
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfInt;
    .locals 1

    .prologue
    .line 971
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfInt;

    return-object v0
.end method
