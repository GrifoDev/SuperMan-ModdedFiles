.class final synthetic Ljava/util/stream/Collectors$-java_util_stream_Collector_summingInt_java_util_function_ToIntFunction_mapper_LambdaImpl1;
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
    name = "-java_util_stream_Collector_summingInt_java_util_function_ToIntFunction_mapper_LambdaImpl1"
.end annotation


# instance fields
.field private synthetic val$mapper:Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/ToIntFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_summingInt_java_util_function_ToIntFunction_mapper_LambdaImpl1;->val$mapper:Ljava/util/function/ToIntFunction;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_summingInt_java_util_function_ToIntFunction_mapper_LambdaImpl1;->val$mapper:Ljava/util/function/ToIntFunction;

    check-cast p1, [I

    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors_lambda$24(Ljava/util/function/ToIntFunction;[ILjava/lang/Object;)V

    return-void
.end method
