.class final synthetic Ljava/util/stream/Collectors$-java_util_stream_Collector_toCollection_java_util_function_Supplier_collectionFactory_LambdaImpl0;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Collectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_Collector_toCollection_java_util_function_Supplier_collectionFactory_LambdaImpl0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1, p2}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors-mthref-0(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method
