.class final synthetic Ljava/util/stream/LongPipeline$-java_lang_Object_collect_java_util_function_Supplier_supplier_java_util_function_ObjLongConsumer_accumulator_java_util_function_BiConsumer_combiner_LambdaImpl0;
.super Ljava/lang/Object;
.source "LongPipeline.java"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/LongPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_lang_Object_collect_java_util_function_Supplier_supplier_java_util_function_ObjLongConsumer_accumulator_java_util_function_BiConsumer_combiner_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$combiner:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/LongPipeline$-java_lang_Object_collect_java_util_function_Supplier_supplier_java_util_function_ObjLongConsumer_accumulator_java_util_function_BiConsumer_combiner_LambdaImpl0;->val$combiner:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/stream/LongPipeline$-java_lang_Object_collect_java_util_function_Supplier_supplier_java_util_function_ObjLongConsumer_accumulator_java_util_function_BiConsumer_combiner_LambdaImpl0;->val$combiner:Ljava/util/function/BiConsumer;

    invoke-static {v0, p1, p2}, Ljava/util/stream/LongPipeline;->-java_util_stream_LongPipeline_lambda$15(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
