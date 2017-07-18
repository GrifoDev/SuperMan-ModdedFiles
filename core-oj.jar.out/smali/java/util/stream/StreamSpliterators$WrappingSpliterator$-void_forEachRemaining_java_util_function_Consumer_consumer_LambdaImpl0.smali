.class final synthetic Ljava/util/stream/StreamSpliterators$WrappingSpliterator$-void_forEachRemaining_java_util_function_Consumer_consumer_LambdaImpl0;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/stream/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$WrappingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_forEachRemaining_java_util_function_Consumer_consumer_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$-lambdaCtx:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator$-void_forEachRemaining_java_util_function_Consumer_consumer_LambdaImpl0;->val$-lambdaCtx:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator$-void_forEachRemaining_java_util_function_Consumer_consumer_LambdaImpl0;->val$-lambdaCtx:Ljava/util/function/Consumer;

    invoke-static {v0, p1}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->-java_util_stream_StreamSpliterators$WrappingSpliterator-mthref-1(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
