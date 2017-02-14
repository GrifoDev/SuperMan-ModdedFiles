.class final synthetic Ljava/util/stream/ReferencePipeline$-java_lang_Object_collect_java_util_stream_Collector_collector_LambdaImpl0;
.super Ljava/lang/Object;
.source "ReferencePipeline.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ReferencePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_lang_Object_collect_java_util_stream_Collector_collector_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$accumulator:Ljava/util/function/BiConsumer;

.field private synthetic val$container:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$-java_lang_Object_collect_java_util_stream_Collector_collector_LambdaImpl0;->val$accumulator:Ljava/util/function/BiConsumer;

    iput-object p2, p0, Ljava/util/stream/ReferencePipeline$-java_lang_Object_collect_java_util_stream_Collector_collector_LambdaImpl0;->val$container:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$-java_lang_Object_collect_java_util_stream_Collector_collector_LambdaImpl0;->val$accumulator:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Ljava/util/stream/ReferencePipeline$-java_lang_Object_collect_java_util_stream_Collector_collector_LambdaImpl0;->val$container:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Ljava/util/stream/ReferencePipeline;->-java_util_stream_ReferencePipeline_lambda$5(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
