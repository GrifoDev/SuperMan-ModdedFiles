.class public Lcom/android/internal/os/WifiPowerEstimator;
.super Lcom/android/internal/os/PowerCalculator;
.source "WifiPowerEstimator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiPowerEstimator"


# instance fields
.field private mTotalAppWifiRunningTimeMs:J

.field private final mWifiPowerBatchScan:D

.field private final mWifiPowerOn:D

.field private final mWifiPowerPerPacket:D

.field private final mWifiPowerScan:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    invoke-static {p1}, Lcom/android/internal/os/WifiPowerEstimator;->getWifiPowerPerPacket(Lcom/android/internal/os/PowerProfile;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerPerPacket:D

    const-string/jumbo v0, "wifi.on"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerOn:D

    const-string/jumbo v0, "wifi.scan"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerScan:D

    const-string/jumbo v0, "wifi.batchedscan"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerBatchScan:D

    return-void
.end method

.method private static getWifiPowerPerPacket(Lcom/android/internal/os/PowerProfile;)D
    .locals 8

    const-wide/32 v0, 0xf4240

    const-string/jumbo v4, "wifi.active"

    invoke-virtual {p0, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x40ac200000000000L    # 3600.0

    div-double v2, v4, v6

    const-wide v4, 0x404e848000000000L    # 61.03515625

    div-double v4, v2, v4

    return-wide v4
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 25

    const/4 v9, 0x2

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v9, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    const/4 v9, 0x3

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v9, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    const/4 v9, 0x2

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v9, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    const/4 v9, 0x3

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v9, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerPerPacket:D

    move-wide/from16 v22, v0

    mul-double v14, v20, v22

    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    move/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerOn:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    const-wide v22, 0x414b774000000000L    # 3600000.0

    div-double v12, v20, v22

    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    move/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v18, v20, v22

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerScan:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    const-wide v22, 0x414b774000000000L    # 3600000.0

    div-double v16, v20, v22

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x5

    if-ge v8, v9, :cond_0

    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    move/from16 v3, p7

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v6, v20, v22

    long-to-double v0, v6

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerBatchScan:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    const-wide v22, 0x414b774000000000L    # 3600000.0

    div-double v4, v20, v22

    add-double/2addr v10, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    add-double v20, v14, v12

    add-double v20, v20, v16

    add-double v20, v20, v10

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 11

    move/from16 v0, p7

    invoke-virtual {p2, p3, p4, v0}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    iget-wide v6, p0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    sub-long v6, v4, v6

    long-to-double v6, v6

    iget-wide v8, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerOn:D

    mul-double/2addr v6, v8

    const-wide v8, 0x414b774000000000L    # 3600000.0

    div-double v2, v6, v8

    iput-wide v4, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    return-void
.end method
