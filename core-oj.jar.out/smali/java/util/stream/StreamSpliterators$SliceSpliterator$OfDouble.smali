.class final Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;
.super Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$SliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble$-java_util_function_DoubleConsumer_emptyConsumer__LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive",
        "<",
        "Ljava/lang/Double;",
        "Ljava/util/Spliterator$OfDouble;",
        "Ljava/util/function/DoubleConsumer;",
        ">;",
        "Ljava/util/Spliterator$OfDouble;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_StreamSpliterators$SliceSpliterator$OfDouble_lambda$17(D)V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/util/Spliterator$OfDouble;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJ)V

    return-void
.end method

.method constructor <init>(Ljava/util/Spliterator$OfDouble;JJJJ)V
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

    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;->emptyConsumer()Ljava/util/function/DoubleConsumer;

    move-result-object v0

    return-object v0
.end method

.method protected emptyConsumer()Ljava/util/function/DoubleConsumer;
    .locals 1

    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble$-java_util_function_DoubleConsumer_emptyConsumer__LambdaImpl0;

    invoke-direct {v0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble$-java_util_function_DoubleConsumer_emptyConsumer__LambdaImpl0;-><init>()V

    return-object v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method protected makeSpliterator(Ljava/util/Spliterator$OfDouble;JJJJ)Ljava/util/Spliterator$OfDouble;
    .locals 10

    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;-><init>(Ljava/util/Spliterator$OfDouble;JJJJ)V

    return-object v0
.end method

.method protected bridge synthetic makeSpliterator(Ljava/util/Spliterator;JJJJ)Ljava/util/Spliterator;
    .locals 10

    move-object v1, p1

    check-cast v1, Ljava/util/Spliterator$OfDouble;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;->makeSpliterator(Ljava/util/Spliterator$OfDouble;JJJJ)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfDouble;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfDouble;

    return-object v0
.end method
