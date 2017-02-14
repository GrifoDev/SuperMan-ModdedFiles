.class final synthetic Ljava/util/Arrays$-void_parallelSetAll_int__array_java_util_function_IntUnaryOperator_generator_LambdaImpl0;
.super Ljava/lang/Object;
.source "Arrays.java"

# interfaces
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Arrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_parallelSetAll_int__array_java_util_function_IntUnaryOperator_generator_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$array:[I

.field private synthetic val$generator:Ljava/util/function/IntUnaryOperator;


# direct methods
.method public synthetic constructor <init>([ILjava/util/function/IntUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Arrays$-void_parallelSetAll_int__array_java_util_function_IntUnaryOperator_generator_LambdaImpl0;->val$array:[I

    iput-object p2, p0, Ljava/util/Arrays$-void_parallelSetAll_int__array_java_util_function_IntUnaryOperator_generator_LambdaImpl0;->val$generator:Ljava/util/function/IntUnaryOperator;

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2

    iget-object v0, p0, Ljava/util/Arrays$-void_parallelSetAll_int__array_java_util_function_IntUnaryOperator_generator_LambdaImpl0;->val$array:[I

    iget-object v1, p0, Ljava/util/Arrays$-void_parallelSetAll_int__array_java_util_function_IntUnaryOperator_generator_LambdaImpl0;->val$generator:Ljava/util/function/IntUnaryOperator;

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->-java_util_Arrays_lambda$2([ILjava/util/function/IntUnaryOperator;I)V

    return-void
.end method
