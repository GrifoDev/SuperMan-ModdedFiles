.class public Lcom/android/internal/os/CpuPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "CpuPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CpuPowerCalculator"


# instance fields
.field private final mProfile:Lcom/android/internal/os/PowerProfile;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 36

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v32

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v34

    add-long v32, v32, v34

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    const-wide/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v20

    const/4 v6, 0x0

    :goto_0
    move/from16 v0, v20

    if-ge v6, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v28

    const/16 v25, 0x0

    :goto_1
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p2

    move/from16 v1, v25

    move/from16 v2, p7

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/BatteryStats$Uid;->getTimeAtCpuSpeed(III)J

    move-result-wide v32

    add-long v30, v30, v32

    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v32, 0x1

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v30

    const-wide/16 v14, 0x0

    const/4 v6, 0x0

    :goto_2
    move/from16 v0, v20

    if-ge v6, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v28

    const/16 v25, 0x0

    :goto_3
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p2

    move/from16 v1, v25

    move/from16 v2, p7

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/BatteryStats$Uid;->getTimeAtCpuSpeed(III)J

    move-result-wide v32

    move-wide/from16 v0, v32

    long-to-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v26, v32, v34

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    long-to-double v0, v0

    move-wide/from16 v32, v0

    mul-double v32, v32, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpu(II)D

    move-result-wide v34

    mul-double v16, v32, v34

    add-double v14, v14, v16

    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const-wide v32, 0x414b774000000000L    # 3600000.0

    div-double v32, v14, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    const-wide/16 v18, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v29, v0

    const-string/jumbo v32, "aod.on"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/util/ArrayMap;->size()I

    move-result v23

    const/4 v7, 0x0

    :goto_4
    move/from16 v0, v23

    if-ge v7, v0, :cond_8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/BatteryStats$Uid$Proc;

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v24

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v34

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    move-object/from16 v0, v24

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v32

    move-object/from16 v0, v24

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v34

    add-long v32, v32, v34

    move-object/from16 v0, v24

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v34

    add-long v8, v32, v34

    add-long/2addr v12, v8

    const-wide/16 v32, 0x0

    cmpl-double v29, v4, v32

    if-lez v29, :cond_5

    const-string/jumbo v29, "com.samsung.android.app.aodservice"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_5

    add-long/2addr v10, v8

    :cond_4
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string/jumbo v32, "*"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_7

    :cond_6
    long-to-double v0, v8

    move-wide/from16 v18, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    goto :goto_5

    :cond_7
    long-to-double v0, v8

    move-wide/from16 v32, v0

    cmpg-double v29, v18, v32

    if-gez v29, :cond_4

    const-string/jumbo v29, "*"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_4

    long-to-double v0, v8

    move-wide/from16 v18, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    goto :goto_5

    :cond_8
    const-wide/16 v32, 0x0

    cmp-long v29, v10, v32

    if-lez v29, :cond_9

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    move-wide/from16 v32, v0

    long-to-double v0, v10

    move-wide/from16 v34, v0

    mul-double v32, v32, v34

    long-to-double v0, v12

    move-wide/from16 v34, v0

    div-double v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->aodPowerMah:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->aodPowerMah:D

    move-wide/from16 v34, v0

    sub-double v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    :cond_9
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    move-wide/from16 v34, v0

    cmp-long v29, v32, v34

    if-lez v29, :cond_a

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    :cond_a
    return-void
.end method
