.class public Lcom/android/internal/os/MemoryPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "MemoryPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "MemoryPowerCalculator"


# instance fields
.field private final powerAverages:[D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const-string/jumbo v2, "memory.bandwidths"

    invoke-virtual {p1, v2}, Lcom/android/internal/os/PowerProfile;->getNumElements(Ljava/lang/String;)I

    move-result v1

    new-array v2, v1, [D

    iput-object v2, p0, Lcom/android/internal/os/MemoryPowerCalculator;->powerAverages:[D

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/MemoryPowerCalculator;->powerAverages:[D

    const-string/jumbo v3, "memory.bandwidths"

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v4

    aput-wide v4, v2, v0

    iget-object v2, p0, Lcom/android/internal/os/MemoryPowerCalculator;->powerAverages:[D

    aget-wide v2, v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 0

    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 21

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    move-result-object v5

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v4, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/MemoryPowerCalculator;->powerAverages:[D

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/MemoryPowerCalculator;->powerAverages:[D

    move-object/from16 v16, v0

    invoke-virtual {v5, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    aget-wide v6, v16, v17

    invoke-virtual {v5, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/BatteryStats$Timer;

    move-object/from16 v0, v16

    move-wide/from16 v1, p3

    move/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v10

    long-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v16, v16, v6

    const-wide v18, 0x40ed4c0000000000L    # 60000.0

    div-double v8, v16, v18

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    div-double v16, v8, v16

    add-double v12, v12, v16

    add-long/2addr v14, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    return-void
.end method
