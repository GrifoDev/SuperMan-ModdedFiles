.class final synthetic Ljava/util/function/LongUnaryOperator$-java_util_function_LongUnaryOperator_andThen_java_util_function_LongUnaryOperator_after_LambdaImpl0;
.super Ljava/lang/Object;
.source "LongUnaryOperator.java"

# interfaces
.implements Ljava/util/function/LongUnaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/function/LongUnaryOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_LongUnaryOperator_andThen_java_util_function_LongUnaryOperator_after_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$after:Ljava/util/function/LongUnaryOperator;

.field private synthetic val$this:Ljava/util/function/LongUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/LongUnaryOperator$-java_util_function_LongUnaryOperator_andThen_java_util_function_LongUnaryOperator_after_LambdaImpl0;->val$this:Ljava/util/function/LongUnaryOperator;

    iput-object p2, p0, Ljava/util/function/LongUnaryOperator$-java_util_function_LongUnaryOperator_andThen_java_util_function_LongUnaryOperator_after_LambdaImpl0;->val$after:Ljava/util/function/LongUnaryOperator;

    return-void
.end method


# virtual methods
.method public applyAsLong(J)J
    .locals 3

    iget-object v0, p0, Ljava/util/function/LongUnaryOperator$-java_util_function_LongUnaryOperator_andThen_java_util_function_LongUnaryOperator_after_LambdaImpl0;->val$this:Ljava/util/function/LongUnaryOperator;

    iget-object v1, p0, Ljava/util/function/LongUnaryOperator$-java_util_function_LongUnaryOperator_andThen_java_util_function_LongUnaryOperator_after_LambdaImpl0;->val$after:Ljava/util/function/LongUnaryOperator;

    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/LongUnaryOperator;->-java_util_function_LongUnaryOperator_lambda$2(Ljava/util/function/LongUnaryOperator;J)J

    move-result-wide v0

    return-wide v0
.end method
