.class final synthetic Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_reduce_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl2;
.super Ljava/lang/Object;
.source "DistinctOps.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/DistinctOps$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_Node_reduce_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl2"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/LinkedHashSet;

    check-cast p2, Ljava/util/LinkedHashSet;

    invoke-static {p1, p2}, Ljava/util/stream/DistinctOps$1;->-java_util_stream_DistinctOps$1-mthref-2(Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;)V

    return-void
.end method
