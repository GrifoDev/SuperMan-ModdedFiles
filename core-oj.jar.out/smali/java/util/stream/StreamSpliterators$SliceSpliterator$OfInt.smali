.class final Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;
.super Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$SliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt$-java_util_function_IntConsumer_emptyConsumer__LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/util/Spliterator$OfInt;",
        "Ljava/util/function/IntConsumer;",
        ">;",
        "Ljava/util/Spliterator$OfInt;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_StreamSpliterators$SliceSpliterator$OfInt_lambda$15(I)V
    .locals 0
    .param p0, "e"    # I

    .prologue
    .line 0
    return-void
.end method

.method constructor <init>(Ljava/util/Spliterator$OfInt;JJ)V
    .locals 0
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J

    .prologue
    .line 823
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJ)V

    .line 822
    return-void
.end method

.method constructor <init>(Ljava/util/Spliterator$OfInt;JJJJ)V
    .locals 12
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J

    .prologue
    .line 828
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJJJLjava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;)V

    .line 827
    return-void
.end method


# virtual methods
.method protected bridge synthetic emptyConsumer()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 839
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;->emptyConsumer()Ljava/util/function/IntConsumer;

    move-result-object v0

    return-object v0
.end method

.method protected emptyConsumer()Ljava/util/function/IntConsumer;
    .locals 1

    .prologue
    .line 840
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt$-java_util_function_IntConsumer_emptyConsumer__LambdaImpl0;

    invoke-direct {v0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt$-java_util_function_IntConsumer_emptyConsumer__LambdaImpl0;-><init>()V

    return-object v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 0
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 791
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method protected makeSpliterator(Ljava/util/Spliterator$OfInt;JJJJ)Ljava/util/Spliterator$OfInt;
    .locals 10
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J

    .prologue
    .line 835
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;-><init>(Ljava/util/Spliterator$OfInt;JJJJ)V

    return-object v0
.end method

.method protected bridge synthetic makeSpliterator(Ljava/util/Spliterator;JJJJ)Ljava/util/Spliterator;
    .locals 10
    .param p1, "s"    # Ljava/util/Spliterator;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J

    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    move-object v1, p1

    .line 832
    check-cast v1, Ljava/util/Spliterator$OfInt;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;->makeSpliterator(Ljava/util/Spliterator$OfInt;JJJJ)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 1
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 772
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfInt;
    .locals 1

    .prologue
    .line 634
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfInt;

    return-object v0
.end method
