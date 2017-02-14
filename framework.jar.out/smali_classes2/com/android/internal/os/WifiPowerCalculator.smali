.class public Lcom/android/internal/os/WifiPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "WifiPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiPowerCalculator"


# instance fields
.field private final mIdleCurrentMa:D

.field private final mRxCurrentMa:D

.field private mTotalAppPowerDrain:D

.field private mTotalAppRunningTime:J

.field private final mTxCurrentMa:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    const-string/jumbo v0, "wifi.controller.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    const-string/jumbo v0, "wifi.controller.tx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    const-string/jumbo v0, "wifi.controller.rx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 16

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    const/4 v10, 0x0

    aget-object v3, v3, v10

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v8

    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    add-long v10, v4, v6

    add-long/2addr v10, v8

    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    long-to-double v10, v4

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    mul-double/2addr v10, v12

    long-to-double v12, v8

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    long-to-double v12, v6

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    const-wide v12, 0x414b774000000000L    # 3600000.0

    div-double/2addr v10, v12

    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    add-double/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    const/4 v3, 0x2

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v3, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v10

    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    const/4 v3, 0x3

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v3, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v10

    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    const/4 v3, 0x2

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v3, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v10

    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    const/4 v3, 0x3

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v3, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v10

    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 18

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    const/4 v12, 0x0

    aget-object v3, v3, v12

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v10

    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v8

    const-wide/16 v12, 0x0

    add-long v14, v4, v8

    add-long/2addr v14, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v12

    long-to-double v12, v12

    const-wide v14, 0x414b774000000000L    # 3600000.0

    div-double v6, v12, v14

    const-wide/16 v12, 0x0

    cmpl-double v3, v6, v12

    if-nez v3, :cond_0

    long-to-double v12, v4

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    mul-double/2addr v12, v14

    long-to-double v14, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    long-to-double v14, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const-wide v14, 0x414b774000000000L    # 3600000.0

    div-double v6, v12, v14

    :cond_0
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    sub-double v14, v6, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    return-void
.end method
