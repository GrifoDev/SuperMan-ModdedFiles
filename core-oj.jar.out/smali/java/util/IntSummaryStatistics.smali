.class public Ljava/util/IntSummaryStatistics;
.super Ljava/lang/Object;
.source "IntSummaryStatistics.java"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private count:J

.field private max:I

.field private min:I

.field private sum:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    const/high16 v0, -0x80000000

    iput v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 4

    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/IntSummaryStatistics;->count:J

    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->sum:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/IntSummaryStatistics;->sum:J

    iget v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    iget v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    return-void
.end method

.method public combine(Ljava/util/IntSummaryStatistics;)V
    .locals 4

    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->count:J

    iget-wide v2, p1, Ljava/util/IntSummaryStatistics;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/IntSummaryStatistics;->count:J

    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->sum:J

    iget-wide v2, p1, Ljava/util/IntSummaryStatistics;->sum:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/IntSummaryStatistics;->sum:J

    iget v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    iget v1, p1, Ljava/util/IntSummaryStatistics;->min:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    iget v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    iget v1, p1, Ljava/util/IntSummaryStatistics;->max:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    return-void
.end method

.method public final getAverage()D
    .locals 4

    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getSum()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getCount()J

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

    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->count:J

    return-wide v0
.end method

.method public final getMax()I
    .locals 1

    iget v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    return v0
.end method

.method public final getMin()I
    .locals 1

    iget v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    return v0
.end method

.method public final getSum()J
    .locals 2

    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->sum:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "%s{count=%d, sum=%d, min=%d, average=%f, max=%d}"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getCount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getSum()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getMin()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getAverage()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getMax()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
