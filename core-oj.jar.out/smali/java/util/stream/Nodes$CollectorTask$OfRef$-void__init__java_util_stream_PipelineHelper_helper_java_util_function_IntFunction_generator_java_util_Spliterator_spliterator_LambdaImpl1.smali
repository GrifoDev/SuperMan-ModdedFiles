.class final synthetic Ljava/util/stream/Nodes$CollectorTask$OfRef$-void__init__java_util_stream_PipelineHelper_helper_java_util_function_IntFunction_generator_java_util_Spliterator_spliterator_LambdaImpl1;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$CollectorTask$OfRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void__init__java_util_stream_PipelineHelper_helper_java_util_function_IntFunction_generator_java_util_Spliterator_spliterator_LambdaImpl1"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/stream/Node;

    check-cast p2, Ljava/util/stream/Node;

    invoke-static {p1, p2}, Ljava/util/stream/Nodes$CollectorTask$OfRef;->-java_util_stream_Nodes$CollectorTask$OfRef-mthref-0(Ljava/util/stream/Node;Ljava/util/stream/Node;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0
.end method
