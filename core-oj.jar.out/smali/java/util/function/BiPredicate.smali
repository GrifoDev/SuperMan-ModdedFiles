.class public interface abstract Ljava/util/function/BiPredicate;
.super Ljava/lang/Object;
.source "BiPredicate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/function/BiPredicate$-java_util_function_BiPredicate_and_java_util_function_BiPredicate_other_LambdaImpl0;,
        Ljava/util/function/BiPredicate$-java_util_function_BiPredicate_negate__LambdaImpl0;,
        Ljava/util/function/BiPredicate$-java_util_function_BiPredicate_or_java_util_function_BiPredicate_other_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public synthetic -java_util_function_BiPredicate_lambda$1(Ljava/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-interface {p0, p2, p3}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2, p3}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic -java_util_function_BiPredicate_lambda$2(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic -java_util_function_BiPredicate_lambda$3(Ljava/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-interface {p0, p2, p3}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2, p3}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public and(Ljava/util/function/BiPredicate;)Ljava/util/function/BiPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate",
            "<-TT;-TU;>;)",
            "Ljava/util/function/BiPredicate",
            "<TT;TU;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/function/BiPredicate$-java_util_function_BiPredicate_and_java_util_function_BiPredicate_other_LambdaImpl0;

    invoke-direct {v0, p0, p1}, Ljava/util/function/BiPredicate$-java_util_function_BiPredicate_and_java_util_function_BiPredicate_other_LambdaImpl0;-><init>(Ljava/util/function/BiPredicate;Ljava/util/function/BiPredicate;)V

    return-object v0
.end method

.method public negate()Ljava/util/function/BiPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiPredicate",
            "<TT;TU;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/function/BiPredicate$-java_util_function_BiPredicate_negate__LambdaImpl0;

    invoke-direct {v0, p0}, Ljava/util/function/BiPredicate$-java_util_function_BiPredicate_negate__LambdaImpl0;-><init>(Ljava/util/function/BiPredicate;)V

    return-object v0
.end method

.method public or(Ljava/util/function/BiPredicate;)Ljava/util/function/BiPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate",
            "<-TT;-TU;>;)",
            "Ljava/util/function/BiPredicate",
            "<TT;TU;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/function/BiPredicate$-java_util_function_BiPredicate_or_java_util_function_BiPredicate_other_LambdaImpl0;

    invoke-direct {v0, p0, p1}, Ljava/util/function/BiPredicate$-java_util_function_BiPredicate_or_java_util_function_BiPredicate_other_LambdaImpl0;-><init>(Ljava/util/function/BiPredicate;Ljava/util/function/BiPredicate;)V

    return-object v0
.end method

.method public abstract test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)Z"
        }
    .end annotation
.end method
