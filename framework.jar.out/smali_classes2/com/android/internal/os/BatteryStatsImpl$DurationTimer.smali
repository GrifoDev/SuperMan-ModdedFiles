.class public Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DurationTimer"
.end annotation


# instance fields
.field mCurrentDurationMs:J

.field mMaxDurationMs:J

.field mStartTimeMs:J

.field mTotalDurationMs:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Clocks;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Clocks;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    invoke-virtual {p6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    invoke-virtual {p6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    return-void
.end method


# virtual methods
.method public getCurrentDurationMsLocked(J)J
    .locals 9

    const-wide/16 v6, 0x3e8

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    mul-long v4, p1, v6

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    div-long/2addr v2, v6

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public getMaxDurationMsLocked(J)J
    .locals 5

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    if-lez v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    return-wide v0

    :cond_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    return-wide v2
.end method

.method public getTotalDurationMsLocked(J)J
    .locals 5

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 3

    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->onTimeStarted(JJJ)V

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3e8

    div-long v0, p5, v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    :cond_0
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 7

    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->onTimeStopped(JJJ)V

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    const-wide/16 v2, 0x3e8

    div-long v2, p5, v2

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    return-void
.end method

.method public reset(Z)Z
    .locals 6

    const-wide/16 v4, 0x3e8

    const-wide/16 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    :goto_0
    return v0

    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    goto :goto_0
.end method

.method public startRunningLocked(J)V
    .locals 7

    const-wide/16 v4, 0x3e8

    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    mul-long v2, p1, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    div-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    :cond_0
    return-void
.end method

.method public stopRunningLocked(J)V
    .locals 5

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    return-void
.end method

.method public writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 4

    const-wide/16 v2, 0x3e8

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    div-long v0, p2, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getMaxDurationMsLocked(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    div-long v0, p2, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getTotalDurationMsLocked(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 4

    const-wide/16 v2, 0x3e8

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    div-long v0, p2, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getMaxDurationMsLocked(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    div-long v0, p2, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getTotalDurationMsLocked(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
