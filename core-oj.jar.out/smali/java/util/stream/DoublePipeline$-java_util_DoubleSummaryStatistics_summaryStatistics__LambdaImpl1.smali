.class final synthetic Ljava/util/stream/DoublePipeline$-java_util_DoubleSummaryStatistics_summaryStatistics__LambdaImpl1;
.super Ljava/lang/Object;
.source "DoublePipeline.java"

# interfaces
.implements Ljava/util/function/ObjDoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/DoublePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_DoubleSummaryStatistics_summaryStatistics__LambdaImpl1"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;D)V
    .locals 0

    check-cast p1, Ljava/util/DoubleSummaryStatistics;

    invoke-static {p1, p2, p3}, Ljava/util/stream/DoublePipeline;->-java_util_stream_DoublePipeline-mthref-5(Ljava/util/DoubleSummaryStatistics;D)V

    return-void
.end method
