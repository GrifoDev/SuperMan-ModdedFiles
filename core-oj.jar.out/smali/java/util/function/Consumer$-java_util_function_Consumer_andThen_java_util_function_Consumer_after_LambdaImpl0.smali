.class final synthetic Ljava/util/function/Consumer$-java_util_function_Consumer_andThen_java_util_function_Consumer_after_LambdaImpl0;
.super Ljava/lang/Object;
.source "Consumer.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/function/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_Consumer_andThen_java_util_function_Consumer_after_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$after:Ljava/util/function/Consumer;

.field private synthetic val$this:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/Consumer$-java_util_function_Consumer_andThen_java_util_function_Consumer_after_LambdaImpl0;->val$this:Ljava/util/function/Consumer;

    iput-object p2, p0, Ljava/util/function/Consumer$-java_util_function_Consumer_andThen_java_util_function_Consumer_after_LambdaImpl0;->val$after:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ljava/util/function/Consumer$-java_util_function_Consumer_andThen_java_util_function_Consumer_after_LambdaImpl0;->val$this:Ljava/util/function/Consumer;

    iget-object v1, p0, Ljava/util/function/Consumer$-java_util_function_Consumer_andThen_java_util_function_Consumer_after_LambdaImpl0;->val$after:Ljava/util/function/Consumer;

    invoke-interface {v0, v1, p1}, Ljava/util/function/Consumer;->-java_util_function_Consumer_lambda$1(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
