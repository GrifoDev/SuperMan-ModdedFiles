.class final synthetic Ljava/util/stream/Collectors$-java_util_stream_Collector_toConcurrentMap_java_util_function_Function_keyMapper_java_util_function_Function_valueMapper_LambdaImpl0;
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
    name = "-java_util_stream_Collector_toConcurrentMap_java_util_function_Function_keyMapper_java_util_function_Function_valueMapper_LambdaImpl0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors-mthref-19()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method
