.class final synthetic Ljava/util/stream/Collectors$-void_-java_util_stream_Collectors_lambda$59_java_util_function_Function_classifier_java_util_function_Supplier_downstreamSupplier_java_util_function_BiConsumer_downstreamAccumulator_java_util_Map_m_java_lang_Object_t_LambdaImpl0;
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
    name = "-void_-java_util_stream_Collectors_lambda$59_java_util_function_Function_classifier_java_util_function_Supplier_downstreamSupplier_java_util_function_BiConsumer_downstreamAccumulator_java_util_Map_m_java_lang_Object_t_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$downstreamSupplier:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Collectors$-void_-java_util_stream_Collectors_lambda$59_java_util_function_Function_classifier_java_util_function_Supplier_downstreamSupplier_java_util_function_BiConsumer_downstreamAccumulator_java_util_Map_m_java_lang_Object_t_LambdaImpl0;->val$downstreamSupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/stream/Collectors$-void_-java_util_stream_Collectors_lambda$59_java_util_function_Function_classifier_java_util_function_Supplier_downstreamSupplier_java_util_function_BiConsumer_downstreamAccumulator_java_util_Map_m_java_lang_Object_t_LambdaImpl0;->val$downstreamSupplier:Ljava/util/function/Supplier;

    invoke-static {v0, p1}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors_lambda$60(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
