.class final synthetic Ljava/util/stream/Collectors$-java_util_stream_Collector_groupingByConcurrent_java_util_function_Function_classifier_java_util_function_Supplier_mapFactory_java_util_stream_Collector_downstream_LambdaImpl1;
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
    name = "-java_util_stream_Collector_groupingByConcurrent_java_util_function_Function_classifier_java_util_function_Supplier_mapFactory_java_util_stream_Collector_downstream_LambdaImpl1"
.end annotation


# instance fields
.field private synthetic val$classifier:Ljava/util/function/Function;

.field private synthetic val$downstreamAccumulator:Ljava/util/function/BiConsumer;

.field private synthetic val$downstreamSupplier:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_groupingByConcurrent_java_util_function_Function_classifier_java_util_function_Supplier_mapFactory_java_util_stream_Collector_downstream_LambdaImpl1;->val$classifier:Ljava/util/function/Function;

    iput-object p2, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_groupingByConcurrent_java_util_function_Function_classifier_java_util_function_Supplier_mapFactory_java_util_stream_Collector_downstream_LambdaImpl1;->val$downstreamSupplier:Ljava/util/function/Supplier;

    iput-object p3, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_groupingByConcurrent_java_util_function_Function_classifier_java_util_function_Supplier_mapFactory_java_util_stream_Collector_downstream_LambdaImpl1;->val$downstreamAccumulator:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_groupingByConcurrent_java_util_function_Function_classifier_java_util_function_Supplier_mapFactory_java_util_stream_Collector_downstream_LambdaImpl1;->val$classifier:Ljava/util/function/Function;

    iget-object v1, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_groupingByConcurrent_java_util_function_Function_classifier_java_util_function_Supplier_mapFactory_java_util_stream_Collector_downstream_LambdaImpl1;->val$downstreamSupplier:Ljava/util/function/Supplier;

    iget-object v2, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_groupingByConcurrent_java_util_function_Function_classifier_java_util_function_Supplier_mapFactory_java_util_stream_Collector_downstream_LambdaImpl1;->val$downstreamAccumulator:Ljava/util/function/BiConsumer;

    check-cast p1, Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1, v2, p1, p2}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors_lambda$67(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V

    return-void
.end method
