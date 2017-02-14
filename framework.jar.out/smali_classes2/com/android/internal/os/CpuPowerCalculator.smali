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
    .locals 30

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v26

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v28

    add-long v26, v26, v28

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v14

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v22

    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, p7

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/BatteryStats$Uid;->getTimeAtCpuSpeed(III)J

    move-result-wide v26

    add-long v24, v24, v26

    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v26, 0x1

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v22

    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, p7

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/BatteryStats$Uid;->getTimeAtCpuSpeed(III)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v20, v26, v28

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpu(II)D

    move-result-wide v28

    mul-double v10, v26, v28

    add-double/2addr v8, v10

    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const-wide v26, 0x414b774000000000L    # 3600000.0

    div-double v26, v8, v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    const-wide/16 v12, 0x0

    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    move-result v17

    const/4 v5, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v5, v0, :cond_7

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/BatteryStats$Uid$Proc;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v28

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    move-object/from16 v0, v18

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v26

    move-object/from16 v0, v18

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v28

    add-long v26, v26, v28

    move-object/from16 v0, v18

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v28

    add-long v6, v26, v28

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string/jumbo v26, "*"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    :cond_4
    long-to-double v12, v6

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    :cond_5
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    long-to-double v0, v6

    move-wide/from16 v26, v0

    cmpg-double v23, v12, v26

    if-gez v23, :cond_5

    const-string/jumbo v23, "*"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_5

    long-to-double v12, v6

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    goto :goto_5

    :cond_7
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    move-wide/from16 v28, v0

    cmp-long v23, v26, v28

    if-lez v23, :cond_8

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    :cond_8
    return-void
.end method
