.class final synthetic Ljava/util/stream/ReferencePipeline$8$1$-void__init__java_util_stream_ReferencePipeline$8_this$1_java_util_stream_Sink_$anonymous0_java_util_function_Function_val$mapper_LambdaImpl0;
.super Ljava/lang/Object;
.source "ReferencePipeline.java"

# interfaces
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ReferencePipeline$8$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void__init__java_util_stream_ReferencePipeline$8_this$1_java_util_stream_Sink_$anonymous0_java_util_function_Function_val$mapper_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$-lambdaCtx:Ljava/util/stream/Sink;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/Sink;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$8$1$-void__init__java_util_stream_ReferencePipeline$8_this$1_java_util_stream_Sink_$anonymous0_java_util_function_Function_val$mapper_LambdaImpl0;->val$-lambdaCtx:Ljava/util/stream/Sink;

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1

    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$8$1$-void__init__java_util_stream_ReferencePipeline$8_this$1_java_util_stream_Sink_$anonymous0_java_util_function_Function_val$mapper_LambdaImpl0;->val$-lambdaCtx:Ljava/util/stream/Sink;

    invoke-static {v0, p1}, Ljava/util/stream/ReferencePipeline$8$1;->-java_util_stream_ReferencePipeline$8$1-mthref-0(Ljava/util/stream/Sink;I)V

    return-void
.end method
