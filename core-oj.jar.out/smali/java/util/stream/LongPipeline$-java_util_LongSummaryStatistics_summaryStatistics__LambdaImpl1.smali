.class final synthetic Ljava/util/stream/LongPipeline$-java_util_LongSummaryStatistics_summaryStatistics__LambdaImpl1;
.super Ljava/lang/Object;
.source "LongPipeline.java"

# interfaces
.implements Ljava/util/function/ObjLongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/LongPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_LongSummaryStatistics_summaryStatistics__LambdaImpl1"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;J)V
    .locals 0

    check-cast p1, Ljava/util/LongSummaryStatistics;

    invoke-static {p1, p2, p3}, Ljava/util/stream/LongPipeline;->-java_util_stream_LongPipeline-mthref-6(Ljava/util/LongSummaryStatistics;J)V

    return-void
.end method
