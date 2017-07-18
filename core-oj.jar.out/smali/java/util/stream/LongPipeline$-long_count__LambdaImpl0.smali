.class final synthetic Ljava/util/stream/LongPipeline$-long_count__LambdaImpl0;
.super Ljava/lang/Object;
.source "LongPipeline.java"

# interfaces
.implements Ljava/util/function/LongUnaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/LongPipeline;
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
.method public applyAsLong(J)J
    .locals 3

    invoke-static {p1, p2}, Ljava/util/stream/LongPipeline;->-java_util_stream_LongPipeline_lambda$11(J)J

    move-result-wide v0

    return-wide v0
.end method
