.class final synthetic Ljava/util/stream/Collectors$-java_util_stream_Collector_toConcurrentMap_java_util_function_Function_keyMapper_java_util_function_Function_valueMapper_java_util_function_BinaryOperator_mergeFunction_java_util_function_Supplier_mapSupplier_LambdaImpl0;
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
    name = "-java_util_stream_Collector_toConcurrentMap_java_util_function_Function_keyMapper_java_util_function_Function_valueMapper_java_util_function_BinaryOperator_mergeFunction_java_util_function_Supplier_mapSupplier_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$keyMapper:Ljava/util/function/Function;

.field private synthetic val$mergeFunction:Ljava/util/function/BinaryOperator;

.field private synthetic val$valueMapper:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_toConcurrentMap_java_util_function_Function_keyMapper_java_util_function_Function_valueMapper_java_util_function_BinaryOperator_mergeFunction_java_util_function_Supplier_mapSupplier_LambdaImpl0;->val$keyMapper:Ljava/util/function/Function;

    iput-object p2, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_toConcurrentMap_java_util_function_Function_keyMapper_java_util_function_Function_valueMapper_java_util_function_BinaryOperator_mergeFunction_java_util_function_Supplier_mapSupplier_LambdaImpl0;->val$valueMapper:Ljava/util/function/Function;

    iput-object p3, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_toConcurrentMap_java_util_function_Function_keyMapper_java_util_function_Function_valueMapper_java_util_function_BinaryOperator_mergeFunction_java_util_function_Supplier_mapSupplier_LambdaImpl0;->val$mergeFunction:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_toConcurrentMap_java_util_function_Function_keyMapper_java_util_function_Function_valueMapper_java_util_function_BinaryOperator_mergeFunction_java_util_function_Supplier_mapSupplier_LambdaImpl0;->val$keyMapper:Ljava/util/function/Function;

    iget-object v1, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_toConcurrentMap_java_util_function_Function_keyMapper_java_util_function_Function_valueMapper_java_util_function_BinaryOperator_mergeFunction_java_util_function_Supplier_mapSupplier_LambdaImpl0;->val$valueMapper:Ljava/util/function/Function;

    iget-object v2, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_toConcurrentMap_java_util_function_Function_keyMapper_java_util_function_Function_valueMapper_java_util_function_BinaryOperator_mergeFunction_java_util_function_Supplier_mapSupplier_LambdaImpl0;->val$mergeFunction:Ljava/util/function/BinaryOperator;

    check-cast p1, Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1, v2, p1, p2}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors_lambda$80(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V

    return-void
.end method
