.class final synthetic Ljava/util/stream/Collectors$-java_util_function_BinaryOperator_mapMerger_java_util_function_BinaryOperator_mergeFunction_LambdaImpl0;
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
    name = "-java_util_function_BinaryOperator_mapMerger_java_util_function_BinaryOperator_mergeFunction_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$mergeFunction:Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BinaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Collectors$-java_util_function_BinaryOperator_mapMerger_java_util_function_BinaryOperator_mergeFunction_LambdaImpl0;->val$mergeFunction:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/stream/Collectors$-java_util_function_BinaryOperator_mapMerger_java_util_function_BinaryOperator_mergeFunction_LambdaImpl0;->val$mergeFunction:Ljava/util/function/BinaryOperator;

    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors_lambda$19(Ljava/util/function/BinaryOperator;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
