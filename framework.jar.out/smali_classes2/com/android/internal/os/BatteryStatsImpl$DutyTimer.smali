.class public Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DutyTimer"
.end annotation


# instance fields
.field mAcquireTime:J

.field mDutyCycle:I

.field mNesting:I

.field final mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

.field mUpdateTime:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 3

    const/16 v2, 0x64

    invoke-direct {p0, p1, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-virtual {p5}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    invoke-virtual {p5}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    return-void
.end method


# virtual methods
.method protected computeCurrentCountLocked()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mCount:I

    return v0
.end method

.method protected computeRunTimeLocked(J)J
    .locals 7

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTotalTime:J

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    sub-long v0, p1, v0

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    int-to-long v4, v4

    mul-long/2addr v0, v4

    const-wide/16 v4, 0x64

    div-long/2addr v0, v4

    :goto_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public detach()V
    .locals 0

    invoke-super {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->detach()V

    return-void
.end method

.method public isRunningLocked()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mNesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mAcquireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mDutyCycle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mNesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 1

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-lez v0, :cond_0

    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStopped(JJJ)V

    iput-wide p5, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    :cond_0
    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    return-void
.end method

.method public reset(Z)Z
    .locals 6

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-gtz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(Z)Z

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move p1, v1

    goto :goto_1
.end method

.method public setDutyCycle(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    return-void
.end method

.method public setMark(J)V
    .locals 9

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p1

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTotalTime:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    sub-long v4, v0, v4

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTotalTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    :cond_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTotalTime:J

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTimeBeforeMark:J

    return-void
.end method

.method public startRunningLocked(J)V
    .locals 7

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p1

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mCount:I

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTotalTime:J

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    goto :goto_0
.end method

.method public stopAllRunningLocked(J)V
    .locals 1

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->stopRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public stopRunningLocked(J)V
    .locals 7

    const/4 v6, 0x0

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p1

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->computeRunTimeLocked(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTotalTime:J

    iput v6, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTotalTime:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mCount:I

    :cond_1
    return-void
.end method

.method public writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
