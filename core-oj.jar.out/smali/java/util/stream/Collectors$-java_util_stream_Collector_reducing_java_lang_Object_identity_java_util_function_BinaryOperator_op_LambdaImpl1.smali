.class final synthetic Ljava/util/stream/Collectors$-java_util_stream_Collector_reducing_java_lang_Object_identity_java_util_function_BinaryOperator_op_LambdaImpl1;
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
    name = "-java_util_stream_Collector_reducing_java_lang_Object_identity_java_util_function_BinaryOperator_op_LambdaImpl1"
.end annotation


# instance fields
.field private synthetic val$op:Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BinaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_reducing_java_lang_Object_identity_java_util_function_BinaryOperator_op_LambdaImpl1;->val$op:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_reducing_java_lang_Object_identity_java_util_function_BinaryOperator_op_LambdaImpl1;->val$op:Ljava/util/function/BinaryOperator;

    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors_lambda$48(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
