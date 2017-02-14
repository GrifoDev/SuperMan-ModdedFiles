.class public Lcom/android/settings/fuelgauge/FakeUid;
.super Landroid/os/BatteryStats$Uid;
.source "FakeUid.java"


# instance fields
.field private final mUid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    iput p1, p0, Lcom/android/settings/fuelgauge/FakeUid;->mUid:I

    return-void
.end method


# virtual methods
.method public getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCpuPowerMaUs(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFullWifiLockTime(JI)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getJobStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileRadioActiveCount(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMobileRadioActiveTime(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkActivityBytes(II)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNetworkActivityPackets(II)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPackageStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPidStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcessStateTime(IJI)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcessStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Proc;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSensorStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid$Sensor;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemCpuTimeUs(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTimeAtCpuSpeed(III)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/FakeUid;->mUid:I

    return v0
.end method

.method public getUserActivityCount(II)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUserCpuTimeUs(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWakelockStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Wakelock;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiBatchedScanCount(II)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWifiBatchedScanTime(IJI)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiMulticastTime(JI)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiRunningTime(JI)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiScanCount(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWifiScanTime(JI)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hasNetworkActivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasUserActivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public noteActivityPausedLocked(J)V
    .locals 0

    return-void
.end method

.method public noteActivityResumedLocked(J)V
    .locals 0

    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(J)V
    .locals 0

    return-void
.end method

.method public noteFullWifiLockReleasedLocked(J)V
    .locals 0

    return-void
.end method

.method public noteUserActivityLocked(I)V
    .locals 0

    return-void
.end method

.method public noteWifiBatchedScanStartedLocked(IJ)V
    .locals 0

    return-void
.end method

.method public noteWifiBatchedScanStoppedLocked(J)V
    .locals 0

    return-void
.end method

.method public noteWifiMulticastDisabledLocked(J)V
    .locals 0

    return-void
.end method

.method public noteWifiMulticastEnabledLocked(J)V
    .locals 0

    return-void
.end method

.method public noteWifiRunningLocked(J)V
    .locals 0

    return-void
.end method

.method public noteWifiScanStartedLocked(J)V
    .locals 0

    return-void
.end method

.method public noteWifiScanStoppedLocked(J)V
    .locals 0

    return-void
.end method

.method public noteWifiStoppedLocked(J)V
    .locals 0

    return-void
.end method
