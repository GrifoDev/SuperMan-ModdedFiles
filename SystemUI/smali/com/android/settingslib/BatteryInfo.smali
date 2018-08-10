.class public Lcom/android/settingslib/BatteryInfo;
.super Ljava/lang/Object;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/BatteryInfo$BatteryDataParser;,
        Lcom/android/settingslib/BatteryInfo$Callback;
    }
.end annotation


# instance fields
.field public batteryLevel:I

.field public batteryPercentString:Ljava/lang/String;

.field public chargeLabelString:Ljava/lang/String;

.field public discharging:Z

.field private mCharging:Z

.field private mStats:Landroid/os/BatteryStats;

.field public remainingLabel:Ljava/lang/String;

.field public remainingTimeUs:J

.field private timePeriod:J


# direct methods
.method static synthetic -get0(Lcom/android/settingslib/BatteryInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingslib/BatteryInfo;->mCharging:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settingslib/BatteryInfo;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/settingslib/BatteryInfo;->timePeriod:J

    return-wide p1
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/BatteryInfo;->discharging:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    return-void
.end method

.method private static formatElapsedTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p1

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    add-int/lit8 v3, v3, 0x1e

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v4, 0xe10

    if-lt v3, v4, :cond_0

    div-int/lit16 v0, v3, 0xe10

    mul-int/lit16 v4, v0, 0xe10

    sub-int/2addr v3, v4

    :cond_0
    const/16 v4, 0x3c

    if-lt v3, v4, :cond_1

    div-int/lit8 v1, v3, 0x3c

    mul-int/lit8 v4, v1, 0x3c

    sub-int/2addr v3, v4

    :cond_1
    if-lez v0, :cond_2

    sget v4, Lcom/android/settingslib/R$string;->battery_history_hours_no_seconds:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2
    sget v4, Lcom/android/settingslib/R$string;->battery_history_minutes_no_seconds:I

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JZ)Lcom/android/settingslib/BatteryInfo;
    .locals 23

    new-instance v10, Lcom/android/settingslib/BatteryInfo;

    invoke-direct {v10}, Lcom/android/settingslib/BatteryInfo;-><init>()V

    move-object/from16 v0, p2

    iput-object v0, v10, Lcom/android/settingslib/BatteryInfo;->mStats:Landroid/os/BatteryStats;

    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lcom/android/settingslib/BatteryInfo;->batteryLevel:I

    iget v0, v10, Lcom/android/settingslib/BatteryInfo;->batteryLevel:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    const-string/jumbo v19, "plugged"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_1

    const/16 v19, 0x1

    :goto_0
    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/android/settingslib/BatteryInfo;->mCharging:Z

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    iget-boolean v0, v10, Lcom/android/settingslib/BatteryInfo;->mCharging:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    const/16 v4, 0x23

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "low_power"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "sem_perfomance_mode"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_2

    const/4 v11, 0x1

    :goto_1
    if-eqz v11, :cond_0

    if-nez v13, :cond_0

    const/16 v13, 0x23

    :cond_0
    const-string/jumbo v19, "CustomFrequencyManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/CustomFrequencyManager;

    invoke-virtual {v12, v13}, Landroid/os/CustomFrequencyManager;->getBatteryRemainingUsageTime(I)I

    move-result v14

    sget-object v19, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v0, v14

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v8

    if-lez v14, :cond_3

    iput-wide v8, v10, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v20, 0x3e8

    div-long v20, v8, v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/BatteryInfo;->formatElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "BatteryInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "getTimeString. time = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " timeString "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v19, Lcom/android/settingslib/R$string;->battery_discharging_duration:I

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v18, v20, v21

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/android/settingslib/BatteryInfo;->chargeLabelString:Ljava/lang/String;

    :goto_2
    return-object v10

    :cond_1
    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, v10, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/android/settingslib/BatteryInfo;->chargeLabelString:Ljava/lang/String;

    goto :goto_2

    :cond_4
    invoke-virtual/range {p2 .. p4}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v6

    const-string/jumbo v19, "status"

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/android/settingslib/BatteryInfo;->discharging:Z

    const-wide/16 v20, 0x0

    cmp-long v19, v6, v20

    if-lez v19, :cond_6

    const/16 v19, 0x5

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    iput-wide v6, v10, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v20, 0x3e8

    div-long v20, v6, v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/BatteryInfo;->formatElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    if-eqz p5, :cond_5

    sget v15, Lcom/android/settingslib/R$string;->power_charging_duration_short:I

    :goto_3
    sget v19, Lcom/android/settingslib/R$string;->power_remaining_charging_duration_only:I

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v18, v20, v21

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/android/settingslib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    iget-object v0, v10, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v20, v19, v21

    const/16 v20, 0x1

    aput-object v18, v19, v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/android/settingslib/BatteryInfo;->chargeLabelString:Ljava/lang/String;

    goto/16 :goto_2

    :cond_5
    sget v15, Lcom/android/settingslib/R$string;->power_charging_duration:I

    goto :goto_3

    :cond_6
    sget v19, Lcom/android/settingslib/R$string;->battery_info_status_charging_lower:I

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/android/settingslib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    sget v19, Lcom/android/settingslib/R$string;->power_charging:I

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    iget-object v0, v10, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const/16 v21, 0x1

    aput-object v5, v20, v21

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/android/settingslib/BatteryInfo;->chargeLabelString:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settingslib/BatteryInfo$Callback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settingslib/BatteryInfo$Callback;Z)V

    return-void
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settingslib/BatteryInfo$Callback;Z)V
    .locals 2

    new-instance v0, Lcom/android/settingslib/BatteryInfo$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settingslib/BatteryInfo$2;-><init>(Landroid/content/Context;ZLcom/android/settingslib/BatteryInfo$Callback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/BatteryInfo$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static varargs parse(Landroid/os/BatteryStats;J[Lcom/android/settingslib/BatteryInfo$BatteryDataParser;)V
    .locals 37

    const-wide/16 v28, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v12, 0x0

    const/16 v19, -0x1

    const-wide/16 v6, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v20, 0x0

    const/16 v18, 0x0

    const/16 v26, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v32

    if-eqz v32, :cond_8

    new-instance v27, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v32

    if-eqz v32, :cond_8

    add-int/lit8 v26, v26, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    move-object/from16 v0, v27

    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    :cond_1
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x7

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    :cond_2
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v32, v0

    const-wide v34, 0x39ef8b000L

    add-long v34, v34, v22

    cmp-long v32, v32, v34

    if-gtz v32, :cond_3

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    const-wide/32 v34, 0x493e0

    add-long v34, v34, v14

    cmp-long v32, v32, v34

    if-gez v32, :cond_4

    :cond_3
    const-wide/16 v28, 0x0

    :cond_4
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    const-wide/16 v32, 0x0

    cmp-long v32, v28, v32

    if-nez v32, :cond_5

    sub-long v32, v20, v14

    sub-long v28, v22, v32

    :cond_5
    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v32

    if-eqz v32, :cond_0

    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/16 v32, 0x1

    move/from16 v0, v26

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    :cond_6
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v19, v0

    :cond_7
    move/from16 v18, v26

    move-object/from16 v0, v27

    iget-wide v12, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    goto/16 :goto_0

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    add-long v32, v22, v12

    sub-long v8, v32, v20

    const-wide/16 v32, 0x3e8

    div-long v32, p1, v32

    add-long v10, v8, v32

    const/16 v16, 0x0

    move/from16 v4, v18

    const/16 v17, 0x0

    :goto_1
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_9

    aget-object v32, p3, v17

    move-object/from16 v0, v32

    move-wide/from16 v1, v28

    invoke-interface {v0, v1, v2, v10, v11}, Lcom/android/settingslib/BatteryInfo$BatteryDataParser;->onParsingStarted(JJ)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_9
    cmp-long v32, v8, v28

    if-lez v32, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v32

    if-eqz v32, :cond_11

    new-instance v27, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v32

    if-eqz v32, :cond_11

    move/from16 v0, v16

    if-ge v0, v4, :cond_11

    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v32

    if-eqz v32, :cond_b

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    sub-long v32, v32, v20

    add-long v6, v6, v32

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    sub-long v30, v6, v28

    const-wide/16 v32, 0x0

    cmp-long v32, v30, v32

    if-gez v32, :cond_a

    const-wide/16 v30, 0x0

    :cond_a
    const/16 v17, 0x0

    :goto_3
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_10

    aget-object v32, p3, v17

    move-object/from16 v0, v32

    move-wide/from16 v1, v30

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Lcom/android/settingslib/BatteryInfo$BatteryDataParser;->onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    :cond_b
    move-wide/from16 v24, v6

    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_c

    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x7

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_d

    :cond_c
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v32, v0

    cmp-long v32, v32, v28

    if-ltz v32, :cond_f

    move-object/from16 v0, v27

    iget-wide v6, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    :goto_4
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    :cond_d
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x6

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_10

    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_e

    sub-long v32, v24, v6

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->abs(J)J

    move-result-wide v32

    const-wide/32 v34, 0x36ee80

    cmp-long v32, v32, v34

    if-lez v32, :cond_10

    :cond_e
    const/16 v17, 0x0

    :goto_5
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_10

    aget-object v32, p3, v17

    invoke-interface/range {v32 .. v32}, Lcom/android/settingslib/BatteryInfo$BatteryDataParser;->onDataGap()V

    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    :cond_f
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    sub-long v32, v32, v14

    add-long v6, v28, v32

    goto :goto_4

    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    const/16 v17, 0x0

    :goto_6
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_12

    aget-object v32, p3, v17

    invoke-interface/range {v32 .. v32}, Lcom/android/settingslib/BatteryInfo$BatteryDataParser;->onParsingDone()V

    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    :cond_12
    return-void
.end method


# virtual methods
.method public varargs bindHistory(Lcom/android/settingslib/graph/UsageView;[Lcom/android/settingslib/BatteryInfo$BatteryDataParser;)V
    .locals 12

    new-instance v2, Lcom/android/settingslib/BatteryInfo$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settingslib/BatteryInfo$1;-><init>(Lcom/android/settingslib/BatteryInfo;Lcom/android/settingslib/graph/UsageView;)V

    array-length v6, p2

    add-int/lit8 v6, v6, 0x1

    new-array v3, v6, [Lcom/android/settingslib/BatteryInfo$BatteryDataParser;

    const/4 v1, 0x0

    :goto_0
    array-length v6, p2

    if-ge v1, v6, :cond_0

    aget-object v6, p2, v1

    aput-object v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v6, p2

    aput-object v2, v3, v6

    iget-object v6, p0, Lcom/android/settingslib/BatteryInfo;->mStats:Landroid/os/BatteryStats;

    iget-wide v8, p0, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    invoke-static {v6, v8, v9, v3}, Lcom/android/settingslib/BatteryInfo;->parse(Landroid/os/BatteryStats;J[Lcom/android/settingslib/BatteryInfo$BatteryDataParser;)V

    invoke-virtual {p1}, Lcom/android/settingslib/graph/UsageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v6, Lcom/android/settingslib/R$string;->charge_length_format:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/android/settingslib/BatteryInfo;->timePeriod:J

    invoke-static {v0, v8, v9}, Lcom/android/settingslib/BatteryInfo;->formatElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v4, ""

    iget-wide v6, p0, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    sget v6, Lcom/android/settingslib/R$string;->remaining_length_format:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v0, v8, v9}, Lcom/android/settingslib/BatteryInfo;->formatElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/16 v7, 0x32

    invoke-static {v7}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/16 v7, 0x64

    invoke-static {v7}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-virtual {p1, v6}, Lcom/android/settingslib/graph/UsageView;->setSideLabels([Ljava/lang/CharSequence;)V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {p1, v6}, Lcom/android/settingslib/graph/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    return-void
.end method
