.class final synthetic Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$-void_forEachRemaining_java_util_function_LongConsumer_consumer_LambdaImpl0;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_forEachRemaining_java_util_function_LongConsumer_consumer_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$-lambdaCtx:Ljava/util/function/LongConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/LongConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$-void_forEachRemaining_java_util_function_LongConsumer_consumer_LambdaImpl0;->val$-lambdaCtx:Ljava/util/function/LongConsumer;

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$-void_forEachRemaining_java_util_function_LongConsumer_consumer_LambdaImpl0;->val$-lambdaCtx:Ljava/util/function/LongConsumer;

    invoke-static {v0, p1, p2}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->-java_util_stream_StreamSpliterators$LongWrappingSpliterator-mthref-1(Ljava/util/function/LongConsumer;J)V

    return-void
.end method
