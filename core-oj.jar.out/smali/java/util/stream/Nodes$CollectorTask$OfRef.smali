.class final Ljava/util/stream/Nodes$CollectorTask$OfRef;
.super Ljava/util/stream/Nodes$CollectorTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$CollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Nodes$CollectorTask$OfRef$-void__init__java_util_stream_PipelineHelper_helper_java_util_function_IntFunction_generator_java_util_Spliterator_spliterator_LambdaImpl0;,
        Ljava/util/stream/Nodes$CollectorTask$OfRef$-void__init__java_util_stream_PipelineHelper_helper_java_util_function_IntFunction_generator_java_util_Spliterator_spliterator_LambdaImpl1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$CollectorTask",
        "<TP_IN;TP_OUT;",
        "Ljava/util/stream/Node",
        "<TP_OUT;>;",
        "Ljava/util/stream/Node$Builder",
        "<TP_OUT;>;>;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_Nodes$CollectorTask$OfRef-mthref-0(Ljava/util/stream/Node;Ljava/util/stream/Node;)Ljava/util/stream/Node;
    .locals 1

    new-instance v0, Ljava/util/stream/Nodes$ConcNode;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/Nodes$ConcNode;-><init>(Ljava/util/stream/Node;Ljava/util/stream/Node;)V

    return-object v0
.end method

.method static synthetic -java_util_stream_Nodes$CollectorTask$OfRef_lambda$1(Ljava/util/function/IntFunction;J)Ljava/util/stream/Node$Builder;
    .locals 1

    invoke-static {p1, p2, p0}, Ljava/util/stream/Nodes;->builder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/IntFunction;Ljava/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
            "Ljava/util/function/IntFunction",
            "<[TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Nodes$CollectorTask$OfRef$-void__init__java_util_stream_PipelineHelper_helper_java_util_function_IntFunction_generator_java_util_Spliterator_spliterator_LambdaImpl0;

    invoke-direct {v0, p2}, Ljava/util/stream/Nodes$CollectorTask$OfRef$-void__init__java_util_stream_PipelineHelper_helper_java_util_function_IntFunction_generator_java_util_Spliterator_spliterator_LambdaImpl0;-><init>(Ljava/util/function/IntFunction;)V

    new-instance v1, Ljava/util/stream/Nodes$CollectorTask$OfRef$-void__init__java_util_stream_PipelineHelper_helper_java_util_function_IntFunction_generator_java_util_Spliterator_spliterator_LambdaImpl1;

    invoke-direct {v1}, Ljava/util/stream/Nodes$CollectorTask$OfRef$-void__init__java_util_stream_PipelineHelper_helper_java_util_function_IntFunction_generator_java_util_Spliterator_spliterator_LambdaImpl1;-><init>()V

    invoke-direct {p0, p1, p3, v0, v1}, Ljava/util/stream/Nodes$CollectorTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V

    return-void
.end method
