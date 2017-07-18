.class public Ljava/util/DoubleSummaryStatistics;
.super Ljava/lang/Object;
.source "DoubleSummaryStatistics.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field private count:J

.field private max:D

.field private min:D

.field private simpleSum:D

.field private sum:D

.field private sumCompensation:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    return-void
.end method

.method private sumWithCompensation(D)V
    .locals 7

    iget-wide v4, p0, Ljava/util/DoubleSummaryStatistics;->sumCompensation:D

    sub-double v0, p1, v4

    iget-wide v4, p0, Ljava/util/DoubleSummaryStatistics;->sum:D

    add-double v2, v4, v0

    iget-wide v4, p0, Ljava/util/DoubleSummaryStatistics;->sum:D

    sub-double v4, v2, v4

    sub-double/2addr v4, v0

    iput-wide v4, p0, Ljava/util/DoubleSummaryStatistics;->sumCompensation:D

    iput-wide v2, p0, Ljava/util/DoubleSummaryStatistics;->sum:D

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 5

    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->count:J

    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    invoke-direct {p0, p1, p2}, Ljava/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    return-void
.end method

.method public combine(Ljava/util/DoubleSummaryStatistics;)V
    .locals 4

    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->count:J

    iget-wide v2, p1, Ljava/util/DoubleSummaryStatistics;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->count:J

    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    iget-wide v2, p1, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    iget-wide v0, p1, Ljava/util/DoubleSummaryStatistics;->sum:D

    invoke-direct {p0, v0, v1}, Ljava/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    iget-wide v0, p1, Ljava/util/DoubleSummaryStatistics;->sumCompensation:D

    invoke-direct {p0, v0, v1}, Ljava/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    iget-wide v2, p1, Ljava/util/DoubleSummaryStatistics;->min:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    iget-wide v2, p1, Ljava/util/DoubleSummaryStatistics;->max:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    return-void
.end method

.method public final getAverage()D
    .locals 4

    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getSum()D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getCount()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final getCount()J
    .locals 2

    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->count:J

    return-wide v0
.end method

.method public final getMax()D
    .locals 2

    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    return-wide v0
.end method

.method public final getMin()D
    .locals 2

    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    return-wide v0
.end method

.method public final getSum()D
    .locals 6

    iget-wide v2, p0, Ljava/util/DoubleSummaryStatistics;->sum:D

    iget-wide v4, p0, Ljava/util/DoubleSummaryStatistics;->sumCompensation:D

    add-double v0, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    return-wide v2

    :cond_0
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "%s{count=%d, sum=%f, min=%f, average=%f, max=%f}"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getCount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getSum()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getMin()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getAverage()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getMax()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
