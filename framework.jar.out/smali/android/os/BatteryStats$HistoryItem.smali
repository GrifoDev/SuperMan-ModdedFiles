.class public final Landroid/os/BatteryStats$HistoryItem;
.super Ljava/lang/Object;
.source "BatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryItem"
.end annotation


# static fields
.field public static final CMD_CURRENT_TIME:B = 0x5t

.field public static final CMD_NULL:B = -0x1t

.field public static final CMD_OVERFLOW:B = 0x6t

.field public static final CMD_RESET:B = 0x7t

.field public static final CMD_SHUTDOWN:B = 0x8t

.field public static final CMD_START:B = 0x4t

.field public static final CMD_UPDATE:B = 0x0t

.field public static final EVENT_ACTIVE:I = 0xa

.field public static final EVENT_ALARM:I = 0xd

.field public static final EVENT_ALARM_FINISH:I = 0x400d

.field public static final EVENT_ALARM_START:I = 0x800d

.field public static final EVENT_CHECKIN_COUNT:I = 0x13

.field public static final EVENT_COLLECT_EXTERNAL_STATS:I = 0xe

.field public static final EVENT_CONNECTIVITY_CHANGED:I = 0x9

.field public static final EVENT_COUNT:I = 0x14

.field public static final EVENT_FLAG_FINISH:I = 0x4000

.field public static final EVENT_FLAG_START:I = 0x8000

.field public static final EVENT_FOREGROUND:I = 0x2

.field public static final EVENT_FOREGROUND_FINISH:I = 0x4002

.field public static final EVENT_FOREGROUND_START:I = 0x8002

.field public static final EVENT_JOB:I = 0x6

.field public static final EVENT_JOB_FINISH:I = 0x4006

.field public static final EVENT_JOB_START:I = 0x8006

.field public static final EVENT_NONE:I = 0x0

.field public static final EVENT_PACKAGE_ACTIVE:I = 0x10

.field public static final EVENT_PACKAGE_INACTIVE:I = 0xf

.field public static final EVENT_PACKAGE_INSTALLED:I = 0xb

.field public static final EVENT_PACKAGE_UNINSTALLED:I = 0xc

.field public static final EVENT_PROC:I = 0x1

.field public static final EVENT_PROC_FINISH:I = 0x4001

.field public static final EVENT_PROC_START:I = 0x8001

.field public static final EVENT_SCREEN_WAKE_UP:I = 0x12

.field public static final EVENT_SYNC:I = 0x4

.field public static final EVENT_SYNC_FINISH:I = 0x4004

.field public static final EVENT_SYNC_START:I = 0x8004

.field public static final EVENT_TEMP_WHITELIST:I = 0x11

.field public static final EVENT_TEMP_WHITELIST_FINISH:I = 0x4011

.field public static final EVENT_TEMP_WHITELIST_START:I = 0x8011

.field public static final EVENT_TOP:I = 0x3

.field public static final EVENT_TOP_FINISH:I = 0x4003

.field public static final EVENT_TOP_START:I = 0x8003

.field public static final EVENT_TYPE_MASK:I = -0xc001

.field public static final EVENT_USER_FOREGROUND:I = 0x8

.field public static final EVENT_USER_FOREGROUND_FINISH:I = 0x4008

.field public static final EVENT_USER_FOREGROUND_START:I = 0x8008

.field public static final EVENT_USER_RUNNING:I = 0x7

.field public static final EVENT_USER_RUNNING_FINISH:I = 0x4007

.field public static final EVENT_USER_RUNNING_START:I = 0x8007

.field public static final EVENT_WAKEUP_AP:I = 0x13

.field public static final EVENT_WAKE_LOCK:I = 0x5

.field public static final EVENT_WAKE_LOCK_FINISH:I = 0x4005

.field public static final EVENT_WAKE_LOCK_START:I = 0x8005

.field public static final MOST_INTERESTING_STATES:I = 0x180000

.field public static final MOST_INTERESTING_STATES2:I = -0x68400000

.field public static final SETTLE_TO_ZERO_STATES:I = -0x190000

.field public static final SETTLE_TO_ZERO_STATES2:I = 0x683f0000

.field public static final STATE2_BLUETOOTH_ON_FLAG:I = 0x400000

.field public static final STATE2_BLUETOOTH_SCAN_FLAG:I = 0x100000

.field public static final STATE2_CAMERA_FLAG:I = 0x200000

.field public static final STATE2_CHARGING_FLAG:I = 0x1000000

.field public static final STATE2_DEVICE_IDLE_MASK:I = 0x6000000

.field public static final STATE2_DEVICE_IDLE_SHIFT:I = 0x19

.field public static final STATE2_FLASHLIGHT_FLAG:I = 0x8000000

.field public static final STATE2_PHONE_IN_CALL_FLAG:I = 0x800000

.field public static final STATE2_POWER_SAVE_FLAG:I = -0x80000000

.field public static final STATE2_VIDEO_ON_FLAG:I = 0x40000000

.field public static final STATE2_WIFI_ON_FLAG:I = 0x10000000

.field public static final STATE2_WIFI_RUNNING_FLAG:I = 0x20000000

.field public static final STATE2_WIFI_SIGNAL_STRENGTH_MASK:I = 0x70

.field public static final STATE2_WIFI_SIGNAL_STRENGTH_SHIFT:I = 0x4

.field public static final STATE2_WIFI_SUPPL_STATE_MASK:I = 0xf

.field public static final STATE2_WIFI_SUPPL_STATE_SHIFT:I = 0x0

.field public static final STATE_AUDIO_ON_FLAG:I = 0x400000

.field public static final STATE_BATTERY_PLUGGED_FLAG:I = 0x80000

.field public static final STATE_BRIGHTNESS_MASK:I = 0x7

.field public static final STATE_BRIGHTNESS_SHIFT:I = 0x0

.field public static final STATE_CPU_RUNNING_FLAG:I = -0x80000000

.field public static final STATE_DATA_CONNECTION_MASK:I = 0x3e00

.field public static final STATE_DATA_CONNECTION_SHIFT:I = 0x9

.field public static final STATE_GPS_ON_FLAG:I = 0x20000000

.field public static final STATE_MOBILE_RADIO_ACTIVE_FLAG:I = 0x2000000

.field public static final STATE_PHONE_SCANNING_FLAG:I = 0x200000

.field public static final STATE_PHONE_SIGNAL_STRENGTH_MASK:I = 0x38

.field public static final STATE_PHONE_SIGNAL_STRENGTH_SHIFT:I = 0x3

.field public static final STATE_PHONE_STATE_MASK:I = 0x1c0

.field public static final STATE_PHONE_STATE_SHIFT:I = 0x6

.field private static final STATE_RESERVED_0:I = 0x1000000

.field public static final STATE_SCREEN_ON_FLAG:I = 0x100000

.field public static final STATE_SENSOR_ON_FLAG:I = 0x800000

.field public static final STATE_WAKE_LOCK_FLAG:I = 0x40000000

.field public static final STATE_WIFI_FULL_LOCK_FLAG:I = 0x10000000

.field public static final STATE_WIFI_MULTICAST_ON_FLAG:I = 0x10000

.field public static final STATE_WIFI_RADIO_ACTIVE_FLAG:I = 0x4000000

.field public static final STATE_WIFI_SCAN_FLAG:I = 0x8000000


# instance fields
.field public ap_temp:B

.field public bat_temp:B

.field public batteryChargeUAh:I

.field public batteryHealth:B

.field public batteryLevel:B

.field public batteryPlugType:B

.field public batterySecEvent:B

.field public batteryStatus:B

.field public batteryTemperature:S

.field public batteryVoltage:C

.field public chg_temp:B

.field public cmd:B

.field public current:S

.field public currentTime:J

.field public eventCode:I

.field public eventTag:Landroid/os/BatteryStats$HistoryTag;

.field public final localEventTag:Landroid/os/BatteryStats$HistoryTag;

.field public final localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

.field public final localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

.field public next:Landroid/os/BatteryStats$HistoryItem;

.field public numReadInts:I

.field public pa_temp:B

.field public pst_temp:B

.field public states:I

.field public states2:I

.field public stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field public time:J

.field public wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

.field public wakelockTag:Landroid/os/BatteryStats$HistoryTag;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1151
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 1356
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1357
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1358
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1360
    return-void
.end method

.method public constructor <init>(JLandroid/os/Parcel;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "src"    # Landroid/os/Parcel;

    .prologue
    .line 1363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1151
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 1356
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1357
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1358
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1364
    iput-wide p1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 1365
    const/4 v0, 0x2

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 1366
    invoke-virtual {p0, p3}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 1363
    return-void
.end method

.method private setToCommon(Landroid/os/BatteryStats$HistoryItem;)V
    .locals 3
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    const/4 v2, 0x0

    .line 1516
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 1517
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 1518
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 1519
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 1520
    iget-short v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iput-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 1521
    iget-char v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 1523
    iget-short v0, p1, Landroid/os/BatteryStats$HistoryItem;->current:S

    iput-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->current:S

    .line 1524
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    .line 1525
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->pst_temp:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->pst_temp:B

    .line 1526
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->bat_temp:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->bat_temp:B

    .line 1527
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->chg_temp:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->chg_temp:B

    .line 1528
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    .line 1530
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:B

    .line 1531
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    .line 1532
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1533
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1534
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_0

    .line 1535
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1536
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 1540
    :goto_0
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_1

    .line 1541
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1542
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 1546
    :goto_1
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1547
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_2

    .line 1548
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1549
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 1553
    :goto_2
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1515
    return-void

    .line 1538
    :cond_0
    iput-object v2, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_0

    .line 1544
    :cond_1
    iput-object v2, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_1

    .line 1551
    :cond_2
    iput-object v2, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1477
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 1478
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 1479
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 1480
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 1481
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 1482
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 1483
    iput-short v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 1484
    iput-char v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 1486
    iput-short v2, p0, Landroid/os/BatteryStats$HistoryItem;->current:S

    .line 1487
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    .line 1488
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->pst_temp:B

    .line 1489
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->bat_temp:B

    .line 1490
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->chg_temp:B

    .line 1491
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    .line 1493
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:B

    .line 1494
    iput v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    .line 1495
    iput v2, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1496
    iput v2, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1497
    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1498
    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1499
    iput v2, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1500
    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1476
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1370
    const/4 v0, 0x0

    return v0
.end method

.method public isDeltaData()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1157
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 10
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x0

    const v8, 0xffff

    const/4 v7, 0x0

    .line 1421
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    .line 1422
    .local v5, "start":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1423
    .local v0, "bat":I
    and-int/lit16 v6, v0, 0xff

    int-to-byte v6, v6

    iput-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 1424
    shr-int/lit8 v6, v0, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    iput-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 1425
    shr-int/lit8 v6, v0, 0x10

    and-int/lit8 v6, v6, 0xf

    int-to-byte v6, v6

    iput-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 1426
    shr-int/lit8 v6, v0, 0x14

    and-int/lit8 v6, v6, 0xf

    int-to-byte v6, v6

    iput-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 1427
    shr-int/lit8 v6, v0, 0x18

    and-int/lit8 v6, v6, 0xf

    int-to-byte v6, v6

    iput-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 1428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1429
    .local v1, "bat2":I
    and-int v6, v1, v8

    int-to-short v6, v6

    iput-short v6, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 1430
    shr-int/lit8 v6, v1, 0x10

    and-int/2addr v6, v8

    int-to-char v6, v6

    iput-char v6, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 1432
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1433
    .local v2, "bat3":I
    and-int v6, v2, v8

    int-to-short v6, v6

    iput-short v6, p0, Landroid/os/BatteryStats$HistoryItem;->current:S

    .line 1434
    shr-int/lit8 v6, v2, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    iput-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    .line 1435
    shr-int/lit8 v6, v2, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    iput-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->pst_temp:B

    .line 1436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1437
    .local v3, "bat4":I
    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    iput-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    .line 1438
    shr-int/lit8 v6, v3, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    iput-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->chg_temp:B

    .line 1439
    shr-int/lit8 v6, v3, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    iput-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->bat_temp:B

    .line 1442
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1443
    .local v4, "bat5":I
    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    iput-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:B

    .line 1445
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    .line 1446
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1448
    const/high16 v6, 0x10000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_1

    .line 1449
    iget-object v6, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v6, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1450
    iget-object v6, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v6, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    .line 1454
    :goto_0
    const/high16 v6, 0x20000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_2

    .line 1455
    iget-object v6, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v6, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1456
    iget-object v6, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v6, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    .line 1460
    :goto_1
    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v6, v0

    if-eqz v6, :cond_3

    .line 1461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1462
    iget-object v6, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v6, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1463
    iget-object v6, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v6, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    .line 1468
    :goto_2
    iget-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v7, 0x5

    if-eq v6, v7, :cond_0

    iget-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v7, 0x7

    if-ne v6, v7, :cond_4

    .line 1469
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1473
    :goto_3
    iget v6, p0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    iput v6, p0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 1420
    return-void

    .line 1452
    :cond_1
    iput-object v9, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_0

    .line 1458
    :cond_2
    iput-object v9, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_1

    .line 1465
    :cond_3
    iput v7, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1466
    iput-object v9, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_2

    .line 1471
    :cond_4
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    goto :goto_3
.end method

.method public same(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 3
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    const/4 v2, 0x0

    .line 1579
    invoke-virtual {p0, p1}, Landroid/os/BatteryStats$HistoryItem;->sameNonEvent(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eq v0, v1, :cond_1

    .line 1580
    :cond_0
    return v2

    .line 1582
    :cond_1
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eq v0, v1, :cond_4

    .line 1583
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v0, :cond_3

    .line 1584
    :cond_2
    return v2

    .line 1586
    :cond_3
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1587
    return v2

    .line 1590
    :cond_4
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eq v0, v1, :cond_7

    .line 1591
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v0, :cond_6

    .line 1592
    :cond_5
    return v2

    .line 1594
    :cond_6
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1595
    return v2

    .line 1598
    :cond_7
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-eq v0, v1, :cond_a

    .line 1599
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_8

    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v0, :cond_9

    .line 1600
    :cond_8
    return v2

    .line 1602
    :cond_9
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1603
    return v2

    .line 1606
    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method public sameNonEvent(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 6
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    const/4 v0, 0x0

    .line 1557
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v1, v2, :cond_0

    .line 1558
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-ne v1, v2, :cond_0

    .line 1559
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-ne v1, v2, :cond_0

    .line 1560
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-ne v1, v2, :cond_0

    .line 1561
    iget-short v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iget-short v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-ne v1, v2, :cond_0

    .line 1562
    iget-char v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iget-char v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-ne v1, v2, :cond_0

    .line 1564
    iget-short v1, p0, Landroid/os/BatteryStats$HistoryItem;->current:S

    iget-short v2, p1, Landroid/os/BatteryStats$HistoryItem;->current:S

    if-ne v1, v2, :cond_0

    .line 1565
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    if-ne v1, v2, :cond_0

    .line 1566
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->pst_temp:B

    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->pst_temp:B

    if-ne v1, v2, :cond_0

    .line 1567
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->bat_temp:B

    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->bat_temp:B

    if-ne v1, v2, :cond_0

    .line 1568
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->chg_temp:B

    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->chg_temp:B

    if-ne v1, v2, :cond_0

    .line 1569
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    if-ne v1, v2, :cond_0

    .line 1571
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:B

    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:B

    if-ne v1, v2, :cond_0

    .line 1572
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    if-ne v1, v2, :cond_0

    .line 1573
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-ne v1, v2, :cond_0

    .line 1574
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    if-ne v1, v2, :cond_0

    .line 1575
    iget-wide v2, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-wide v4, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1557
    :cond_0
    return v0
.end method

.method public setTo(JBLandroid/os/BatteryStats$HistoryItem;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "cmd"    # B
    .param p4, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 1510
    iput-wide p1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 1511
    iput-byte p3, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 1512
    invoke-direct {p0, p4}, Landroid/os/BatteryStats$HistoryItem;->setToCommon(Landroid/os/BatteryStats$HistoryItem;)V

    .line 1509
    return-void
.end method

.method public setTo(Landroid/os/BatteryStats$HistoryItem;)V
    .locals 2
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 1504
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 1505
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 1506
    invoke-direct {p0, p1}, Landroid/os/BatteryStats$HistoryItem;->setToCommon(Landroid/os/BatteryStats$HistoryItem;)V

    .line 1503
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/high16 v8, 0xff0000

    const v7, 0xffff

    const v6, 0xff00

    const/4 v2, 0x0

    .line 1374
    iget-wide v4, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1375
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    and-int/lit16 v1, v1, 0xff

    .line 1376
    iget-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v6

    .line 1375
    or-int/2addr v1, v3

    .line 1377
    iget-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    shl-int/lit8 v3, v3, 0x10

    const/high16 v4, 0xf0000

    and-int/2addr v3, v4

    .line 1375
    or-int/2addr v1, v3

    .line 1378
    iget-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    shl-int/lit8 v3, v3, 0x14

    const/high16 v4, 0xf00000

    and-int/2addr v3, v4

    .line 1375
    or-int/2addr v1, v3

    .line 1379
    iget-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    shl-int/lit8 v3, v3, 0x18

    const/high16 v4, 0xf000000

    and-int/2addr v3, v4

    .line 1375
    or-int/2addr v3, v1

    .line 1380
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_6

    const/high16 v1, 0x10000000

    .line 1375
    :goto_0
    or-int/2addr v3, v1

    .line 1381
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_7

    const/high16 v1, 0x20000000

    .line 1375
    :goto_1
    or-int/2addr v1, v3

    .line 1382
    iget v3, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    .line 1375
    :cond_0
    or-int v0, v1, v2

    .line 1383
    .local v0, "bat":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1384
    iget-short v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    and-int/2addr v1, v7

    .line 1385
    iget-char v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, -0x10000

    and-int/2addr v2, v3

    .line 1384
    or-int v0, v1, v2

    .line 1386
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1388
    iget-short v1, p0, Landroid/os/BatteryStats$HistoryItem;->current:S

    and-int/2addr v1, v7

    .line 1389
    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v8

    .line 1388
    or-int/2addr v1, v2

    .line 1390
    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->pst_temp:B

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    .line 1388
    or-int v0, v1, v2

    .line 1391
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1393
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    and-int/lit16 v1, v1, 0xff

    .line 1394
    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->chg_temp:B

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v6

    .line 1393
    or-int/2addr v1, v2

    .line 1395
    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->bat_temp:B

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v8

    .line 1393
    or-int v0, v1, v2

    .line 1396
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1399
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:B

    and-int/lit16 v0, v1, 0xff

    .line 1400
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1402
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1403
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1404
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1405
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_1

    .line 1406
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v1, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1408
    :cond_1
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_2

    .line 1409
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v1, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1411
    :cond_2
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v1, :cond_3

    .line 1412
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1413
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v1, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1415
    :cond_3
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 1416
    :cond_4
    iget-wide v2, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1373
    :cond_5
    return-void

    .end local v0    # "bat":I
    :cond_6
    move v1, v2

    .line 1380
    goto/16 :goto_0

    :cond_7
    move v1, v2

    .line 1381
    goto/16 :goto_1
.end method
