.class final synthetic Ljava/util/stream/IntPipeline$-java_util_IntSummaryStatistics_summaryStatistics__LambdaImpl1;
.super Ljava/lang/Object;
.source "IntPipeline.java"

# interfaces
.implements Ljava/util/function/ObjIntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/IntPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_IntSummaryStatistics_summaryStatistics__LambdaImpl1"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/util/IntSummaryStatistics;

    invoke-static {p1, p2}, Ljava/util/stream/IntPipeline;->-java_util_stream_IntPipeline-mthref-6(Ljava/util/IntSummaryStatistics;I)V

    return-void
.end method
