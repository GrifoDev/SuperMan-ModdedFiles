.class final synthetic Ljava/util/stream/DoublePipeline$-java_util_stream_Stream_boxed__LambdaImpl0;
.super Ljava/lang/Object;
.source "DoublePipeline.java"

# interfaces
.implements Ljava/util/function/DoubleFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/DoublePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_Stream_boxed__LambdaImpl0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(D)Ljava/lang/Object;
    .locals 1

    invoke-static {p1, p2}, Ljava/util/stream/DoublePipeline;->-java_util_stream_DoublePipeline-mthref-1(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
