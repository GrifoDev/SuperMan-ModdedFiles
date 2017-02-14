.class final synthetic Ljava/util/Collections$CheckedMap$-java_lang_Object_computeIfAbsent_java_lang_Object_key_java_util_function_Function_mappingFunction_LambdaImpl0;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections$CheckedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_lang_Object_computeIfAbsent_java_lang_Object_key_java_util_function_Function_mappingFunction_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$mappingFunction:Ljava/util/function/Function;

.field private synthetic val$this:Ljava/util/Collections$CheckedMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collections$CheckedMap;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Collections$CheckedMap$-java_lang_Object_computeIfAbsent_java_lang_Object_key_java_util_function_Function_mappingFunction_LambdaImpl0;->val$this:Ljava/util/Collections$CheckedMap;

    iput-object p2, p0, Ljava/util/Collections$CheckedMap$-java_lang_Object_computeIfAbsent_java_lang_Object_key_java_util_function_Function_mappingFunction_LambdaImpl0;->val$mappingFunction:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljava/util/Collections$CheckedMap$-java_lang_Object_computeIfAbsent_java_lang_Object_key_java_util_function_Function_mappingFunction_LambdaImpl0;->val$this:Ljava/util/Collections$CheckedMap;

    iget-object v1, p0, Ljava/util/Collections$CheckedMap$-java_lang_Object_computeIfAbsent_java_lang_Object_key_java_util_function_Function_mappingFunction_LambdaImpl0;->val$mappingFunction:Ljava/util/function/Function;

    invoke-virtual {v0, v1, p1}, Ljava/util/Collections$CheckedMap;->-java_util_Collections$CheckedMap_lambda$4(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
