.class final synthetic Ljava/util/stream/Collectors$-java_util_stream_Collector_summarizingLong_java_util_function_ToLongFunction_mapper_LambdaImpl2;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Collectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_Collector_summarizingLong_java_util_function_ToLongFunction_mapper_LambdaImpl2"
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

    check-cast p1, Ljava/util/LongSummaryStatistics;

    check-cast p2, Ljava/util/LongSummaryStatistics;

    invoke-static {p1, p2}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors_lambda$86(Ljava/util/LongSummaryStatistics;Ljava/util/LongSummaryStatistics;)Ljava/util/LongSummaryStatistics;

    move-result-object v0

    return-object v0
.end method
