.class public interface abstract Ljava/util/function/BinaryOperator;
.super Ljava/lang/Object;
.source "BinaryOperator.java"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/function/BinaryOperator$-java_util_function_BinaryOperator_maxBy_java_util_Comparator_comparator_LambdaImpl0;,
        Ljava/util/function/BinaryOperator$-java_util_function_BinaryOperator_minBy_java_util_Comparator_comparator_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction",
        "<TT;TT;TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic -java_util_function_BinaryOperator_lambda$1(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method public static synthetic -java_util_function_BinaryOperator_lambda$2(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method public static maxBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/function/BinaryOperator$-java_util_function_BinaryOperator_maxBy_java_util_Comparator_comparator_LambdaImpl0;

    invoke-direct {v0, p0}, Ljava/util/function/BinaryOperator$-java_util_function_BinaryOperator_maxBy_java_util_Comparator_comparator_LambdaImpl0;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static minBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/function/BinaryOperator$-java_util_function_BinaryOperator_minBy_java_util_Comparator_comparator_LambdaImpl0;

    invoke-direct {v0, p0}, Ljava/util/function/BinaryOperator$-java_util_function_BinaryOperator_minBy_java_util_Comparator_comparator_LambdaImpl0;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
