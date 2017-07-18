.class final synthetic Ljava/util/function/Predicate$-java_util_function_Predicate_isEqual_java_lang_Object_targetRef_LambdaImpl1;
.super Ljava/lang/Object;
.source "Predicate.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/function/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_Predicate_isEqual_java_lang_Object_targetRef_LambdaImpl1"
.end annotation


# instance fields
.field private synthetic val$targetRef:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/Predicate$-java_util_function_Predicate_isEqual_java_lang_Object_targetRef_LambdaImpl1;->val$targetRef:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Ljava/util/function/Predicate$-java_util_function_Predicate_isEqual_java_lang_Object_targetRef_LambdaImpl1;->val$targetRef:Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/function/Predicate;->-java_util_function_Predicate_lambda$5(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
