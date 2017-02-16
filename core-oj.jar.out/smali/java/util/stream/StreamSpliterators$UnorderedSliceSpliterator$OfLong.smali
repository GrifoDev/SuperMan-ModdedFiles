.class final Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;
.super Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive",
        "<",
        "Ljava/lang/Long;",
        "Ljava/util/function/LongConsumer;",
        "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfLong;",
        "Ljava/util/Spliterator$OfLong;",
        ">;",
        "Ljava/util/Spliterator$OfLong;",
        "Ljava/util/function/LongConsumer;"
    }
.end annotation


# instance fields
.field tmpValue:J


# direct methods
.method constructor <init>(Ljava/util/Spliterator$OfLong;JJ)V
    .locals 0
    .param p1, "s"    # Ljava/util/Spliterator$OfLong;
    .param p2, "skip"    # J
    .param p4, "limit"    # J

    .prologue
    .line 1171
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfLong;"
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJ)V

    .line 1170
    return-void
.end method

.method constructor <init>(Ljava/util/Spliterator$OfLong;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;)V
    .locals 0
    .param p1, "s"    # Ljava/util/Spliterator$OfLong;
    .param p2, "parent"    # Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;

    .prologue
    .line 1175
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfLong;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;)V

    .line 1174
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1180
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfLong;"
    iput-wide p1, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;->tmpValue:J

    .line 1179
    return-void
.end method

.method protected bridge synthetic acceptConsumed(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 1184
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfLong;"
    check-cast p1, Ljava/util/function/LongConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;->acceptConsumed(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method protected acceptConsumed(Ljava/util/function/LongConsumer;)V
    .locals 2
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 1185
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfLong;"
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;->tmpValue:J

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 1184
    return-void
.end method

.method protected bufferCreate(I)Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfLong;
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 1190
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfLong;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfLong;

    invoke-direct {v0, p1}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfLong;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic bufferCreate(I)Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 1189
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfLong;"
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;->bufferCreate(I)Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 0
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 1098
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfLong;"
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method protected makeSpliterator(Ljava/util/Spliterator$OfLong;)Ljava/util/Spliterator$OfLong;
    .locals 1
    .param p1, "s"    # Ljava/util/Spliterator$OfLong;

    .prologue
    .line 1195
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfLong;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;

    invoke-direct {v0, p1, p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;-><init>(Ljava/util/Spliterator$OfLong;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;)V

    return-object v0
.end method

.method protected bridge synthetic makeSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .locals 1
    .param p1, "s"    # Ljava/util/Spliterator;

    .prologue
    .line 1194
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfLong;"
    check-cast p1, Ljava/util/Spliterator$OfLong;

    .end local p1    # "s":Ljava/util/Spliterator;
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;->makeSpliterator(Ljava/util/Spliterator$OfLong;)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 1
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 1079
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfLong;"
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfLong;
    .locals 1

    .prologue
    .line 971
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfLong;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfLong;

    return-object v0
.end method
