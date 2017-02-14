.class final synthetic Ljava/util/Arrays$-void_parallelSetAll_long__array_java_util_function_IntToLongFunction_generator_LambdaImpl0;
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
    name = "-void_parallelSetAll_long__array_java_util_function_IntToLongFunction_generator_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$array:[J

.field private synthetic val$generator:Ljava/util/function/IntToLongFunction;


# direct methods
.method public synthetic constructor <init>([JLjava/util/function/IntToLongFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Arrays$-void_parallelSetAll_long__array_java_util_function_IntToLongFunction_generator_LambdaImpl0;->val$array:[J

    iput-object p2, p0, Ljava/util/Arrays$-void_parallelSetAll_long__array_java_util_function_IntToLongFunction_generator_LambdaImpl0;->val$generator:Ljava/util/function/IntToLongFunction;

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2

    iget-object v0, p0, Ljava/util/Arrays$-void_parallelSetAll_long__array_java_util_function_IntToLongFunction_generator_LambdaImpl0;->val$array:[J

    iget-object v1, p0, Ljava/util/Arrays$-void_parallelSetAll_long__array_java_util_function_IntToLongFunction_generator_LambdaImpl0;->val$generator:Ljava/util/function/IntToLongFunction;

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->-java_util_Arrays_lambda$3([JLjava/util/function/IntToLongFunction;I)V

    return-void
.end method
