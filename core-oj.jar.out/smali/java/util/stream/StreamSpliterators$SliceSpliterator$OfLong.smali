.class final Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;
.super Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$SliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong$-java_util_function_LongConsumer_emptyConsumer__LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive",
        "<",
        "Ljava/lang/Long;",
        "Ljava/util/Spliterator$OfLong;",
        "Ljava/util/function/LongConsumer;",
        ">;",
        "Ljava/util/Spliterator$OfLong;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_StreamSpliterators$SliceSpliterator$OfLong_lambda$16(J)V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/util/Spliterator$OfLong;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJ)V

    return-void
.end method

.method constructor <init>(Ljava/util/Spliterator$OfLong;JJJJ)V
    .locals 12

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJJJLjava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic emptyConsumer()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;->emptyConsumer()Ljava/util/function/LongConsumer;

    move-result-object v0

    return-object v0
.end method

.method protected emptyConsumer()Ljava/util/function/LongConsumer;
    .locals 1

    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong$-java_util_function_LongConsumer_emptyConsumer__LambdaImpl0;

    invoke-direct {v0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong$-java_util_function_LongConsumer_emptyConsumer__LambdaImpl0;-><init>()V

    return-object v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method protected makeSpliterator(Ljava/util/Spliterator$OfLong;JJJJ)Ljava/util/Spliterator$OfLong;
    .locals 10

    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;-><init>(Ljava/util/Spliterator$OfLong;JJJJ)V

    return-object v0
.end method

.method protected bridge synthetic makeSpliterator(Ljava/util/Spliterator;JJJJ)Ljava/util/Spliterator;
    .locals 10

    move-object v1, p1

    check-cast v1, Ljava/util/Spliterator$OfLong;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;->makeSpliterator(Ljava/util/Spliterator$OfLong;JJJJ)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfLong;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfLong;

    return-object v0
.end method
