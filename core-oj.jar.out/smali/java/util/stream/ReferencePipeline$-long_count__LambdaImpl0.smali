.class final synthetic Ljava/util/stream/ReferencePipeline$-long_count__LambdaImpl0;
.super Ljava/lang/Object;
.source "ReferencePipeline.java"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ReferencePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-long_count__LambdaImpl0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAsLong(Ljava/lang/Object;)J
    .locals 2

    invoke-static {p1}, Ljava/util/stream/ReferencePipeline;->-java_util_stream_ReferencePipeline_lambda$6(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method
