.class public interface abstract Ljava/util/function/UnaryOperator;
.super Ljava/lang/Object;
.source "UnaryOperator.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/function/UnaryOperator$-java_util_function_UnaryOperator_identity__LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Function",
        "<TT;TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic -java_util_function_UnaryOperator_lambda$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static identity()Ljava/util/function/UnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/UnaryOperator",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/function/UnaryOperator$-java_util_function_UnaryOperator_identity__LambdaImpl0;

    invoke-direct {v0}, Ljava/util/function/UnaryOperator$-java_util_function_UnaryOperator_identity__LambdaImpl0;-><init>()V

    return-object v0
.end method
