.class final synthetic Ljava/util/function/IntUnaryOperator$-java_util_function_IntUnaryOperator_compose_java_util_function_IntUnaryOperator_before_LambdaImpl0;
.super Ljava/lang/Object;
.source "IntUnaryOperator.java"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/function/IntUnaryOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_IntUnaryOperator_compose_java_util_function_IntUnaryOperator_before_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$before:Ljava/util/function/IntUnaryOperator;

.field private synthetic val$this:Ljava/util/function/IntUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/IntUnaryOperator$-java_util_function_IntUnaryOperator_compose_java_util_function_IntUnaryOperator_before_LambdaImpl0;->val$this:Ljava/util/function/IntUnaryOperator;

    iput-object p2, p0, Ljava/util/function/IntUnaryOperator$-java_util_function_IntUnaryOperator_compose_java_util_function_IntUnaryOperator_before_LambdaImpl0;->val$before:Ljava/util/function/IntUnaryOperator;

    return-void
.end method


# virtual methods
.method public applyAsInt(I)I
    .locals 2

    iget-object v0, p0, Ljava/util/function/IntUnaryOperator$-java_util_function_IntUnaryOperator_compose_java_util_function_IntUnaryOperator_before_LambdaImpl0;->val$this:Ljava/util/function/IntUnaryOperator;

    iget-object v1, p0, Ljava/util/function/IntUnaryOperator$-java_util_function_IntUnaryOperator_compose_java_util_function_IntUnaryOperator_before_LambdaImpl0;->val$before:Ljava/util/function/IntUnaryOperator;

    invoke-interface {v0, v1, p1}, Ljava/util/function/IntUnaryOperator;->-java_util_function_IntUnaryOperator_lambda$1(Ljava/util/function/IntUnaryOperator;I)I

    move-result v0

    return v0
.end method
