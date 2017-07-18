.class final synthetic Ljava/util/stream/IntPipeline$-java_util_IntSummaryStatistics_summaryStatistics__LambdaImpl2;
.super Ljava/lang/Object;
.source "IntPipeline.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/IntPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_IntSummaryStatistics_summaryStatistics__LambdaImpl2"
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

    check-cast p1, Ljava/util/IntSummaryStatistics;

    check-cast p2, Ljava/util/IntSummaryStatistics;

    invoke-static {p1, p2}, Ljava/util/stream/IntPipeline;->-java_util_stream_IntPipeline-mthref-7(Ljava/util/IntSummaryStatistics;Ljava/util/IntSummaryStatistics;)V

    return-void
.end method
