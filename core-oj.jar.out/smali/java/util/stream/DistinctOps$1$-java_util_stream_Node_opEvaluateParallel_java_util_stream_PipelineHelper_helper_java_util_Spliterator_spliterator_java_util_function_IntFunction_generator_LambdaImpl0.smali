.class final synthetic Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_opEvaluateParallel_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_java_util_function_IntFunction_generator_LambdaImpl0;
.super Ljava/lang/Object;
.source "DistinctOps.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/DistinctOps$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_Node_opEvaluateParallel_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_java_util_function_IntFunction_generator_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$map:Ljava/util/concurrent/ConcurrentHashMap;

.field private synthetic val$seenNull:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_opEvaluateParallel_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_java_util_function_IntFunction_generator_LambdaImpl0;->val$seenNull:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_opEvaluateParallel_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_java_util_function_IntFunction_generator_LambdaImpl0;->val$map:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_opEvaluateParallel_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_java_util_function_IntFunction_generator_LambdaImpl0;->val$seenNull:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_opEvaluateParallel_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_java_util_function_IntFunction_generator_LambdaImpl0;->val$map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1, p1}, Ljava/util/stream/DistinctOps$1;->-java_util_stream_DistinctOps$1_lambda$4(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-void
.end method
