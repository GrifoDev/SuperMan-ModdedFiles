.class final synthetic Ljava/util/stream/DoublePipeline$-java_util_function_DoubleConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;
.super Ljava/lang/Object;
.source "DoublePipeline.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/DoublePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_DoubleConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$-lambdaCtx:Ljava/util/stream/Sink;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/Sink;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/DoublePipeline$-java_util_function_DoubleConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;->val$-lambdaCtx:Ljava/util/stream/Sink;

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1

    iget-object v0, p0, Ljava/util/stream/DoublePipeline$-java_util_function_DoubleConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;->val$-lambdaCtx:Ljava/util/stream/Sink;

    invoke-static {v0, p1, p2}, Ljava/util/stream/DoublePipeline;->-java_util_stream_DoublePipeline-mthref-0(Ljava/util/stream/Sink;D)V

    return-void
.end method
