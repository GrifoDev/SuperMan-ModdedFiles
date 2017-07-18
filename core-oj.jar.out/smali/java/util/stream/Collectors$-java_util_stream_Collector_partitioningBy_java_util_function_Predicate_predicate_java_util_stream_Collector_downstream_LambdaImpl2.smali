.class final synthetic Ljava/util/stream/Collectors$-java_util_stream_Collector_partitioningBy_java_util_function_Predicate_predicate_java_util_stream_Collector_downstream_LambdaImpl2;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Collectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_Collector_partitioningBy_java_util_function_Predicate_predicate_java_util_stream_Collector_downstream_LambdaImpl2"
.end annotation


# instance fields
.field private synthetic val$downstream:Ljava/util/stream/Collector;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/Collector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_partitioningBy_java_util_function_Predicate_predicate_java_util_stream_Collector_downstream_LambdaImpl2;->val$downstream:Ljava/util/stream/Collector;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_partitioningBy_java_util_function_Predicate_predicate_java_util_stream_Collector_downstream_LambdaImpl2;->val$downstream:Ljava/util/stream/Collector;

    invoke-static {v0}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors_lambda$73(Ljava/util/stream/Collector;)Ljava/util/stream/Collectors$Partition;

    move-result-object v0

    return-object v0
.end method
