.class final synthetic Ljava/util/function/BiPredicate$-java_util_function_BiPredicate_and_java_util_function_BiPredicate_other_LambdaImpl0;
.super Ljava/lang/Object;
.source "BiPredicate.java"

# interfaces
.implements Ljava/util/function/BiPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/function/BiPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_BiPredicate_and_java_util_function_BiPredicate_other_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$other:Ljava/util/function/BiPredicate;

.field private synthetic val$this:Ljava/util/function/BiPredicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiPredicate;Ljava/util/function/BiPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/BiPredicate$-java_util_function_BiPredicate_and_java_util_function_BiPredicate_other_LambdaImpl0;->val$this:Ljava/util/function/BiPredicate;

    iput-object p2, p0, Ljava/util/function/BiPredicate$-java_util_function_BiPredicate_and_java_util_function_BiPredicate_other_LambdaImpl0;->val$other:Ljava/util/function/BiPredicate;

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Ljava/util/function/BiPredicate$-java_util_function_BiPredicate_and_java_util_function_BiPredicate_other_LambdaImpl0;->val$this:Ljava/util/function/BiPredicate;

    iget-object v1, p0, Ljava/util/function/BiPredicate$-java_util_function_BiPredicate_and_java_util_function_BiPredicate_other_LambdaImpl0;->val$other:Ljava/util/function/BiPredicate;

    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/BiPredicate;->-java_util_function_BiPredicate_lambda$1(Ljava/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
