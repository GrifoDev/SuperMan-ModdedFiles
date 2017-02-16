.class public interface abstract Ljava/util/function/LongConsumer;
.super Ljava/lang/Object;
.source "LongConsumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/function/LongConsumer$-java_util_function_LongConsumer_andThen_java_util_function_LongConsumer_after_LambdaImpl0;
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public synthetic -java_util_function_LongConsumer_lambda$1(Ljava/util/function/LongConsumer;J)V
    .locals 0
    .param p1, "after"    # Ljava/util/function/LongConsumer;
    .param p2, "t"    # J

    .prologue
    .line 65
    invoke-interface {p0, p2, p3}, Ljava/util/function/LongConsumer;->accept(J)V

    invoke-interface {p1, p2, p3}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 0
    return-void
.end method

.method public abstract accept(J)V
.end method

.method public andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .locals 1
    .param p1, "after"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 64
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/function/LongConsumer$-java_util_function_LongConsumer_andThen_java_util_function_LongConsumer_after_LambdaImpl0;

    invoke-direct {v0, p0, p1}, Ljava/util/function/LongConsumer$-java_util_function_LongConsumer_andThen_java_util_function_LongConsumer_after_LambdaImpl0;-><init>(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)V

    return-object v0
.end method
