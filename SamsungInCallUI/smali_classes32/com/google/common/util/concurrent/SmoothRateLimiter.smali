.class abstract Lcom/google/common/util/concurrent/SmoothRateLimiter;
.super Lcom/google/common/util/concurrent/RateLimiter;
.source "SmoothRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/SmoothRateLimiter$1;,
        Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;,
        Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;
    }
.end annotation


# instance fields
.field maxPermits:D

.field private nextFreeTicketMicros:J

.field stableIntervalMicros:D

.field storedPermits:D


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/RateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;Lcom/google/common/util/concurrent/SmoothRateLimiter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/SmoothRateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)V

    return-void
.end method


# virtual methods
.method abstract coolDownIntervalMicros()D
.end method

.method final doGetRate()D
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->stableIntervalMicros:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method abstract doSetRate(DD)V
.end method

.method final doSetRate(DJ)V
    .locals 7

    invoke-virtual {p0, p3, p4}, Lcom/google/common/util/concurrent/SmoothRateLimiter;->resync(J)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v2

    long-to-double v2, v2

    div-double v0, v2, p1

    iput-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->stableIntervalMicros:D

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/common/util/concurrent/SmoothRateLimiter;->doSetRate(DD)V

    return-void
.end method

.method final queryEarliestAvailable(J)J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    return-wide v0
.end method

.method final reserveEarliestAvailable(IJ)J
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/SmoothRateLimiter;->resync(J)V

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    move/from16 v0, p1

    int-to-double v14, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    move/from16 v0, p1

    int-to-double v14, v0

    sub-double v6, v14, v10

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v10, v11}, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermitsToWaitTime(DD)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->stableIntervalMicros:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v6

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    :try_start_0
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    invoke-static {v14, v15, v12, v13}, Lcom/google/common/math/LongMath;->checkedAdd(JJ)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    sub-double/2addr v14, v10

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    return-wide v8

    :catch_0
    move-exception v4

    const-wide v14, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    goto :goto_0
.end method

.method resync(J)V
    .locals 9

    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->maxPermits:D

    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    iget-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/SmoothRateLimiter;->coolDownIntervalMicros()D

    move-result-wide v6

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    iput-wide p1, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    :cond_0
    return-void
.end method

.method abstract storedPermitsToWaitTime(DD)J
.end method
