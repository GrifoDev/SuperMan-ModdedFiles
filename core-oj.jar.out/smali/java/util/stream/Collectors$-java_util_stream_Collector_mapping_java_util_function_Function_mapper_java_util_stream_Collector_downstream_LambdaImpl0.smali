.class final synthetic Ljava/util/stream/Collectors$-java_util_stream_Collector_mapping_java_util_function_Function_mapper_java_util_stream_Collector_downstream_LambdaImpl0;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Collectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_Collector_mapping_java_util_function_Function_mapper_java_util_stream_Collector_downstream_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$downstreamAccumulator:Ljava/util/function/BiConsumer;

.field private synthetic val$mapper:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_mapping_java_util_function_Function_mapper_java_util_stream_Collector_downstream_LambdaImpl0;->val$downstreamAccumulator:Ljava/util/function/BiConsumer;

    iput-object p2, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_mapping_java_util_function_Function_mapper_java_util_stream_Collector_downstream_LambdaImpl0;->val$mapper:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_mapping_java_util_function_Function_mapper_java_util_stream_Collector_downstream_LambdaImpl0;->val$downstreamAccumulator:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_mapping_java_util_function_Function_mapper_java_util_stream_Collector_downstream_LambdaImpl0;->val$mapper:Ljava/util/function/Function;

    invoke-static {v0, v1, p1, p2}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors_lambda$20(Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
