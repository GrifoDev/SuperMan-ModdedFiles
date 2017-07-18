.class final synthetic Ljava/util/function/IntConsumer$-java_util_function_IntConsumer_andThen_java_util_function_IntConsumer_after_LambdaImpl0;
.super Ljava/lang/Object;
.source "IntConsumer.java"

# interfaces
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/function/IntConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_IntConsumer_andThen_java_util_function_IntConsumer_after_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$after:Ljava/util/function/IntConsumer;

.field private synthetic val$this:Ljava/util/function/IntConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/IntConsumer$-java_util_function_IntConsumer_andThen_java_util_function_IntConsumer_after_LambdaImpl0;->val$this:Ljava/util/function/IntConsumer;

    iput-object p2, p0, Ljava/util/function/IntConsumer$-java_util_function_IntConsumer_andThen_java_util_function_IntConsumer_after_LambdaImpl0;->val$after:Ljava/util/function/IntConsumer;

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2

    iget-object v0, p0, Ljava/util/function/IntConsumer$-java_util_function_IntConsumer_andThen_java_util_function_IntConsumer_after_LambdaImpl0;->val$this:Ljava/util/function/IntConsumer;

    iget-object v1, p0, Ljava/util/function/IntConsumer$-java_util_function_IntConsumer_andThen_java_util_function_IntConsumer_after_LambdaImpl0;->val$after:Ljava/util/function/IntConsumer;

    invoke-interface {v0, v1, p1}, Ljava/util/function/IntConsumer;->-java_util_function_IntConsumer_lambda$1(Ljava/util/function/IntConsumer;I)V

    return-void
.end method
