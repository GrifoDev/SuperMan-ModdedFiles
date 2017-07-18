.class final synthetic Ljava/util/function/IntPredicate$-java_util_function_IntPredicate_negate__LambdaImpl0;
.super Ljava/lang/Object;
.source "IntPredicate.java"

# interfaces
.implements Ljava/util/function/IntPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/function/IntPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_IntPredicate_negate__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Ljava/util/function/IntPredicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/IntPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/IntPredicate$-java_util_function_IntPredicate_negate__LambdaImpl0;->val$this:Ljava/util/function/IntPredicate;

    return-void
.end method


# virtual methods
.method public test(I)Z
    .locals 1

    iget-object v0, p0, Ljava/util/function/IntPredicate$-java_util_function_IntPredicate_negate__LambdaImpl0;->val$this:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->-java_util_function_IntPredicate_lambda$2(I)Z

    move-result v0

    return v0
.end method
