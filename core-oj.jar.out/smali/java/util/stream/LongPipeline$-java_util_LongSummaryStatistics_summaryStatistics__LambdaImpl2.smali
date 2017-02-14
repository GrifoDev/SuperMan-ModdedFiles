.class final synthetic Ljava/util/stream/LongPipeline$-java_util_LongSummaryStatistics_summaryStatistics__LambdaImpl2;
.super Ljava/lang/Object;
.source "LongPipeline.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/LongPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_LongSummaryStatistics_summaryStatistics__LambdaImpl2"
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

    check-cast p1, Ljava/util/LongSummaryStatistics;

    check-cast p2, Ljava/util/LongSummaryStatistics;

    invoke-static {p1, p2}, Ljava/util/stream/LongPipeline;->-java_util_stream_LongPipeline-mthref-7(Ljava/util/LongSummaryStatistics;Ljava/util/LongSummaryStatistics;)V

    return-void
.end method
