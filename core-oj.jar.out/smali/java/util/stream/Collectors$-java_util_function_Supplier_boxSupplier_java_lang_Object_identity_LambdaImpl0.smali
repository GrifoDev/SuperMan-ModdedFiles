.class final synthetic Ljava/util/stream/Collectors$-java_util_function_Supplier_boxSupplier_java_lang_Object_identity_LambdaImpl0;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Collectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_Supplier_boxSupplier_java_lang_Object_identity_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$identity:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Collectors$-java_util_function_Supplier_boxSupplier_java_lang_Object_identity_LambdaImpl0;->val$identity:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/stream/Collectors$-java_util_function_Supplier_boxSupplier_java_lang_Object_identity_LambdaImpl0;->val$identity:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors_lambda$50(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
