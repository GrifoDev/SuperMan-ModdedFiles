.class final Ljava/util/stream/Nodes$CollectorTask$OfLong;
.super Ljava/util/stream/Nodes$CollectorTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$CollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Nodes$CollectorTask$OfLong$-void__init__java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;,
        Ljava/util/stream/Nodes$CollectorTask$OfLong$-void__init__java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$CollectorTask",
        "<TP_IN;",
        "Ljava/lang/Long;",
        "Ljava/util/stream/Node$OfLong;",
        "Ljava/util/stream/Node$Builder$OfLong;",
        ">;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_Nodes$CollectorTask$OfLong-mthref-0(J)Ljava/util/stream/Node$Builder$OfLong;
    .locals 2

    invoke-static {p0, p1}, Ljava/util/stream/Nodes;->longBuilder(J)Ljava/util/stream/Node$Builder$OfLong;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -java_util_stream_Nodes$CollectorTask$OfLong-mthref-1(Ljava/util/stream/Node$OfLong;Ljava/util/stream/Node$OfLong;)Ljava/util/stream/Node$OfLong;
    .locals 1

    new-instance v0, Ljava/util/stream/Nodes$ConcNode$OfLong;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/Nodes$ConcNode$OfLong;-><init>(Ljava/util/stream/Node$OfLong;Ljava/util/stream/Node$OfLong;)V

    return-object v0
.end method

.method constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/Nodes$CollectorTask$OfLong$-void__init__java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;

    invoke-direct {v0}, Ljava/util/stream/Nodes$CollectorTask$OfLong$-void__init__java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;-><init>()V

    new-instance v1, Ljava/util/stream/Nodes$CollectorTask$OfLong$-void__init__java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl1;

    invoke-direct {v1}, Ljava/util/stream/Nodes$CollectorTask$OfLong$-void__init__java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl1;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/util/stream/Nodes$CollectorTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V

    return-void
.end method
