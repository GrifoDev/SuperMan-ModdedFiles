.class final synthetic Ljava/util/stream/Nodes$CollectorTask$OfRef$-void__init__java_util_stream_PipelineHelper_helper_java_util_function_IntFunction_generator_java_util_Spliterator_spliterator_LambdaImpl0;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava/util/function/LongFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$CollectorTask$OfRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void__init__java_util_stream_PipelineHelper_helper_java_util_function_IntFunction_generator_java_util_Spliterator_spliterator_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$generator:Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/IntFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Nodes$CollectorTask$OfRef$-void__init__java_util_stream_PipelineHelper_helper_java_util_function_IntFunction_generator_java_util_Spliterator_spliterator_LambdaImpl0;->val$generator:Ljava/util/function/IntFunction;

    return-void
.end method


# virtual methods
.method public apply(J)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/stream/Nodes$CollectorTask$OfRef$-void__init__java_util_stream_PipelineHelper_helper_java_util_function_IntFunction_generator_java_util_Spliterator_spliterator_LambdaImpl0;->val$generator:Ljava/util/function/IntFunction;

    invoke-static {v0, p1, p2}, Ljava/util/stream/Nodes$CollectorTask$OfRef;->-java_util_stream_Nodes$CollectorTask$OfRef_lambda$1(Ljava/util/function/IntFunction;J)Ljava/util/stream/Node$Builder;

    move-result-object v0

    return-object v0
.end method
