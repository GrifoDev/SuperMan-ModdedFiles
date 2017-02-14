.class public interface abstract Ljava/util/function/DoubleUnaryOperator;
.super Ljava/lang/Object;
.source "DoubleUnaryOperator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/function/DoubleUnaryOperator$-java_util_function_DoubleUnaryOperator_andThen_java_util_function_DoubleUnaryOperator_after_LambdaImpl0;,
        Ljava/util/function/DoubleUnaryOperator$-java_util_function_DoubleUnaryOperator_compose_java_util_function_DoubleUnaryOperator_before_LambdaImpl0;,
        Ljava/util/function/DoubleUnaryOperator$-java_util_function_DoubleUnaryOperator_identity__LambdaImpl0;
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic -java_util_function_DoubleUnaryOperator_lambda$3(D)D
    .locals 0

    return-wide p0
.end method

.method public static identity()Ljava/util/function/DoubleUnaryOperator;
    .locals 1

    new-instance v0, Ljava/util/function/DoubleUnaryOperator$-java_util_function_DoubleUnaryOperator_identity__LambdaImpl0;

    invoke-direct {v0}, Ljava/util/function/DoubleUnaryOperator$-java_util_function_DoubleUnaryOperator_identity__LambdaImpl0;-><init>()V

    return-object v0
.end method


# virtual methods
.method public synthetic -java_util_function_DoubleUnaryOperator_lambda$1(Ljava/util/function/DoubleUnaryOperator;D)D
    .locals 2

    invoke-interface {p1, p2, p3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic -java_util_function_DoubleUnaryOperator_lambda$2(Ljava/util/function/DoubleUnaryOperator;D)D
    .locals 2

    invoke-interface {p0, p2, p3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public andThen(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/function/DoubleUnaryOperator$-java_util_function_DoubleUnaryOperator_andThen_java_util_function_DoubleUnaryOperator_after_LambdaImpl0;

    invoke-direct {v0, p0, p1}, Ljava/util/function/DoubleUnaryOperator$-java_util_function_DoubleUnaryOperator_andThen_java_util_function_DoubleUnaryOperator_after_LambdaImpl0;-><init>(Ljava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)V

    return-object v0
.end method

.method public abstract applyAsDouble(D)D
.end method

.method public compose(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/function/DoubleUnaryOperator$-java_util_function_DoubleUnaryOperator_compose_java_util_function_DoubleUnaryOperator_before_LambdaImpl0;

    invoke-direct {v0, p0, p1}, Ljava/util/function/DoubleUnaryOperator$-java_util_function_DoubleUnaryOperator_compose_java_util_function_DoubleUnaryOperator_before_LambdaImpl0;-><init>(Ljava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)V

    return-object v0
.end method
