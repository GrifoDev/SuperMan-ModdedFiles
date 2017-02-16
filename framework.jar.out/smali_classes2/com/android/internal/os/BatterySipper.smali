.class public Lcom/android/internal/os/BatterySipper;
.super Ljava/lang/Object;
.source "BatterySipper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatterySipper$DrainType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/os/BatterySipper;",
        ">;"
    }
.end annotation


# instance fields
.field public bluetoothPowerMah:D

.field public bluetoothRunningTimeMs:J

.field public btRxBytes:J

.field public btTxBytes:J

.field public cameraPowerMah:D

.field public cameraTimeMs:J

.field public cpuFgTimeMs:J

.field public cpuPowerMah:D

.field public cpuTimeMs:J

.field public drainType:Lcom/android/internal/os/BatterySipper$DrainType;

.field public flashlightPowerMah:D

.field public flashlightTimeMs:J

.field public gpsPowerMah:D

.field public gpsTimeMs:J

.field public gpuPowerMah:D

.field public mPackages:[Ljava/lang/String;

.field public mobileActive:J

.field public mobileActiveCount:I

.field public mobileRadioPowerMah:D

.field public mobileRxBytes:J

.field public mobileRxPackets:J

.field public mobileTxBytes:J

.field public mobileTxPackets:J

.field public mobilemspp:D

.field public noCoveragePercent:D

.field public packageWithHighestDrain:Ljava/lang/String;

.field public percent:D

.field public sensorPowerMah:D

.field public totalPowerMah:D

.field public uidObj:Landroid/os/BatteryStats$Uid;

.field public usagePowerMah:D

.field public usageTimeMs:J

.field public userId:I

.field public wakeLockPowerMah:D

.field public wakeLockTimeMs:J

.field public wifiPowerMah:D

.field public wifiRunningTimeMs:J

.field public wifiRxBytes:J

.field public wifiRxPackets:J

.field public wifiTxBytes:J

.field public wifiTxPackets:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V
    .locals 1
    .param p1, "drainType"    # Lcom/android/internal/os/BatterySipper$DrainType;
    .param p2, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p3, "value"    # D

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-wide p3, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 99
    iput-object p1, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 100
    iput-object p2, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 97
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/os/BatterySipper;)V
    .locals 4
    .param p1, "other"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 143
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    .line 144
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    .line 145
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    .line 146
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    .line 147
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    .line 148
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    .line 149
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    .line 150
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    .line 151
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    .line 152
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->bluetoothRunningTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->bluetoothRunningTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->bluetoothRunningTimeMs:J

    .line 153
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    .line 154
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    .line 155
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 156
    iget v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    iget v1, p1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    .line 157
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    .line 158
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    .line 159
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    .line 160
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    .line 161
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    .line 162
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    .line 163
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->btRxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->btRxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->btRxBytes:J

    .line 164
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->btTxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->btTxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->btTxBytes:J

    .line 165
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 166
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    .line 167
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    .line 169
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpuPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpuPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpuPowerMah:D

    .line 171
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    .line 172
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    .line 173
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    .line 174
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    .line 175
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    .line 176
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    .line 141
    return-void
.end method

.method public compareTo(Lcom/android/internal/os/BatterySipper;)I
    .locals 4
    .param p1, "other"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v1, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v1, :cond_0

    .line 114
    const/4 v0, 0x1

    return v0

    .line 115
    :cond_0
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v1, :cond_1

    .line 116
    const/4 v0, -0x1

    return v0

    .line 120
    :cond_1
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 109
    check-cast p1, Lcom/android/internal/os/BatterySipper;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatterySipper;->compareTo(Lcom/android/internal/os/BatterySipper;)I

    move-result v0

    return v0
.end method

.method public computeMobilemspp()V
    .locals 6

    .prologue
    .line 104
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    iget-wide v4, p0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long v0, v2, v4

    .line 105
    .local v0, "packets":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    :goto_0
    iput-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    .line 103
    return-void

    .line 105
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getPackages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    return v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    return v0
.end method

.method public sumPower()D
    .locals 4

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    add-double/2addr v0, v2

    .line 185
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    .line 184
    add-double/2addr v0, v2

    .line 185
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    .line 184
    add-double/2addr v0, v2

    .line 185
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    .line 184
    add-double/2addr v0, v2

    .line 185
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    .line 184
    add-double/2addr v0, v2

    .line 186
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    .line 184
    add-double/2addr v0, v2

    .line 186
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    .line 184
    add-double/2addr v0, v2

    .line 186
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->gpuPowerMah:D

    .line 184
    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    return-wide v0
.end method
