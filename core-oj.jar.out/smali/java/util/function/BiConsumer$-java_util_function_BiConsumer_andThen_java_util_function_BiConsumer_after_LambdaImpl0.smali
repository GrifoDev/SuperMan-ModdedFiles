.class final synthetic Ljava/util/function/BiConsumer$-java_util_function_BiConsumer_andThen_java_util_function_BiConsumer_after_LambdaImpl0;
.super Ljava/lang/Object;
.source "BiConsumer.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/function/BiConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_BiConsumer_andThen_java_util_function_BiConsumer_after_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$after:Ljava/util/function/BiConsumer;

.field private synthetic val$this:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/BiConsumer$-java_util_function_BiConsumer_andThen_java_util_function_BiConsumer_after_LambdaImpl0;->val$this:Ljava/util/function/BiConsumer;

    iput-object p2, p0, Ljava/util/function/BiConsumer$-java_util_function_BiConsumer_andThen_java_util_function_BiConsumer_after_LambdaImpl0;->val$after:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ljava/util/function/BiConsumer$-java_util_function_BiConsumer_andThen_java_util_function_BiConsumer_after_LambdaImpl0;->val$this:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Ljava/util/function/BiConsumer$-java_util_function_BiConsumer_andThen_java_util_function_BiConsumer_after_LambdaImpl0;->val$after:Ljava/util/function/BiConsumer;

    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/BiConsumer;->-java_util_function_BiConsumer_lambda$1(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
