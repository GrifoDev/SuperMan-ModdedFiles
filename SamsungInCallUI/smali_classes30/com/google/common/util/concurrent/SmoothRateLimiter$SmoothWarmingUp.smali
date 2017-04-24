.class final Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;
.super Lcom/google/common/util/concurrent/SmoothRateLimiter;
.source "SmoothRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/SmoothRateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SmoothWarmingUp"
.end annotation


# instance fields
.field private coldFactor:D

.field private slope:D

.field private thresholdPermits:D

.field private final warmupPeriodMicros:J


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;JLjava/util/concurrent/TimeUnit;D)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/SmoothRateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;Lcom/google/common/util/concurrent/SmoothRateLimiter$1;)V

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->warmupPeriodMicros:J

    iput-wide p5, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->coldFactor:D

    return-void
.end method

.method private permitsToTime(D)D
    .locals 5

    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->stableIntervalMicros:D

    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->slope:D

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method coolDownIntervalMicros()D
    .locals 4

    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->warmupPeriodMicros:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method doSetRate(DD)V
    .locals 11

    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    iget-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->coldFactor:D

    mul-double v0, p3, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iget-wide v6, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->warmupPeriodMicros:J

    long-to-double v6, v6

    mul-double/2addr v4, v6

    div-double/2addr v4, p3

    iput-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->thresholdPermits:D

    iget-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->thresholdPermits:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-wide v8, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->warmupPeriodMicros:J

    long-to-double v8, v8

    mul-double/2addr v6, v8

    add-double v8, p3, v0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    sub-double v4, v0, p3

    iget-wide v6, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    iget-wide v8, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->thresholdPermits:D

    sub-double/2addr v6, v8

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->slope:D

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, v2, v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->storedPermits:D

    :goto_0
    return-void

    :cond_0
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-nez v4, :cond_1

    iget-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    :goto_1
    iput-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->storedPermits:D

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->storedPermits:D

    iget-wide v6, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    mul-double/2addr v4, v6

    div-double/2addr v4, v2

    goto :goto_1
.end method

.method storedPermitsToWaitTime(DD)J
    .locals 11

    iget-wide v6, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->thresholdPermits:D

    sub-double v0, p1, v6

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    cmpl-double v6, v0, v6

    if-lez v6, :cond_0

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-direct {p0, v0, v1}, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->permitsToTime(D)D

    move-result-wide v6

    sub-double v8, v0, v4

    invoke-direct {p0, v8, v9}, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->permitsToTime(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    mul-double/2addr v6, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    double-to-long v2, v6

    sub-double/2addr p3, v4

    :cond_0
    long-to-double v6, v2

    iget-wide v8, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->stableIntervalMicros:D

    mul-double/2addr v8, p3

    add-double/2addr v6, v8

    double-to-long v2, v6

    return-wide v2
.end method
