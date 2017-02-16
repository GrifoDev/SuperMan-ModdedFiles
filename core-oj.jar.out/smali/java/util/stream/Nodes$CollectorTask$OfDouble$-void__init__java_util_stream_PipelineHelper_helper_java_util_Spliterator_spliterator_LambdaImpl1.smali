.class final synthetic Ljava/util/stream/Nodes$CollectorTask$OfDouble$-void__init__java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl1;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$CollectorTask$OfDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void__init__java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl1"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/util/stream/Node$OfDouble;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Ljava/util/stream/Node$OfDouble;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p1, p2}, Ljava/util/stream/Nodes$CollectorTask$OfDouble;->-java_util_stream_Nodes$CollectorTask$OfDouble-mthref-1(Ljava/util/stream/Node$OfDouble;Ljava/util/stream/Node$OfDouble;)Ljava/util/stream/Node$OfDouble;

    move-result-object v0

    return-object v0
.end method
