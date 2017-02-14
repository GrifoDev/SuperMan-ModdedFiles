.class final synthetic Ljava/util/stream/Collectors$-java_util_stream_Collector_averagingDouble_java_util_function_ToDoubleFunction_mapper_LambdaImpl3;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Collectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_Collector_averagingDouble_java_util_function_ToDoubleFunction_mapper_LambdaImpl3"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [D

    invoke-static {p1}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors_lambda$46([D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
