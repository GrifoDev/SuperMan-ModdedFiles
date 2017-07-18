.class final synthetic Ljava/util/stream/DoublePipeline$-java_util_stream_DoubleStream_distinct__LambdaImpl0;
.super Ljava/lang/Object;
.source "DoublePipeline.java"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/DoublePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_DoubleStream_distinct__LambdaImpl0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAsDouble(Ljava/lang/Object;)D
    .locals 2

    check-cast p1, Ljava/lang/Double;

    invoke-static {p1}, Ljava/util/stream/DoublePipeline;->-java_util_stream_DoublePipeline_lambda$4(Ljava/lang/Double;)D

    move-result-wide v0

    return-wide v0
.end method
