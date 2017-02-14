.class final synthetic Ljava/util/function/BinaryOperator$-java_util_function_BinaryOperator_maxBy_java_util_Comparator_comparator_LambdaImpl0;
.super Ljava/lang/Object;
.source "BinaryOperator.java"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/function/BinaryOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_BinaryOperator_maxBy_java_util_Comparator_comparator_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$comparator:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/BinaryOperator$-java_util_function_BinaryOperator_maxBy_java_util_Comparator_comparator_LambdaImpl0;->val$comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/function/BinaryOperator$-java_util_function_BinaryOperator_maxBy_java_util_Comparator_comparator_LambdaImpl0;->val$comparator:Ljava/util/Comparator;

    invoke-static {v0, p1, p2}, Ljava/util/function/BinaryOperator;->-java_util_function_BinaryOperator_lambda$2(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
