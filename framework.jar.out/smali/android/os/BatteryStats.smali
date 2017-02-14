.class public abstract Landroid/os/BatteryStats;
.super Ljava/lang/Object;
.source "BatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$BitDescription;,
        Landroid/os/BatteryStats$ControllerActivityCounter;,
        Landroid/os/BatteryStats$Counter;,
        Landroid/os/BatteryStats$DailyItem;,
        Landroid/os/BatteryStats$HistoryEventTracker;,
        Landroid/os/BatteryStats$HistoryItem;,
        Landroid/os/BatteryStats$HistoryPrinter;,
        Landroid/os/BatteryStats$HistoryStepDetails;,
        Landroid/os/BatteryStats$HistoryTag;,
        Landroid/os/BatteryStats$LevelStepTracker;,
        Landroid/os/BatteryStats$LongCounter;,
        Landroid/os/BatteryStats$PackageChange;,
        Landroid/os/BatteryStats$Timer;,
        Landroid/os/BatteryStats$TimerEntry;,
        Landroid/os/BatteryStats$Uid;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I = null

.field private static final APK_DATA:Ljava/lang/String; = "apk"

.field private static final AUDIO_DATA:Ljava/lang/String; = "aud"

.field public static final AUDIO_TURNED_ON:I = 0xf

.field private static final BATTERY_DATA:Ljava/lang/String; = "bt"

.field private static final BATTERY_DISCHARGE_DATA:Ljava/lang/String; = "dc"

.field private static final BATTERY_LEVEL_DATA:Ljava/lang/String; = "lv"

.field private static final BATTERY_STATS_CHECKIN_VERSION:I = 0x9

.field private static final BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "ble"

.field private static final BLUETOOTH_MISC_DATA:Ljava/lang/String; = "blem"

.field public static final BLUETOOTH_SCAN_ON:I = 0x13

.field private static final BYTES_PER_GB:J = 0x40000000L

.field private static final BYTES_PER_KB:J = 0x400L

.field private static final BYTES_PER_MB:J = 0x100000L

.field private static final CAMERA_DATA:Ljava/lang/String; = "cam"

.field public static final CAMERA_TURNED_ON:I = 0x11

.field private static final CHARGE_STEP_DATA:Ljava/lang/String; = "csd"

.field private static final CHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "ctr"

.field static final CHECKIN_VERSION:Ljava/lang/String; = "18"

.field private static final CPU_DATA:Ljava/lang/String; = "cpu"

.field public static final DATA_CONNECTION_1xRTT:I = 0x7

.field public static final DATA_CONNECTION_CDMA:I = 0x4

.field private static final DATA_CONNECTION_COUNT_DATA:Ljava/lang/String; = "dcc"

.field public static final DATA_CONNECTION_EDGE:I = 0x2

.field public static final DATA_CONNECTION_EHRPD:I = 0xe

.field public static final DATA_CONNECTION_EVDO_0:I = 0x5

.field public static final DATA_CONNECTION_EVDO_A:I = 0x6

.field public static final DATA_CONNECTION_EVDO_B:I = 0xc

.field public static final DATA_CONNECTION_GPRS:I = 0x1

.field public static final DATA_CONNECTION_HSDPA:I = 0x8

.field public static final DATA_CONNECTION_HSPA:I = 0xa

.field public static final DATA_CONNECTION_HSPAP:I = 0xf

.field public static final DATA_CONNECTION_HSUPA:I = 0x9

.field public static final DATA_CONNECTION_IDEN:I = 0xb

.field public static final DATA_CONNECTION_LTE:I = 0xd

.field static final DATA_CONNECTION_NAMES:[Ljava/lang/String;

.field public static final DATA_CONNECTION_NONE:I = 0x0

.field public static final DATA_CONNECTION_OTHER:I = 0x10

.field private static final DATA_CONNECTION_TIME_DATA:Ljava/lang/String; = "dct"

.field public static final DATA_CONNECTION_UMTS:I = 0x3

.field public static final DEVICE_IDLE_MODE_DEEP:I = 0x2

.field public static final DEVICE_IDLE_MODE_LIGHT:I = 0x1

.field public static final DEVICE_IDLE_MODE_OFF:I = 0x0

.field private static final DISCHARGE_STEP_DATA:Ljava/lang/String; = "dsd"

.field private static final DISCHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "dtr"

.field public static final DUMP_CHARGED_ONLY:I = 0x2

.field public static final DUMP_DAILY_ONLY:I = 0x4

.field public static final DUMP_DEVICE_WIFI_ONLY:I = 0x40

.field public static final DUMP_HISTORY_ONLY:I = 0x8

.field public static final DUMP_INCLUDE_HISTORY:I = 0x10

.field public static final DUMP_VERBOSE:I = 0x20

.field private static final FLASHLIGHT_DATA:Ljava/lang/String; = "fla"

.field public static final FLASHLIGHT_TURNED_ON:I = 0x10

.field public static final FOREGROUND_ACTIVITY:I = 0xa

.field private static final FOREGROUND_DATA:Ljava/lang/String; = "fg"

.field public static final FULL_WIFI_LOCK:I = 0x5

.field private static final GLOBAL_BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "gble"

.field private static final GLOBAL_MODEM_CONTROLLER_DATA:Ljava/lang/String; = "gmcd"

.field private static final GLOBAL_NETWORK_DATA:Ljava/lang/String; = "gn"

.field private static final GLOBAL_WIFI_CONTROLLER_DATA:Ljava/lang/String; = "gwfcd"

.field private static final GLOBAL_WIFI_DATA:Ljava/lang/String; = "gwfl"

.field private static final HISTORY_DATA:Ljava/lang/String; = "h"

.field public static final HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

.field public static final HISTORY_EVENT_NAMES:[Ljava/lang/String;

.field public static final HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field public static final HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field private static final HISTORY_STRING_POOL:Ljava/lang/String; = "hsp"

.field public static final JOB:I = 0xe

.field private static final JOB_DATA:Ljava/lang/String; = "jb"

.field private static final KERNEL_WAKELOCK_DATA:Ljava/lang/String; = "kwl"

.field private static final LOCAL_LOGV:Z = false

.field private static final MISC_DATA:Ljava/lang/String; = "m"

.field private static final MODEM_CONTROLLER_DATA:Ljava/lang/String; = "mcd"

.field public static final NETWORK_BT_RX_DATA:I = 0x4

.field public static final NETWORK_BT_TX_DATA:I = 0x5

.field private static final NETWORK_DATA:Ljava/lang/String; = "nt"

.field public static final NETWORK_MOBILE_RX_DATA:I = 0x0

.field public static final NETWORK_MOBILE_TX_DATA:I = 0x1

.field public static final NETWORK_WIFI_RX_DATA:I = 0x2

.field public static final NETWORK_WIFI_TX_DATA:I = 0x3

.field public static final NUM_DATA_CONNECTION_TYPES:I = 0x11

.field public static final NUM_NETWORK_ACTIVITY_TYPES:I = 0x6

.field public static final NUM_SCREEN_BRIGHTNESS_BINS:I = 0x5

.field public static final NUM_WIFI_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final NUM_WIFI_STATES:I = 0x8

.field public static final NUM_WIFI_SUPPL_STATES:I = 0xd

.field private static final POWER_USE_ITEM_DATA:Ljava/lang/String; = "pwi"

.field private static final POWER_USE_SUMMARY_DATA:Ljava/lang/String; = "pws"

.field private static final PROCESS_DATA:Ljava/lang/String; = "pr"

.field public static final PROCESS_STATE:I = 0xc

.field public static final RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field public static final SCREEN_BRIGHTNESS_BRIGHT:I = 0x4

.field public static final SCREEN_BRIGHTNESS_DARK:I = 0x0

.field private static final SCREEN_BRIGHTNESS_DATA:Ljava/lang/String; = "br"

.field public static final SCREEN_BRIGHTNESS_DIM:I = 0x1

.field public static final SCREEN_BRIGHTNESS_LIGHT:I = 0x3

.field public static final SCREEN_BRIGHTNESS_MEDIUM:I = 0x2

.field static final SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

.field static final SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

.field public static final SENSOR:I = 0x3

.field private static final SENSOR_DATA:Ljava/lang/String; = "sr"

.field public static final SERVICE_NAME:Ljava/lang/String; = "batterystats"

.field private static final SIGNAL_SCANNING_TIME_DATA:Ljava/lang/String; = "sst"

.field private static final SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "sgc"

.field private static final SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "sgt"

.field private static final STATE_TIME_DATA:Ljava/lang/String; = "st"

.field public static final STATS_CURRENT:I = 0x1

.field public static final STATS_SINCE_CHARGED:I = 0x0

.field public static final STATS_SINCE_UNPLUGGED:I = 0x2

.field private static final STAT_NAMES:[Ljava/lang/String;

.field public static final STEP_LEVEL_INITIAL_MODE_MASK:J = 0xff000000000000L

.field public static final STEP_LEVEL_INITIAL_MODE_SHIFT:I = 0x30

.field public static final STEP_LEVEL_LEVEL_MASK:J = 0xff0000000000L

.field public static final STEP_LEVEL_LEVEL_SHIFT:I = 0x28

.field public static final STEP_LEVEL_MODES_OF_INTEREST:[I

.field public static final STEP_LEVEL_MODE_DEVICE_IDLE:I = 0x8

.field public static final STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

.field public static final STEP_LEVEL_MODE_POWER_SAVE:I = 0x4

.field public static final STEP_LEVEL_MODE_SCREEN_STATE:I = 0x3

.field public static final STEP_LEVEL_MODE_VALUES:[I

.field public static final STEP_LEVEL_MODIFIED_MODE_MASK:J = -0x100000000000000L

.field public static final STEP_LEVEL_MODIFIED_MODE_SHIFT:I = 0x38

.field public static final STEP_LEVEL_TIME_MASK:J = 0xffffffffffL

.field public static final SYNC:I = 0xd

.field private static final SYNC_DATA:Ljava/lang/String; = "sy"

.field private static final UID_DATA:Ljava/lang/String; = "uid"

.field private static final USER_ACTIVITY_DATA:Ljava/lang/String; = "ua"

.field private static final VERSION_DATA:Ljava/lang/String; = "vers"

.field private static final VIBRATOR_DATA:Ljava/lang/String; = "vib"

.field public static final VIBRATOR_ON:I = 0x9

.field private static final VIDEO_DATA:Ljava/lang/String; = "vid"

.field public static final VIDEO_TURNED_ON:I = 0x8

.field private static final WAKELOCK_DATA:Ljava/lang/String; = "wl"

.field private static final WAKEUP_ALARM_DATA:Ljava/lang/String; = "wua"

.field private static final WAKEUP_REASON_DATA:Ljava/lang/String; = "wr"

.field public static final WAKE_TYPE_DRAW:I = 0x12

.field public static final WAKE_TYPE_FULL:I = 0x1

.field public static final WAKE_TYPE_PARTIAL:I = 0x0

.field public static final WAKE_TYPE_WINDOW:I = 0x2

.field public static final WIFI_BATCHED_SCAN:I = 0xb

.field private static final WIFI_CONTROLLER_DATA:Ljava/lang/String; = "wfcd"

.field private static final WIFI_DATA:Ljava/lang/String; = "wfl"

.field public static final WIFI_MULTICAST_ENABLED:I = 0x7

.field public static final WIFI_RUNNING:I = 0x4

.field public static final WIFI_SCAN:I = 0x6

.field private static final WIFI_SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "wsgc"

.field private static final WIFI_SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "wsgt"

.field private static final WIFI_STATE_COUNT_DATA:Ljava/lang/String; = "wsc"

.field static final WIFI_STATE_NAMES:[Ljava/lang/String;

.field public static final WIFI_STATE_OFF:I = 0x0

.field public static final WIFI_STATE_OFF_SCANNING:I = 0x1

.field public static final WIFI_STATE_ON_CONNECTED_P2P:I = 0x5

.field public static final WIFI_STATE_ON_CONNECTED_STA:I = 0x4

.field public static final WIFI_STATE_ON_CONNECTED_STA_P2P:I = 0x6

.field public static final WIFI_STATE_ON_DISCONNECTED:I = 0x3

.field public static final WIFI_STATE_ON_NO_NETWORKS:I = 0x2

.field public static final WIFI_STATE_SOFT_AP:I = 0x7

.field private static final WIFI_STATE_TIME_DATA:Ljava/lang/String; = "wst"

.field public static final WIFI_SUPPL_STATE_ASSOCIATED:I = 0x7

.field public static final WIFI_SUPPL_STATE_ASSOCIATING:I = 0x6

.field public static final WIFI_SUPPL_STATE_AUTHENTICATING:I = 0x5

.field public static final WIFI_SUPPL_STATE_COMPLETED:I = 0xa

.field private static final WIFI_SUPPL_STATE_COUNT_DATA:Ljava/lang/String; = "wssc"

.field public static final WIFI_SUPPL_STATE_DISCONNECTED:I = 0x1

.field public static final WIFI_SUPPL_STATE_DORMANT:I = 0xb

.field public static final WIFI_SUPPL_STATE_FOUR_WAY_HANDSHAKE:I = 0x8

.field public static final WIFI_SUPPL_STATE_GROUP_HANDSHAKE:I = 0x9

.field public static final WIFI_SUPPL_STATE_INACTIVE:I = 0x3

.field public static final WIFI_SUPPL_STATE_INTERFACE_DISABLED:I = 0x2

.field public static final WIFI_SUPPL_STATE_INVALID:I = 0x0

.field static final WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

.field public static final WIFI_SUPPL_STATE_SCANNING:I = 0x4

.field static final WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

.field private static final WIFI_SUPPL_STATE_TIME_DATA:Ljava/lang/String; = "wsst"

.field public static final WIFI_SUPPL_STATE_UNINITIALIZED:I = 0xc


# instance fields
.field private final mFormatBuilder:Ljava/lang/StringBuilder;

.field private final mFormatter:Ljava/util/Formatter;


# direct methods
.method private static synthetic -getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/os/BatteryStats;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/BatteryStats;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/os/BatterySipper$DrainType;->values()[Lcom/android/internal/os/BatterySipper$DrainType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CAMERA:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    sput-object v0, Landroid/os/BatteryStats;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1

    :catch_b
    move-exception v1

    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x0

    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v1, "l"

    aput-object v1, v0, v8

    const-string/jumbo v1, "c"

    aput-object v1, v0, v10

    const-string/jumbo v1, "u"

    aput-object v1, v0, v11

    sput-object v0, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "dark"

    aput-object v1, v0, v8

    const-string/jumbo v1, "dim"

    aput-object v1, v0, v10

    const-string/jumbo v1, "medium"

    aput-object v1, v0, v11

    const-string/jumbo v1, "light"

    aput-object v1, v0, v9

    const-string/jumbo v1, "bright"

    aput-object v1, v0, v12

    sput-object v0, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v0, v8

    const-string/jumbo v1, "1"

    aput-object v1, v0, v10

    const-string/jumbo v1, "2"

    aput-object v1, v0, v11

    const-string/jumbo v1, "3"

    aput-object v1, v0, v9

    const-string/jumbo v1, "4"

    aput-object v1, v0, v12

    sput-object v0, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "none"

    aput-object v1, v0, v8

    const-string/jumbo v1, "gprs"

    aput-object v1, v0, v10

    const-string/jumbo v1, "edge"

    aput-object v1, v0, v11

    const-string/jumbo v1, "umts"

    aput-object v1, v0, v9

    const-string/jumbo v1, "cdma"

    aput-object v1, v0, v12

    const-string/jumbo v1, "evdo_0"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "evdo_A"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "1xrtt"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "hsdpa"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "hsupa"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "hspa"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "iden"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "evdo_b"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "lte"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "ehrpd"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "hspap"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "other"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "invalid"

    aput-object v1, v0, v8

    const-string/jumbo v1, "disconn"

    aput-object v1, v0, v10

    const-string/jumbo v1, "disabled"

    aput-object v1, v0, v11

    const-string/jumbo v1, "inactive"

    aput-object v1, v0, v9

    const-string/jumbo v1, "scanning"

    aput-object v1, v0, v12

    const-string/jumbo v1, "authenticating"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "associating"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "associated"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "4-way-handshake"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "group-handshake"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "completed"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "dormant"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "uninit"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "inv"

    aput-object v1, v0, v8

    const-string/jumbo v1, "dsc"

    aput-object v1, v0, v10

    const-string/jumbo v1, "dis"

    aput-object v1, v0, v11

    const-string/jumbo v1, "inact"

    aput-object v1, v0, v9

    const-string/jumbo v1, "scan"

    aput-object v1, v0, v12

    const-string/jumbo v1, "auth"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "ascing"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "asced"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "4-way"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "group"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "compl"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "dorm"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "uninit"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    const/16 v0, 0x11

    new-array v7, v0, [Landroid/os/BatteryStats$BitDescription;

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "running"

    const-string/jumbo v2, "r"

    const/high16 v3, -0x80000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wake_lock"

    const-string/jumbo v2, "w"

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v10

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "sensor"

    const-string/jumbo v2, "s"

    const/high16 v3, 0x800000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v11

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "gps"

    const-string/jumbo v2, "g"

    const/high16 v3, 0x20000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v9

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi_full_lock"

    const-string/jumbo v2, "Wl"

    const/high16 v3, 0x10000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v12

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi_scan"

    const-string/jumbo v2, "Ws"

    const/high16 v3, 0x8000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi_multicast"

    const-string/jumbo v2, "Wm"

    const/high16 v3, 0x10000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi_radio"

    const-string/jumbo v2, "Wr"

    const/high16 v3, 0x4000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "mobile_radio"

    const-string/jumbo v2, "Pr"

    const/high16 v3, 0x2000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "phone_scanning"

    const-string/jumbo v2, "Psc"

    const/high16 v3, 0x200000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "audio"

    const-string/jumbo v2, "a"

    const/high16 v3, 0x400000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "screen"

    const-string/jumbo v2, "S"

    const/high16 v3, 0x100000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "plugged"

    const-string/jumbo v2, "BP"

    const/high16 v3, 0x80000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v3, "data_conn"

    const-string/jumbo v4, "Pcn"

    sget-object v5, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    sget-object v6, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    const/16 v1, 0x3e00

    const/16 v2, 0x9

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0xd

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v3, "phone_state"

    const-string/jumbo v4, "Pst"

    new-array v5, v12, [Ljava/lang/String;

    const-string/jumbo v1, "in"

    aput-object v1, v5, v8

    const-string/jumbo v1, "out"

    aput-object v1, v5, v10

    const-string/jumbo v1, "emergency"

    aput-object v1, v5, v11

    const-string/jumbo v1, "off"

    aput-object v1, v5, v9

    new-array v6, v12, [Ljava/lang/String;

    const-string/jumbo v1, "in"

    aput-object v1, v6, v8

    const-string/jumbo v1, "out"

    aput-object v1, v6, v10

    const-string/jumbo v1, "em"

    aput-object v1, v6, v11

    const-string/jumbo v1, "off"

    aput-object v1, v6, v9

    const/16 v1, 0x1c0

    const/4 v2, 0x6

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0xe

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v3, "phone_signal_strength"

    const-string/jumbo v4, "Pss"

    sget-object v5, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    const/4 v1, 0x7

    new-array v6, v1, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v6, v8

    const-string/jumbo v1, "1"

    aput-object v1, v6, v10

    const-string/jumbo v1, "2"

    aput-object v1, v6, v11

    const-string/jumbo v1, "3"

    aput-object v1, v6, v9

    const-string/jumbo v1, "4"

    aput-object v1, v6, v12

    const-string/jumbo v1, "5"

    const/4 v2, 0x5

    aput-object v1, v6, v2

    const-string/jumbo v1, "6"

    const/4 v2, 0x6

    aput-object v1, v6, v2

    const/16 v1, 0x38

    move v2, v9

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0xf

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v3, "brightness"

    const-string/jumbo v4, "Sb"

    sget-object v5, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    sget-object v6, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    const/4 v1, 0x7

    move v2, v8

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0x10

    aput-object v0, v7, v1

    sput-object v7, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    const/16 v0, 0xd

    new-array v7, v0, [Landroid/os/BatteryStats$BitDescription;

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "power_save"

    const-string/jumbo v2, "ps"

    const/high16 v3, -0x80000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "video"

    const-string/jumbo v2, "v"

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v10

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi_running"

    const-string/jumbo v2, "Ww"

    const/high16 v3, 0x20000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v11

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi"

    const-string/jumbo v2, "W"

    const/high16 v3, 0x10000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v9

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "flashlight"

    const-string/jumbo v2, "fl"

    const/high16 v3, 0x8000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v12

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v3, "device_idle"

    const-string/jumbo v4, "di"

    new-array v5, v12, [Ljava/lang/String;

    const-string/jumbo v1, "off"

    aput-object v1, v5, v8

    const-string/jumbo v1, "light"

    aput-object v1, v5, v10

    const-string/jumbo v1, "full"

    aput-object v1, v5, v11

    const-string/jumbo v1, "???"

    aput-object v1, v5, v9

    new-array v6, v12, [Ljava/lang/String;

    const-string/jumbo v1, "off"

    aput-object v1, v6, v8

    const-string/jumbo v1, "light"

    aput-object v1, v6, v10

    const-string/jumbo v1, "full"

    aput-object v1, v6, v11

    const-string/jumbo v1, "???"

    aput-object v1, v6, v9

    const/high16 v1, 0x6000000

    const/16 v2, 0x19

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "charging"

    const-string/jumbo v2, "ch"

    const/high16 v3, 0x1000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "phone_in_call"

    const-string/jumbo v2, "Pcl"

    const/high16 v3, 0x800000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "bluetooth"

    const-string/jumbo v2, "b"

    const/high16 v3, 0x400000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v3, "wifi_signal_strength"

    const-string/jumbo v4, "Wss"

    const/4 v1, 0x5

    new-array v5, v1, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v5, v8

    const-string/jumbo v1, "1"

    aput-object v1, v5, v10

    const-string/jumbo v1, "2"

    aput-object v1, v5, v11

    const-string/jumbo v1, "3"

    aput-object v1, v5, v9

    const-string/jumbo v1, "4"

    aput-object v1, v5, v12

    const/4 v1, 0x5

    new-array v6, v1, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v6, v8

    const-string/jumbo v1, "1"

    aput-object v1, v6, v10

    const-string/jumbo v1, "2"

    aput-object v1, v6, v11

    const-string/jumbo v1, "3"

    aput-object v1, v6, v9

    const-string/jumbo v1, "4"

    aput-object v1, v6, v12

    const/16 v1, 0x70

    move v2, v12

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0x9

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v3, "wifi_suppl"

    const-string/jumbo v4, "Wsp"

    sget-object v5, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    sget-object v6, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    const/16 v1, 0xf

    move v2, v8

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0xa

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "camera"

    const-string/jumbo v2, "ca"

    const/high16 v3, 0x200000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "ble_scan"

    const-string/jumbo v2, "bles"

    const/high16 v3, 0x100000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc

    aput-object v0, v7, v1

    sput-object v7, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "null"

    aput-object v1, v0, v8

    const-string/jumbo v1, "proc"

    aput-object v1, v0, v10

    const-string/jumbo v1, "fg"

    aput-object v1, v0, v11

    const-string/jumbo v1, "top"

    aput-object v1, v0, v9

    const-string/jumbo v1, "sync"

    aput-object v1, v0, v12

    const-string/jumbo v1, "wake_lock_in"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "job"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "user"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "userfg"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "conn"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "active"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "pkginst"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "pkgunin"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "alarm"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "stats"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "inactive"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "active"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "tmpwhitelist"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "screenwake"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "wakeupap"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Enl"

    aput-object v1, v0, v8

    const-string/jumbo v1, "Epr"

    aput-object v1, v0, v10

    const-string/jumbo v1, "Efg"

    aput-object v1, v0, v11

    const-string/jumbo v1, "Etp"

    aput-object v1, v0, v9

    const-string/jumbo v1, "Esy"

    aput-object v1, v0, v12

    const-string/jumbo v1, "Ewl"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Ejb"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "Eur"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "Euf"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "Ecn"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "Eac"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "Epi"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "Epu"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "Eal"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "Est"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "Eai"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "Eaa"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "Etw"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "Esw"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "off"

    aput-object v1, v0, v8

    const-string/jumbo v1, "scanning"

    aput-object v1, v0, v10

    const-string/jumbo v1, "no_net"

    aput-object v1, v0, v11

    const-string/jumbo v1, "disconn"

    aput-object v1, v0, v9

    const-string/jumbo v1, "sta"

    aput-object v1, v0, v12

    const-string/jumbo v1, "p2p"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "sta_p2p"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "soft_ap"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "screen off"

    aput-object v1, v0, v8

    const-string/jumbo v1, "screen off power save"

    aput-object v1, v0, v10

    const-string/jumbo v1, "screen off device idle"

    aput-object v1, v0, v11

    const-string/jumbo v1, "screen on"

    aput-object v1, v0, v9

    const-string/jumbo v1, "screen on power save"

    aput-object v1, v0, v12

    const-string/jumbo v1, "screen doze"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "screen doze power save"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "screen doze-suspend"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "screen doze-suspend power save"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "screen doze-suspend device idle"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x7
        0xf
        0xb
        0x7
        0x7
        0x7
        0x7
        0x7
        0xf
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4
        0x8
        0x1
        0x5
        0x2
        0x6
        0x3
        0x7
        0xb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    return-void
.end method

.method private static computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .locals 9

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    const-wide/16 v4, 0x1f4

    add-long/2addr v4, v0

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    return-wide v2

    :cond_0
    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method private static controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    if-nez p0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-eqz v1, :cond_2

    :cond_1
    return v10

    :cond_2
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_4

    aget-object v0, v3, v1

    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    return v10

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method private static final dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 6

    invoke-static {p4, p5}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    const-string/jumbo v4, ","

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V
    .locals 14

    if-nez p4, :cond_0

    return-void

    :cond_0
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v12

    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-ltz v3, :cond_1

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, " total time: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p5

    invoke-static {v0, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v0, p5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v3, " (from "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget v3, p6, v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, " steps)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    :goto_0
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3

    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    aget v3, v3, v2

    int-to-long v4, v3

    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v3, v3, v2

    int-to-long v6, v3

    move-object/from16 v3, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v10

    const-wide/16 v4, 0x0

    cmp-long v3, v10, v4

    if-lez v3, :cond_2

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, " time: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p5

    invoke-static {v0, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v0, p5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v3, " (from "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget v3, p6, v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, " steps)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Package changes:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$PackageChange;

    iget-boolean v2, v1, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  Update "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " vers="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  Uninstall "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z
    .locals 18

    if-nez p3, :cond_0

    const/4 v11, 0x0

    return v11

    :cond_0
    move-object/from16 v0, p3

    iget v2, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v2, :cond_1

    const/4 v11, 0x0

    return v11

    :cond_1
    if-nez p4, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    const/4 v11, 0x5

    new-array v10, v11, [Ljava/lang/String;

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_11

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v11

    int-to-long v8, v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v11

    int-to-long v12, v11

    if-eqz p4, :cond_8

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    aput-object v11, v10, v14

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x1

    aput-object v11, v10, v14

    const-wide/16 v14, 0x3

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_3

    const-wide/16 v14, 0x3

    and-long/2addr v14, v8

    long-to-int v11, v14

    add-int/lit8 v11, v11, 0x1

    packed-switch v11, :pswitch_data_0

    const-string/jumbo v11, "?"

    const/4 v14, 0x2

    aput-object v11, v10, v14

    :goto_1
    const-wide/16 v14, 0x4

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_5

    const-wide/16 v14, 0x4

    and-long/2addr v14, v8

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_4

    const-string/jumbo v11, "p+"

    :goto_2
    const/4 v14, 0x3

    aput-object v11, v10, v14

    :goto_3
    const-wide/16 v14, 0x8

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_7

    const-wide/16 v14, 0x8

    and-long/2addr v14, v8

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_6

    const-string/jumbo v11, "i+"

    :goto_4
    const/4 v14, 0x4

    aput-object v11, v10, v14

    :goto_5
    const-string/jumbo v11, "i"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v14, v11, v1, v10}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :pswitch_0
    const-string/jumbo v11, "s-"

    const/4 v14, 0x2

    aput-object v11, v10, v14

    goto :goto_1

    :pswitch_1
    const-string/jumbo v11, "s+"

    const/4 v14, 0x2

    aput-object v11, v10, v14

    goto :goto_1

    :pswitch_2
    const-string/jumbo v11, "sd"

    const/4 v14, 0x2

    aput-object v11, v10, v14

    goto :goto_1

    :pswitch_3
    const-string/jumbo v11, "sds"

    const/4 v14, 0x2

    aput-object v11, v10, v14

    goto :goto_1

    :cond_3
    const-string/jumbo v11, ""

    const/4 v14, 0x2

    aput-object v11, v10, v14

    goto :goto_1

    :cond_4
    const-string/jumbo v11, "p-"

    goto :goto_2

    :cond_5
    const-string/jumbo v11, ""

    const/4 v14, 0x3

    aput-object v11, v10, v14

    goto :goto_3

    :cond_6
    const-string/jumbo v11, "i-"

    goto :goto_4

    :cond_7
    const-string/jumbo v11, ""

    const/4 v14, 0x4

    aput-object v11, v10, v14

    goto :goto_5

    :cond_8
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "#"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v11, ": "

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string/jumbo v11, " to "

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    const/4 v3, 0x0

    const-wide/16 v14, 0x3

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_9

    const-string/jumbo v11, " ("

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v14, 0x3

    and-long/2addr v14, v8

    long-to-int v11, v14

    add-int/lit8 v11, v11, 0x1

    packed-switch v11, :pswitch_data_1

    const-string/jumbo v11, "screen-?"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_7
    const/4 v3, 0x1

    :cond_9
    const-wide/16 v14, 0x4

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_a

    if-eqz v3, :cond_d

    const-string/jumbo v11, ", "

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v14, 0x4

    and-long/2addr v14, v8

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_e

    const-string/jumbo v11, "power-save-on"

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_a
    const-wide/16 v14, 0x8

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_b

    if-eqz v3, :cond_f

    const-string/jumbo v11, ", "

    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v14, 0x8

    and-long/2addr v14, v8

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_10

    const-string/jumbo v11, "device-idle-on"

    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_b
    if-eqz v3, :cond_c

    const-string/jumbo v11, ")"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_6

    :pswitch_4
    const-string/jumbo v11, "screen-off"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_5
    const-string/jumbo v11, "screen-on"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_6
    const-string/jumbo v11, "screen-doze"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_7
    const-string/jumbo v11, "screen-doze-suspend"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    const-string/jumbo v11, " ("

    goto :goto_8

    :cond_e
    const-string/jumbo v11, "power-save-off"

    goto :goto_9

    :cond_f
    const-string/jumbo v11, " ("

    goto :goto_a

    :cond_10
    const-string/jumbo v11, "device-idle-off"

    goto :goto_b

    :cond_11
    const/4 v11, 0x1

    return v11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V
    .locals 25

    new-instance v3, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v3}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    new-instance v5, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v5}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    const-wide/16 v16, -0x1

    const-wide/16 v6, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-wide v0, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v16, v0

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gez v4, :cond_1

    move-wide/from16 v6, v16

    :cond_1
    iget-wide v8, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v4, v8, p3

    if-ltz v4, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v4, p3, v8

    if-ltz v4, :cond_2

    if-eqz v19, :cond_3

    :cond_2
    :goto_1
    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_10

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v4, p1

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    goto :goto_0

    :cond_3
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v8, 0x5

    if-eq v4, v8, :cond_4

    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v8, 0x7

    if-ne v4, v8, :cond_8

    :cond_4
    const/16 v19, 0x1

    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_9

    const/4 v9, 0x1

    :goto_3
    move-object/from16 v4, p1

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    const/4 v4, 0x0

    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    :cond_5
    :goto_4
    const/4 v4, 0x0

    if-eqz v4, :cond_2

    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v4, :cond_6

    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_b

    const/4 v9, 0x1

    :goto_5
    move-object/from16 v4, p1

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    const/4 v4, 0x0

    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    :cond_6
    iget v15, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v0, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v18, v0

    new-instance v4, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v4}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v13, 0x0

    :goto_6
    const/16 v4, 0x14

    if-ge v13, v4, :cond_f

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_c

    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_8
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v8, 0x4

    if-eq v4, v8, :cond_4

    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v8, 0x8

    if-eq v4, v8, :cond_4

    iget-wide v8, v5, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    const-wide/16 v22, 0x0

    cmp-long v4, v8, v22

    if-eqz v4, :cond_5

    const/16 v19, 0x1

    iget-byte v10, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x5

    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_a

    const/4 v9, 0x1

    :goto_7
    move-object/from16 v4, p1

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    iput-byte v10, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    :cond_a
    const/4 v9, 0x0

    goto :goto_7

    :cond_b
    const/4 v9, 0x0

    goto :goto_5

    :cond_c
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/SparseIntArray;

    const/4 v14, 0x0

    :goto_8
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v14, v4, :cond_d

    iput v13, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v8, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v8, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    iput v8, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    iput v8, v4, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_e

    const/4 v9, 0x1

    :goto_9
    move-object/from16 v4, p1

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    const/4 v4, 0x0

    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v4, 0x0

    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_e
    const/4 v9, 0x0

    goto :goto_9

    :cond_f
    iput v15, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move-object/from16 v0, v18

    iput-object v0, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/16 v20, 0x0

    goto/16 :goto_1

    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_11
    const-wide/16 v8, 0x0

    cmp-long v4, p3, v8

    if-ltz v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    if-eqz p5, :cond_13

    const-string/jumbo v4, "NEXT: "

    :goto_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v8, 0x1

    add-long v8, v8, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->println(J)V

    :cond_12
    return-void

    :cond_13
    const-string/jumbo v4, "  NEXT: "

    goto :goto_a
.end method

.method private static final varargs dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    array-length v2, p4

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p4, v1

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private static final dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x2c

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private static dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 4

    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p4, p5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const/4 v1, 0x1

    return v1
.end method

.method private static final dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V
    .locals 11

    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    add-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    move/from16 v0, p7

    invoke-virtual {p4, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v3, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    invoke-static {p0, p1, p2, p3, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final formatTimeMs(Ljava/lang/StringBuilder;J)V
    .locals 5

    const-wide/16 v2, 0x3e8

    div-long v0, p1, v2

    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    mul-long/2addr v2, v0

    sub-long v2, p1, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V
    .locals 5

    const-wide/16 v2, 0x3e8

    div-long v0, p1, v2

    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    mul-long/2addr v2, v0

    sub-long v2, p1, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static final formatTimeRaw(Ljava/lang/StringBuilder;J)V
    .locals 13

    const-wide/32 v8, 0x15180

    div-long v0, p1, v8

    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "d "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v0

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x18

    mul-long v6, v8, v10

    sub-long v8, p1, v6

    const-wide/16 v10, 0xe10

    div-long v2, v8, v10

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-nez v8, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_2

    :cond_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "h "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    sub-long v8, p1, v6

    const-wide/16 v10, 0x3c

    div-long v4, v8, v10

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    :cond_3
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "m "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v4

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-nez v8, :cond_5

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_6

    :cond_5
    sub-long v8, p1, v6

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "s "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    return-void
.end method

.method static printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V
    .locals 7

    xor-int v2, p1, p2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v5, p4

    if-ge v3, v5, :cond_a

    aget-object v0, p4, v3

    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_1

    if-eqz p5, :cond_2

    const-string/jumbo v5, " "

    :goto_1
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->shift:I

    if-gez v5, :cond_6

    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_3

    const-string/jumbo v5, "+"

    :goto_2
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p5, :cond_4

    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_1

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    const-string/jumbo v5, "="

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p5, :cond_5

    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v5, ":\""

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "\""

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v5, ","

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "-"

    goto :goto_2

    :cond_4
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    goto :goto_3

    :cond_5
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_4

    :cond_6
    if-eqz p5, :cond_7

    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    :goto_5
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "="

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v5, p2

    iget v6, v0, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int v4, v5, v6

    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    if-eqz v5, :cond_9

    if-ltz v4, :cond_9

    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_9

    if-eqz p5, :cond_8

    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    aget-object v5, v5, v4

    :goto_6
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    goto :goto_5

    :cond_8
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    aget-object v5, v5, v4

    goto :goto_6

    :cond_9
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_4

    :cond_a
    if-nez v1, :cond_b

    if-eqz p3, :cond_b

    if-eqz p5, :cond_c

    const-string/jumbo v5, " wake_lock="

    :goto_7
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p5, :cond_d

    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v5, ":\""

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "\""

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_b
    :goto_8
    return-void

    :cond_c
    const-string/jumbo v5, ",w="

    goto :goto_7

    :cond_d
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_8
.end method

.method private final printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 22

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v8

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    const-wide/16 v12, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v18

    const/16 v17, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v16, v18, v17

    move-object/from16 v0, v16

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v20

    add-long v12, v12, v20

    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_0
    add-long v18, v2, v8

    add-long v10, v18, v12

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, "  "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, " Idle time:   "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v17, "("

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, ")"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, "  "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, " Rx time:     "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-static {v0, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v17, "("

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, ")"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, "  "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, " Tx time:     "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v17, "("

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, ")"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v5, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v5, v0, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v17

    aget-object v17, v17, v4

    move-object/from16 v0, v17

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v14

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, "    ["

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v17, "] "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-static {v0, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v17, "("

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, ")"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, "  "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, " Power drain: "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    long-to-double v0, v6

    move-wide/from16 v18, v0

    const-wide v20, 0x414b774000000000L    # 3600000.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, "mAh"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private final printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 1

    invoke-static {p5, p6}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    :cond_0
    return-void
.end method

.method private printSizeValue(Ljava/io/PrintWriter;J)V
    .locals 6

    const/high16 v4, 0x46200000    # 10240.0f

    const/high16 v3, 0x44800000    # 1024.0f

    long-to-float v0, p2

    const-string/jumbo v1, ""

    cmpl-float v2, v0, v4

    if-ltz v2, :cond_0

    const-string/jumbo v1, "KB"

    div-float/2addr v0, v3

    :cond_0
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_1

    const-string/jumbo v1, "MB"

    div-float/2addr v0, v3

    :cond_1
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_2

    const-string/jumbo v1, "GB"

    div-float/2addr v0, v3

    :cond_2
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_3

    const-string/jumbo v1, "TB"

    div-float/2addr v0, v3

    :cond_3
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_4

    const-string/jumbo v1, "PB"

    div-float/2addr v0, v3

    :cond_4
    float-to-int v2, v0

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private static final printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z
    .locals 11

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    add-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    move/from16 v0, p5

    invoke-virtual {p2, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p6

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "    "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p7

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ": "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v3, "realtime ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " times)"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private static final printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_1

    invoke-static {p1, p2, p3, p5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v2

    invoke-virtual {p1, p5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    if-eqz p4, :cond_0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " times)"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    return-object v1

    :cond_1
    return-object p6
.end method

.method private static final printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3, p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    invoke-virtual {p1, p5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v0

    :cond_0
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x1f4

    add-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ","

    return-object v1

    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private printmAh(Ljava/io/PrintWriter;D)V
    .locals 2

    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private printmAh(Ljava/lang/StringBuilder;D)V
    .locals 2

    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public abstract commitCurrentHistoryBatchLocked()V
.end method

.method public abstract computeBatteryRealtime(JI)J
.end method

.method public abstract computeBatteryScreenOffRealtime(JI)J
.end method

.method public abstract computeBatteryScreenOffUptime(JI)J
.end method

.method public abstract computeBatteryTimeRemaining(J)J
.end method

.method public abstract computeBatteryUptime(JI)J
.end method

.method public abstract computeChargeTimeRemaining(J)J
.end method

.method public abstract computeRealtime(JI)J
.end method

.method public abstract computeUptime(JI)J
.end method

.method public final dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;II)V
    .locals 6

    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    return-void
.end method

.method public final dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V
    .locals 192

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    mul-long v116, v8, v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    mul-long v10, v8, v12

    move-object/from16 v0, p0

    move-wide/from16 v1, v116

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v28

    move-object/from16 v0, p0

    move-wide/from16 v1, v116

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v166

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v160

    move-object/from16 v0, p0

    move-wide/from16 v1, v116

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v164

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v162

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v138

    move-object/from16 v0, p0

    move-wide/from16 v1, v116

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v146

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v118

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v66

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v110

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v10, v11, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v42

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v10, v11, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v40

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v10, v11, v1}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v46

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v10, v11, v1}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v44

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v106

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCoulombCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v48

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeScreenOffCoulombCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v50

    new-instance v115, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    move-object/from16 v0, v115

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v149

    invoke-virtual/range {v149 .. v149}, Landroid/util/SparseArray;->size()I

    move-result v24

    sget-object v4, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    aget-object v6, v4, p3

    const-string/jumbo v7, "bt"

    const/16 v4, 0x9

    new-array v8, v4, [Ljava/lang/Object;

    if-nez p3, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    const/4 v9, 0x0

    aput-object v4, v8, v9

    const-wide/16 v12, 0x3e8

    div-long v12, v160, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v9, 0x1

    aput-object v4, v8, v9

    const-wide/16 v12, 0x3e8

    div-long v12, v166, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v9, 0x2

    aput-object v4, v8, v9

    const-wide/16 v12, 0x3e8

    div-long v12, v138, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v9, 0x3

    aput-object v4, v8, v9

    const-wide/16 v12, 0x3e8

    div-long v12, v146, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v8, v9

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v9, 0x5

    aput-object v4, v8, v9

    const-wide/16 v12, 0x3e8

    div-long v12, v162, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v9, 0x6

    aput-object v4, v8, v9

    const-wide/16 v12, 0x3e8

    div-long v12, v164, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v9, 0x7

    aput-object v4, v8, v9

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v9, 0x8

    aput-object v4, v8, v9

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v56, 0x0

    const-wide/16 v104, 0x0

    const/16 v73, 0x0

    :goto_1
    move/from16 v0, v73

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    move-object/from16 v0, v149

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v148

    check-cast v148, Landroid/os/BatteryStats$Uid;

    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v157

    invoke-virtual/range {v157 .. v157}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v74, v4, -0x1

    :goto_2
    if-ltz v74, :cond_3

    move-object/from16 v0, v157

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v185

    check-cast v185, Landroid/os/BatteryStats$Uid$Wakelock;

    const/4 v4, 0x1

    move-object/from16 v0, v185

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v58

    if-eqz v58, :cond_0

    move-object/from16 v0, v58

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    add-long v56, v56, v8

    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, v185

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v103

    if-eqz v103, :cond_1

    move-object/from16 v0, v103

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    add-long v104, v104, v8

    :cond_1
    add-int/lit8 v74, v74, -0x1

    goto :goto_2

    :cond_2
    const-string/jumbo v4, "N/A"

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v73, v73, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v92

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v96

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v180

    const/4 v4, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v188

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v94

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v98

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v182

    const/4 v4, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v190

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v34

    const/4 v4, 0x5

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v36

    const-string/jumbo v4, "gn"

    const/16 v7, 0xa

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v92 .. v93}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static/range {v96 .. v97}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static/range {v180 .. v181}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static/range {v188 .. v189}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-static/range {v94 .. v95}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    invoke-static/range {v98 .. v99}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v7, v9

    invoke-static/range {v182 .. v183}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x6

    aput-object v8, v7, v9

    invoke-static/range {v190 .. v191}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x7

    aput-object v8, v7, v9

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0x8

    aput-object v8, v7, v9

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0x9

    aput-object v8, v7, v9

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v7, "gmcd"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    const/4 v5, 0x0

    move-object/from16 v4, p2

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v172

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v178

    const-string/jumbo v4, "gwfl"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const-wide/16 v8, 0x3e8

    div-long v8, v172, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v178, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v7, "gwfcd"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    const/4 v5, 0x0

    move-object/from16 v4, p2

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-string/jumbo v7, "gble"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    const/4 v5, 0x0

    move-object/from16 v4, p2

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-string/jumbo v4, "m"

    const/16 v7, 0x15

    new-array v7, v7, [Ljava/lang/Object;

    const-wide/16 v8, 0x3e8

    div-long v8, v118, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v106, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v56, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v104, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v66, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x6

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v110, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x7

    aput-object v8, v7, v9

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x8

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v40, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0x9

    aput-object v8, v7, v9

    const/4 v8, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0xa

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v44, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0xb

    aput-object v8, v7, v9

    const/4 v8, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0xc

    aput-object v8, v7, v9

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0xd

    aput-object v8, v7, v9

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0xe

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v42, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0xf

    aput-object v8, v7, v9

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x10

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v46, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0x11

    aput-object v8, v7, v9

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x12

    aput-object v8, v7, v9

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0x13

    aput-object v8, v7, v9

    const/4 v8, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0x14

    aput-object v8, v7, v9

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v63, 0x0

    :goto_3
    const/4 v4, 0x5

    move/from16 v0, v63

    if-ge v0, v4, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v26, v63

    add-int/lit8 v63, v63, 0x1

    goto :goto_3

    :cond_5
    const-string/jumbo v4, "br"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v4, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v63, 0x0

    :goto_4
    sget v4, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    move/from16 v0, v63

    if-ge v0, v4, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v26, v63

    add-int/lit8 v63, v63, 0x1

    goto :goto_4

    :cond_6
    const-string/jumbo v4, "sgt"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v4, "sst"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v63, 0x0

    :goto_5
    sget v4, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    move/from16 v0, v63

    if-ge v0, v4, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v26, v63

    add-int/lit8 v63, v63, 0x1

    goto :goto_5

    :cond_7
    const-string/jumbo v4, "sgc"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v4, 0x11

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v63, 0x0

    :goto_6
    const/16 v4, 0x11

    move/from16 v0, v63

    if-ge v0, v4, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v26, v63

    add-int/lit8 v63, v63, 0x1

    goto :goto_6

    :cond_8
    const-string/jumbo v4, "dct"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v63, 0x0

    :goto_7
    const/16 v4, 0x11

    move/from16 v0, v63

    if-ge v0, v4, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v26, v63

    add-int/lit8 v63, v63, 0x1

    goto :goto_7

    :cond_9
    const-string/jumbo v4, "dcc"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v4, 0x8

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v63, 0x0

    :goto_8
    const/16 v4, 0x8

    move/from16 v0, v63

    if-ge v0, v4, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v26, v63

    add-int/lit8 v63, v63, 0x1

    goto :goto_8

    :cond_a
    const-string/jumbo v4, "wst"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v63, 0x0

    :goto_9
    const/16 v4, 0x8

    move/from16 v0, v63

    if-ge v0, v4, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiStateCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v26, v63

    add-int/lit8 v63, v63, 0x1

    goto :goto_9

    :cond_b
    const-string/jumbo v4, "wsc"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v4, 0xd

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v63, 0x0

    :goto_a
    const/16 v4, 0xd

    move/from16 v0, v63

    if-ge v0, v4, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v26, v63

    add-int/lit8 v63, v63, 0x1

    goto :goto_a

    :cond_c
    const-string/jumbo v4, "wsst"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v63, 0x0

    :goto_b
    const/16 v4, 0xd

    move/from16 v0, v63

    if-ge v0, v4, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSupplStateCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v26, v63

    add-int/lit8 v63, v63, 0x1

    goto :goto_b

    :cond_d
    const-string/jumbo v4, "wssc"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v63, 0x0

    :goto_c
    const/4 v4, 0x5

    move/from16 v0, v63

    if-ge v0, v4, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v26, v63

    add-int/lit8 v63, v63, 0x1

    goto :goto_c

    :cond_e
    const-string/jumbo v4, "wsgt"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v63, 0x0

    :goto_d
    const/4 v4, 0x5

    move/from16 v0, v63

    if-ge v0, v4, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSignalStrengthCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v26, v63

    add-int/lit8 v63, v63, 0x1

    goto :goto_d

    :cond_f
    const-string/jumbo v4, "wsgc"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_10

    const-string/jumbo v4, "lv"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_11

    const-string/jumbo v4, "dc"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v48, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v50, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v7, v9

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_e
    if-gez p4, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v77

    invoke-interface/range {v77 .. v77}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_12

    invoke-interface/range {v77 .. v77}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v53

    :goto_f
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/util/Map$Entry;

    const/4 v4, 0x0

    move-object/from16 v0, v115

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-interface/range {v52 .. v52}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/BatteryStats$Timer;

    const-string/jumbo v14, ""

    const/4 v12, 0x0

    move-object/from16 v8, v115

    move/from16 v13, p3

    invoke-static/range {v8 .. v14}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    const-string/jumbo v4, "kwl"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface/range {v52 .. v52}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual/range {v115 .. v115}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    :cond_11
    const-string/jumbo v4, "dc"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v48, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v50, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v7, v9

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v158

    invoke-interface/range {v158 .. v158}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_13

    invoke-interface/range {v158 .. v158}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v53

    :goto_10
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/util/Map$Entry;

    invoke-interface/range {v52 .. v52}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    move/from16 v0, p3

    invoke-virtual {v4, v10, v11, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v144

    invoke-interface/range {v52 .. v52}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v39

    const-string/jumbo v7, "wr"

    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\""

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface/range {v52 .. v52}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, "\""

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const-wide/16 v12, 0x1f4

    add-long v12, v12, v144

    const-wide/16 v16, 0x3e8

    div-long v12, v12, v16

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x2

    aput-object v4, v8, v9

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    :cond_13
    new-instance v62, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v4, 0x0

    move-object/from16 v0, v62

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    move-object/from16 v0, v62

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    const/4 v4, -0x1

    move-object/from16 v0, v62

    move/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    invoke-virtual/range {v62 .. v62}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v124

    if-eqz v124, :cond_14

    invoke-interface/range {v124 .. v124}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_14

    const-string/jumbo v4, "pws"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual/range {v62 .. v62}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual/range {v62 .. v62}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual/range {v62 .. v62}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-virtual/range {v62 .. v62}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v63, 0x0

    :goto_11
    invoke-interface/range {v124 .. v124}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v63

    if-ge v0, v4, :cond_14

    move-object/from16 v0, v124

    move/from16 v1, v63

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/os/BatterySipper;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/BatteryStats;->-getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v7, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    const-string/jumbo v78, "???"

    :goto_12
    const-string/jumbo v4, "pwi"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v78, v7, v8

    move-object/from16 v0, v27

    iget-wide v8, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v63, v63, 0x1

    goto :goto_11

    :pswitch_0
    const-string/jumbo v78, "idle"

    goto :goto_12

    :pswitch_1
    const-string/jumbo v78, "cell"

    goto :goto_12

    :pswitch_2
    const-string/jumbo v78, "phone"

    goto :goto_12

    :pswitch_3
    const-string/jumbo v78, "wifi"

    goto :goto_12

    :pswitch_4
    const-string/jumbo v78, "blue"

    goto :goto_12

    :pswitch_5
    const-string/jumbo v78, "scrn"

    goto :goto_12

    :pswitch_6
    const-string/jumbo v78, "flashlight"

    goto :goto_12

    :pswitch_7
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const-string/jumbo v78, "uid"

    goto :goto_12

    :pswitch_8
    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/internal/os/BatterySipper;->userId:I

    const/4 v7, 0x0

    invoke-static {v4, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    const-string/jumbo v78, "user"

    goto :goto_12

    :pswitch_9
    const-string/jumbo v78, "unacc"

    goto :goto_12

    :pswitch_a
    const-string/jumbo v78, "over"

    goto :goto_12

    :pswitch_b
    const-string/jumbo v78, "camera"

    goto :goto_12

    :cond_14
    const/16 v73, 0x0

    :goto_13
    move/from16 v0, v73

    move/from16 v1, v24

    if-ge v0, v1, :cond_37

    move-object/from16 v0, v149

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    if-ltz p4, :cond_16

    move/from16 v0, p4

    if-eq v5, v0, :cond_16

    :cond_15
    add-int/lit8 v73, v73, 0x1

    goto :goto_13

    :cond_16
    move-object/from16 v0, v149

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v148

    check-cast v148, Landroid/os/BatteryStats$Uid;

    const/4 v4, 0x0

    move-object/from16 v0, v148

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v84

    const/4 v4, 0x1

    move-object/from16 v0, v148

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v86

    const/4 v4, 0x2

    move-object/from16 v0, v148

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v168

    const/4 v4, 0x3

    move-object/from16 v0, v148

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v170

    const/4 v4, 0x0

    move-object/from16 v0, v148

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v88

    const/4 v4, 0x1

    move-object/from16 v0, v148

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v90

    move-object/from16 v0, v148

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v82

    move-object/from16 v0, v148

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v80

    const/4 v4, 0x2

    move-object/from16 v0, v148

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v174

    const/4 v4, 0x3

    move-object/from16 v0, v148

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v176

    const/4 v4, 0x4

    move-object/from16 v0, v148

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v30

    const/4 v4, 0x5

    move-object/from16 v0, v148

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v32

    const-wide/16 v8, 0x0

    cmp-long v4, v84, v8

    if-gtz v4, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v4, v86, v8

    if-lez v4, :cond_1c

    :cond_17
    :goto_14
    const-string/jumbo v4, "nt"

    const/16 v7, 0xc

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v84 .. v85}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static/range {v86 .. v87}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static/range {v168 .. v169}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static/range {v170 .. v171}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-static/range {v88 .. v89}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    invoke-static/range {v90 .. v91}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v7, v9

    invoke-static/range {v174 .. v175}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x6

    aput-object v8, v7, v9

    invoke-static/range {v176 .. v177}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x7

    aput-object v8, v7, v9

    invoke-static/range {v82 .. v83}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0x8

    aput-object v8, v7, v9

    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x9

    aput-object v8, v7, v9

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0xa

    aput-object v8, v7, v9

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0xb

    aput-object v8, v7, v9

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    const-string/jumbo v7, "mcd"

    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    move-object/from16 v4, p2

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    move-object/from16 v0, v148

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v60

    move-object/from16 v0, v148

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v186

    move-object/from16 v0, v148

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v184

    move-object/from16 v0, v148

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v150

    const-wide/16 v8, 0x0

    cmp-long v4, v60, v8

    if-nez v4, :cond_19

    const-wide/16 v8, 0x0

    cmp-long v4, v186, v8

    if-eqz v4, :cond_1d

    :cond_19
    :goto_15
    const-string/jumbo v4, "wfl"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static/range {v186 .. v187}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static/range {v150 .. v151}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static/range {v184 .. v184}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v7, v9

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x6

    aput-object v8, v7, v9

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    const-string/jumbo v7, "wfcd"

    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    move-object/from16 v4, p2

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-string/jumbo v16, "blem"

    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v17

    move-object/from16 v13, p2

    move v14, v5

    move-object v15, v6

    move-wide/from16 v18, v10

    move/from16 v20, p3

    invoke-static/range {v13 .. v20}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string/jumbo v7, "ble"

    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    move-object/from16 v4, p2

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v59, 0x0

    const/16 v63, 0x0

    :goto_16
    const/4 v4, 0x4

    move/from16 v0, v63

    if-ge v0, v4, :cond_1e

    move-object/from16 v0, v148

    move/from16 v1, v63

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v156

    invoke-static/range {v156 .. v156}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v26, v63

    if-eqz v156, :cond_1b

    const/16 v59, 0x1

    :cond_1b
    add-int/lit8 v63, v63, 0x1

    goto :goto_16

    :cond_1c
    const-wide/16 v8, 0x0

    cmp-long v4, v168, v8

    if-gtz v4, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v4, v170, v8

    if-gtz v4, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v4, v88, v8

    if-gtz v4, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v4, v90, v8

    if-gtz v4, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v4, v174, v8

    if-gtz v4, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v4, v176, v8

    if-gtz v4, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v4, v82, v8

    if-gtz v4, :cond_17

    if-gtz v80, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v4, v30, v8

    if-gtz v4, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v4, v32, v8

    if-lez v4, :cond_18

    goto/16 :goto_14

    :cond_1d
    if-nez v184, :cond_19

    const-wide/16 v8, 0x0

    cmp-long v4, v150, v8

    if-eqz v4, :cond_1a

    goto/16 :goto_15

    :cond_1e
    if-eqz v59, :cond_1f

    const-string/jumbo v4, "ua"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v5, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1f
    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v157

    invoke-virtual/range {v157 .. v157}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v74, v4, -0x1

    :goto_17
    if-ltz v74, :cond_22

    move-object/from16 v0, v157

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v185

    check-cast v185, Landroid/os/BatteryStats$Uid$Wakelock;

    const-string/jumbo v14, ""

    const/4 v4, 0x0

    move-object/from16 v0, v115

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v185

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    const-string/jumbo v12, "f"

    move-object/from16 v8, v115

    move/from16 v13, p3

    invoke-static/range {v8 .. v14}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v4, 0x0

    move-object/from16 v0, v185

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    const-string/jumbo v12, "p"

    move-object/from16 v8, v115

    move/from16 v13, p3

    invoke-static/range {v8 .. v14}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v4, 0x2

    move-object/from16 v0, v185

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    const-string/jumbo v12, "w"

    move-object/from16 v8, v115

    move/from16 v13, p3

    invoke-static/range {v8 .. v14}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v115 .. v115}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_21

    move-object/from16 v0, v157

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v81

    check-cast v81, Ljava/lang/String;

    const/16 v4, 0x2c

    move-object/from16 v0, v81

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_20

    const/16 v4, 0x2c

    const/16 v7, 0x5f

    move-object/from16 v0, v81

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v81

    :cond_20
    const-string/jumbo v4, "wl"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v81, v7, v8

    invoke-virtual/range {v115 .. v115}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    add-int/lit8 v74, v74, -0x1

    goto/16 :goto_17

    :cond_22
    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v130

    invoke-virtual/range {v130 .. v130}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v72, v4, -0x1

    :goto_18
    if-ltz v72, :cond_24

    move-object/from16 v0, v130

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v131

    check-cast v131, Landroid/os/BatteryStats$Timer;

    move-object/from16 v0, v131

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    const-wide/16 v12, 0x1f4

    add-long/2addr v8, v12

    const-wide/16 v12, 0x3e8

    div-long v142, v8, v12

    move-object/from16 v0, v131

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v39

    const-wide/16 v8, 0x0

    cmp-long v4, v142, v8

    if-eqz v4, :cond_23

    const-string/jumbo v4, "sy"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, v130

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static/range {v142 .. v143}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_23
    add-int/lit8 v72, v72, -0x1

    goto :goto_18

    :cond_24
    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v64, v4, -0x1

    :goto_19
    if-ltz v64, :cond_26

    move-object/from16 v0, v76

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v131

    check-cast v131, Landroid/os/BatteryStats$Timer;

    move-object/from16 v0, v131

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    const-wide/16 v12, 0x1f4

    add-long/2addr v8, v12

    const-wide/16 v12, 0x3e8

    div-long v142, v8, v12

    move-object/from16 v0, v131

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v39

    const-wide/16 v8, 0x0

    cmp-long v4, v142, v8

    if-eqz v4, :cond_25

    const-string/jumbo v4, "jb"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, v76

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static/range {v142 .. v143}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    add-int/lit8 v64, v64, -0x1

    goto :goto_19

    :cond_26
    const-string/jumbo v18, "fla"

    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v19

    move-object/from16 v15, p2

    move/from16 v16, v5

    move-object/from16 v17, v6

    move-wide/from16 v20, v10

    move/from16 v22, p3

    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string/jumbo v18, "cam"

    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v19

    move-object/from16 v15, p2

    move/from16 v16, v5

    move-object/from16 v17, v6

    move-wide/from16 v20, v10

    move/from16 v22, p3

    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string/jumbo v18, "vid"

    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v19

    move-object/from16 v15, p2

    move/from16 v16, v5

    move-object/from16 v17, v6

    move-wide/from16 v20, v10

    move/from16 v22, p3

    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string/jumbo v18, "aud"

    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v19

    move-object/from16 v15, p2

    move/from16 v16, v5

    move-object/from16 v17, v6

    move-wide/from16 v20, v10

    move/from16 v22, p3

    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Landroid/util/SparseArray;->size()I

    move-result v23

    const/16 v70, 0x0

    :goto_1a
    move/from16 v0, v70

    move/from16 v1, v23

    if-ge v0, v1, :cond_28

    move-object/from16 v0, v122

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v120

    check-cast v120, Landroid/os/BatteryStats$Uid$Sensor;

    move-object/from16 v0, v122

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v121

    invoke-virtual/range {v120 .. v120}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v131

    if-eqz v131, :cond_27

    move-object/from16 v0, v131

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    const-wide/16 v12, 0x1f4

    add-long/2addr v8, v12

    const-wide/16 v12, 0x3e8

    div-long v142, v8, v12

    move-object/from16 v0, v131

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v39

    const-wide/16 v8, 0x0

    cmp-long v4, v142, v8

    if-eqz v4, :cond_27

    const-string/jumbo v4, "sr"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v121 .. v121}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static/range {v142 .. v143}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_27
    add-int/lit8 v70, v70, 0x1

    goto :goto_1a

    :cond_28
    const-string/jumbo v18, "vib"

    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v19

    move-object/from16 v15, p2

    move/from16 v16, v5

    move-object/from16 v17, v6

    move-wide/from16 v20, v10

    move/from16 v22, p3

    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string/jumbo v18, "fg"

    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v19

    move-object/from16 v15, p2

    move/from16 v16, v5

    move-object/from16 v17, v6

    move-wide/from16 v20, v10

    move/from16 v22, p3

    invoke-static/range {v15 .. v22}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const/4 v4, 0x6

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v129, v0

    const-wide/16 v140, 0x0

    const/16 v69, 0x0

    :goto_1b
    const/4 v4, 0x6

    move/from16 v0, v69

    if-ge v0, v4, :cond_29

    move-object/from16 v0, v148

    move/from16 v1, v69

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v136

    add-long v140, v140, v136

    const-wide/16 v8, 0x1f4

    add-long v8, v8, v136

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v129, v69

    add-int/lit8 v69, v69, 0x1

    goto :goto_1b

    :cond_29
    const-wide/16 v8, 0x0

    cmp-long v4, v140, v8

    if-lez v4, :cond_2a

    const-string/jumbo v4, "st"

    move-object/from16 v0, p2

    move-object/from16 v1, v129

    invoke-static {v0, v5, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2a
    move-object/from16 v0, v148

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v152

    move-object/from16 v0, v148

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v132

    move-object/from16 v0, v148

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getCpuPowerMaUs(I)J

    move-result-wide v108

    const-wide/16 v8, 0x0

    cmp-long v4, v152, v8

    if-gtz v4, :cond_2b

    const-wide/16 v8, 0x0

    cmp-long v4, v132, v8

    if-lez v4, :cond_2f

    :cond_2b
    :goto_1c
    const-string/jumbo v4, "cpu"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-wide/16 v8, 0x3e8

    div-long v8, v152, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v132, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v108, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2c
    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v112

    invoke-virtual/range {v112 .. v112}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v68, v4, -0x1

    :goto_1d
    if-ltz v68, :cond_31

    move-object/from16 v0, v112

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/os/BatteryStats$Uid$Proc;

    move-object/from16 v0, v114

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v154

    move-object/from16 v0, v114

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v134

    move-object/from16 v0, v114

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v54

    move-object/from16 v0, v114

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v128

    move-object/from16 v0, v114

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v101

    move-object/from16 v0, v114

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v100

    const-wide/16 v8, 0x0

    cmp-long v4, v154, v8

    if-nez v4, :cond_2d

    const-wide/16 v8, 0x0

    cmp-long v4, v134, v8

    if-eqz v4, :cond_30

    :cond_2d
    :goto_1e
    const-string/jumbo v4, "pr"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, v112

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static/range {v154 .. v155}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static/range {v134 .. v135}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-static/range {v128 .. v128}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    invoke-static/range {v100 .. v100}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v7, v9

    invoke-static/range {v101 .. v101}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x6

    aput-object v8, v7, v9

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2e
    add-int/lit8 v68, v68, -0x1

    goto/16 :goto_1d

    :cond_2f
    const-wide/16 v8, 0x0

    cmp-long v4, v108, v8

    if-lez v4, :cond_2c

    goto/16 :goto_1c

    :cond_30
    const-wide/16 v8, 0x0

    cmp-long v4, v54, v8

    if-nez v4, :cond_2d

    if-nez v128, :cond_2d

    if-nez v100, :cond_2d

    if-eqz v101, :cond_2e

    goto :goto_1e

    :cond_31
    invoke-virtual/range {v148 .. v148}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v102

    invoke-virtual/range {v102 .. v102}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v65, v4, -0x1

    :goto_1f
    if-ltz v65, :cond_15

    move-object/from16 v0, v102

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v113

    check-cast v113, Landroid/os/BatteryStats$Uid$Pkg;

    const/16 v159, 0x0

    invoke-virtual/range {v113 .. v113}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v75, v4, -0x1

    :goto_20
    if-ltz v75, :cond_32

    move-object/from16 v0, v25

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Counter;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v39

    add-int v159, v159, v39

    move-object/from16 v0, v25

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x2c

    const/16 v8, 0x5f

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v81

    const-string/jumbo v4, "wua"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v81, v7, v8

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v75, v75, -0x1

    goto :goto_20

    :cond_32
    invoke-virtual/range {v113 .. v113}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v123

    invoke-virtual/range {v123 .. v123}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v71, v4, -0x1

    :goto_21
    if-ltz v71, :cond_36

    move-object/from16 v0, v123

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v125

    check-cast v125, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-object/from16 v0, v125

    move-wide/from16 v1, v28

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v126

    move-object/from16 v0, v125

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v128

    move-object/from16 v0, v125

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v79

    const-wide/16 v8, 0x0

    cmp-long v4, v126, v8

    if-nez v4, :cond_33

    if-eqz v128, :cond_35

    :cond_33
    :goto_22
    const-string/jumbo v4, "apk"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v159 .. v159}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    move-object/from16 v0, v102

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    move-object/from16 v0, v123

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const-wide/16 v8, 0x3e8

    div-long v8, v126, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-static/range {v128 .. v128}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v7, v9

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_34
    add-int/lit8 v71, v71, -0x1

    goto :goto_21

    :cond_35
    if-eqz v79, :cond_34

    goto :goto_22

    :cond_36
    add-int/lit8 v65, v65, -0x1

    goto/16 :goto_1f

    :cond_37
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_b
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_2
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_3
    .end packed-switch
.end method

.method public dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ)V"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    const-string/jumbo v2, "i"

    const-string/jumbo v3, "vers"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "18"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v5, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryBaseTime()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v16, v2, v4

    and-int/lit8 v2, p4, 0xe

    if-eqz v2, :cond_1

    const/4 v11, 0x1

    :goto_0
    and-int/lit8 v2, p4, 0x10

    if-nez v2, :cond_0

    and-int/lit8 v2, p4, 0x8

    if-eqz v2, :cond_3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v12, 0x0

    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v2

    if-ge v12, v2, :cond_2

    const/16 v2, 0x9

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const/16 v2, 0x2c

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    const-string/jumbo v2, "hsp"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x2c

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, ",\""

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v2, "\\"

    const-string/jumbo v3, "\\\\"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v2, "\""

    const-string/jumbo v3, "\\\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "\""

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-wide/from16 v6, p5

    invoke-direct/range {v3 .. v8}, Landroid/os/BatteryStats;->dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    :cond_3
    if-eqz v11, :cond_4

    and-int/lit8 v2, p4, 0x6

    if-nez v2, :cond_4

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    throw v2

    :cond_4
    if-eqz p3, :cond_9

    new-instance v23, Landroid/util/SparseArray;

    invoke-direct/range {v23 .. v23}, Landroid/util/SparseArray;-><init>()V

    const/4 v12, 0x0

    :goto_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_6

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    iget v2, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    if-nez v15, :cond_5

    new-instance v15, Landroid/util/Pair;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/util/MutableBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-direct {v15, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v2, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    iget-object v2, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v2, 0x2

    new-array v14, v2, [Ljava/lang/String;

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v9, :cond_9

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v19

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    if-eqz v15, :cond_7

    iget-object v2, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/MutableBoolean;

    iget-boolean v2, v2, Landroid/util/MutableBoolean;->value:Z

    if-eqz v2, :cond_8

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_8
    iget-object v2, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z

    const/4 v13, 0x0

    :goto_4
    iget-object v2, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_7

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v14, v3

    iget-object v2, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v14, v3

    const-string/jumbo v2, "i"

    const-string/jumbo v3, "uid"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v2, v3, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_9
    if-eqz v11, :cond_a

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_d

    :cond_a
    const-string/jumbo v2, ""

    const-string/jumbo v3, "dsd"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v20

    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-ltz v2, :cond_b

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v14, v3

    const-string/jumbo v2, "i"

    const-string/jumbo v3, "dtr"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v2, v3, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    const-string/jumbo v2, ""

    const-string/jumbo v3, "csd"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v20

    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-ltz v2, :cond_c

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v14, v3

    const-string/jumbo v2, "i"

    const-string/jumbo v3, "ctr"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v2, v3, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    and-int/lit8 v2, p4, 0x40

    if-eqz v2, :cond_e

    const/4 v7, 0x1

    :goto_5
    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    :cond_d
    return-void

    :cond_e
    const/4 v7, 0x0

    goto :goto_5
.end method

.method public dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V
    .locals 53

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    and-int/lit8 v6, p3, 0xe

    if-eqz v6, :cond_1

    const/16 v34, 0x1

    :goto_0
    and-int/lit8 v6, p3, 0x8

    if-nez v6, :cond_2

    if-eqz v34, :cond_2

    :cond_0
    :goto_1
    if-eqz v34, :cond_7

    and-int/lit8 v6, p3, 0x6

    if-nez v6, :cond_7

    return-void

    :cond_1
    const/16 v34, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryTotalSize()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v36, v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryUsedSize()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v38, v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v6

    if-eqz v6, :cond_3

    :try_start_0
    const-string/jumbo v6, "Battery History ("

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v12, 0x64

    mul-long v12, v12, v38

    div-long v12, v12, v36

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v6, "% used, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v38

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v6, " used of "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v36

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v6, ", "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v6, " strings using "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolBytes()I

    move-result v6

    int-to-long v12, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12, v13}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v6, "):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v5 .. v10}, Landroid/os/BatteryStats;->dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingOldHistoryLocked()Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_1
    new-instance v7, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v7}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    const-string/jumbo v6, "Old battery History:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v5}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    const-wide/16 v8, -0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-wide/16 v12, 0x0

    cmp-long v6, v8, v12

    if-gez v6, :cond_4

    iget-wide v8, v7, Landroid/os/BatteryStats$HistoryItem;->time:J

    :cond_4
    and-int/lit8 v6, p3, 0x20

    if-eqz v6, :cond_5

    const/4 v11, 0x1

    :goto_3
    const/4 v10, 0x0

    move-object/from16 v6, p2

    invoke-virtual/range {v5 .. v11}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    throw v6

    :catchall_1
    move-exception v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    throw v6

    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    :cond_6
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    goto/16 :goto_1

    :cond_7
    if-nez v34, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/16 v32, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v42

    const/16 v35, 0x0

    :goto_4
    move/from16 v0, v35

    if-ge v0, v4, :cond_b

    move-object/from16 v0, v51

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/os/BatteryStats$Uid;

    invoke-virtual/range {v50 .. v50}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v44

    if-eqz v44, :cond_a

    const/16 v40, 0x0

    :goto_5
    invoke-virtual/range {v44 .. v44}, Landroid/util/SparseArray;->size()I

    move-result v6

    move/from16 v0, v40

    if-ge v0, v6, :cond_a

    move-object/from16 v0, v44

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/BatteryStats$Uid$Pid;

    if-nez v32, :cond_8

    const-string/jumbo v6, "Per-PID Stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v32, 0x1

    :cond_8
    move-object/from16 v0, v41

    iget-wide v14, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    move-object/from16 v0, v41

    iget v6, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v6, :cond_9

    move-object/from16 v0, v41

    iget-wide v12, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v12, v42, v12

    :goto_6
    add-long v46, v14, v12

    const-string/jumbo v6, "  PID "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v44

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v6, " wake time: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v46

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string/jumbo v6, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v40, v40, 0x1

    goto :goto_5

    :cond_9
    const-wide/16 v12, 0x0

    goto :goto_6

    :cond_a
    add-int/lit8 v35, v35, 0x1

    goto :goto_4

    :cond_b
    if-eqz v32, :cond_c

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_c
    if-eqz v34, :cond_d

    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_12

    :cond_d
    const-string/jumbo v6, "  "

    const-string/jumbo v10, "Discharge step durations:"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v48

    const-wide/16 v12, 0x0

    cmp-long v6, v48, v12

    if-ltz v6, :cond_e

    const-string/jumbo v6, "  Estimated discharge time remaining: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v12, 0x3e8

    div-long v12, v48, v12

    move-object/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v11

    const/16 v35, 0x0

    :goto_7
    sget-object v6, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v6, v6

    move/from16 v0, v35

    if-ge v0, v6, :cond_f

    const-string/jumbo v6, "  Estimated "

    sget-object v10, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v10, v10, v35

    const-string/jumbo v19, " time: "

    sget-object v12, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    aget v12, v12, v35

    int-to-long v12, v12

    sget-object v14, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v14, v14, v35

    int-to-long v14, v14

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v16

    move-object/from16 v12, p2

    move-object v13, v6

    move-object v14, v10

    move-object/from16 v15, v19

    invoke-static/range {v12 .. v17}, Landroid/os/BatteryStats;->dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    add-int/lit8 v35, v35, 0x1

    goto :goto_7

    :cond_f
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_10
    const-string/jumbo v6, "  "

    const-string/jumbo v10, "Charge step durations:"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v48

    const-wide/16 v12, 0x0

    cmp-long v6, v48, v12

    if-ltz v6, :cond_11

    const-string/jumbo v6, "  Estimated charge time remaining: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v12, 0x3e8

    div-long v12, v48, v12

    move-object/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_11
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_12
    if-eqz v34, :cond_13

    and-int/lit8 v6, p3, 0x6

    if-eqz v6, :cond_1f

    :cond_13
    const-string/jumbo v6, "Daily stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "  Current start time: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCurrentDailyStartTime()J

    move-result-wide v12

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "  Next min deadline: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMinDailyDeadline()J

    move-result-wide v12

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "  Next max deadline: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMaxDailyDeadline()J

    move-result-wide v12

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v17, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v6, 0x1

    new-array v0, v6, [I

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyPackageChanges()Ljava/util/ArrayList;

    move-result-object v45

    move-object/from16 v0, v16

    iget v6, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v6, :cond_14

    move-object/from16 v0, v23

    iget v6, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-lez v6, :cond_17

    :cond_14
    :goto_8
    and-int/lit8 v6, p3, 0x4

    if-nez v6, :cond_18

    if-eqz v34, :cond_18

    const-string/jumbo v6, "  Current daily steps:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v14, "    "

    const-string/jumbo v15, "Discharge"

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    const-string/jumbo v21, "    "

    const-string/jumbo v22, "Charge"

    move-object/from16 v19, p0

    move-object/from16 v20, p2

    move-object/from16 v24, v17

    move-object/from16 v25, v18

    invoke-direct/range {v19 .. v25}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    :cond_15
    :goto_9
    const/16 v31, 0x0

    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;

    move-result-object v33

    if-eqz v33, :cond_1e

    add-int/lit8 v31, v31, 0x1

    and-int/lit8 v6, p3, 0x4

    if-eqz v6, :cond_16

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_16
    const-string/jumbo v6, "  Daily from "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    move-object/from16 v0, v33

    iget-wide v12, v0, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, " to "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    move-object/from16 v0, v33

    iget-wide v12, v0, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    and-int/lit8 v6, p3, 0x4

    if-nez v6, :cond_1b

    if-eqz v34, :cond_1b

    const-string/jumbo v26, "    "

    const-string/jumbo v27, "Discharge"

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v28, v0

    move-object/from16 v24, p0

    move-object/from16 v25, p2

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    const-string/jumbo v26, "    "

    const-string/jumbo v27, "Charge"

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v28, v0

    move-object/from16 v24, p0

    move-object/from16 v25, p2

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto/16 :goto_a

    :cond_17
    if-eqz v45, :cond_15

    goto/16 :goto_8

    :cond_18
    const-string/jumbo v6, "    "

    const-string/jumbo v10, "  Current daily discharge step durations:"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v6, v10, v1, v12}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_19

    const-string/jumbo v14, "      "

    const-string/jumbo v15, "Discharge"

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    :cond_19
    const-string/jumbo v6, "    "

    const-string/jumbo v10, "  Current daily charge step durations:"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-static {v0, v6, v10, v1, v12}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_1a

    const-string/jumbo v21, "      "

    const-string/jumbo v22, "Charge"

    move-object/from16 v19, p0

    move-object/from16 v20, p2

    move-object/from16 v24, v17

    move-object/from16 v25, v18

    invoke-direct/range {v19 .. v25}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    :cond_1a
    const-string/jumbo v6, "    "

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v6, v2}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_9

    :cond_1b
    const-string/jumbo v6, "      "

    const-string/jumbo v10, "    Discharge step durations:"

    move-object/from16 v0, v33

    iget-object v12, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_1c

    const-string/jumbo v26, "        "

    const-string/jumbo v27, "Discharge"

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v28, v0

    move-object/from16 v24, p0

    move-object/from16 v25, p2

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    :cond_1c
    const-string/jumbo v6, "      "

    const-string/jumbo v10, "    Charge step durations:"

    move-object/from16 v0, v33

    iget-object v12, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_1d

    const-string/jumbo v26, "        "

    const-string/jumbo v27, "Charge"

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v28, v0

    move-object/from16 v24, p0

    move-object/from16 v25, p2

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    :cond_1d
    const-string/jumbo v6, "    "

    move-object/from16 v0, v33

    iget-object v10, v0, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v10}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_a

    :cond_1e
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_1f
    if-eqz v34, :cond_20

    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_21

    :cond_20
    const-string/jumbo v6, "Statistics since last charge:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "  System starts: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, ", currently on battery: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v27, ""

    and-int/lit8 v6, p3, 0x40

    if-eqz v6, :cond_22

    const/16 v30, 0x1

    :goto_b
    const/16 v28, 0x0

    move-object/from16 v24, p0

    move-object/from16 v25, p1

    move-object/from16 v26, p2

    move/from16 v29, p4

    invoke-virtual/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_21
    return-void

    :cond_22
    const/16 v30, 0x0

    goto :goto_b
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .locals 7

    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V
    .locals 244

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v12, 0x3e8

    mul-long v154, v6, v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v12, 0x3e8

    mul-long v24, v6, v12

    move-object/from16 v0, p0

    move-wide/from16 v1, v154

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v44

    move-object/from16 v0, p0

    move-wide/from16 v1, v154

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v218

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v212

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v186

    move-object/from16 v0, p0

    move-wide/from16 v1, v154

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v192

    move-object/from16 v0, p0

    move-wide/from16 v1, v154

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v216

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v214

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v42

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v56

    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v202

    invoke-virtual/range {v202 .. v202}, Landroid/util/SparseArray;->size()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v81

    if-lez v81, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Estimated battery capacity: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v81

    int-to-double v6, v0

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Time on battery: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v212, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v212

    move-wide/from16 v3, v186

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") realtime, "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v218, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v218

    move-wide/from16 v3, v186

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") uptime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Time on battery screen off: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v214, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v214

    move-wide/from16 v3, v186

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") realtime, "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v216, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v216

    move-wide/from16 v3, v186

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") uptime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Total run time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v186, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "realtime, "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v192, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "uptime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v6, v42, v6

    if-ltz v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Battery time remaining: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v42, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v56, v6

    if-ltz v6, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Charge time remaining: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v56, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCoulombCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v70

    const-wide/16 v6, 0x0

    cmp-long v6, v70, v6

    if-ltz v6, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Discharge: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v70

    long-to-double v6, v0

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeScreenOffCoulombCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v73

    move-object/from16 v0, v73

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v74

    const-wide/16 v6, 0x0

    cmp-long v6, v74, v6

    if-ltz v6, :cond_4

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Screen off discharge: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v74

    long-to-double v6, v0

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    sub-long v76, v70, v74

    const-wide/16 v6, 0x0

    cmp-long v6, v76, v6

    if-ltz v6, :cond_5

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Screen on discharge: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v76

    long-to-double v6, v0

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v6, "  Start clock time: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v12

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v158

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v100

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v150

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v64

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v62

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v68

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v66

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v146

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v222

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v220

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Screen on: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v158, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v158

    move-wide/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getScreenOnCount(I)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x, Interactive: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v100, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v100

    move-wide/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Screen brightnesses:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v61, 0x0

    const/16 v97, 0x0

    :goto_0
    const/4 v6, 0x5

    move/from16 v0, v97

    if-ge v0, v6, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, v97

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v174

    const-wide/16 v6, 0x0

    cmp-long v6, v174, v6

    if-nez v6, :cond_6

    :goto_1
    add-int/lit8 v97, v97, 0x1

    goto :goto_0

    :cond_6
    const-string/jumbo v6, "\n    "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v61, 0x1

    sget-object v6, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v97

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v174, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v174

    move-wide/from16 v3, v158

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    if-nez v61, :cond_8

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v6, v150, v6

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Power save mode enabled: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v150, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v150

    move-wide/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    const-wide/16 v6, 0x0

    cmp-long v6, v68, v6

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Device light idling: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v68, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v68

    move-wide/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    const-wide/16 v6, 0x0

    cmp-long v6, v64, v6

    if-eqz v6, :cond_b

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Idle mode light time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v64, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v64

    move-wide/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " -- longest "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b
    const-wide/16 v6, 0x0

    cmp-long v6, v66, v6

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Device full idling: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v66, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v66

    move-wide/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    const-wide/16 v6, 0x0

    cmp-long v6, v62, v6

    if-eqz v6, :cond_d

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Idle mode full time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v62, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v62

    move-wide/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " -- longest "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d
    const-wide/16 v6, 0x0

    cmp-long v6, v146, v6

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Active phone call: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v146, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v146

    move-wide/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getPhoneOnCount(I)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v58

    if-eqz v58, :cond_f

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Connectivity changes: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    :cond_f
    const-wide/16 v86, 0x0

    const-wide/16 v144, 0x0

    new-instance v177, Ljava/util/ArrayList;

    invoke-direct/range {v177 .. v177}, Ljava/util/ArrayList;-><init>()V

    const/16 v107, 0x0

    :goto_2
    move/from16 v0, v107

    move/from16 v1, v38

    if-ge v0, v1, :cond_14

    move-object/from16 v0, v202

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v196

    check-cast v196, Landroid/os/BatteryStats$Uid;

    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v210

    invoke-virtual/range {v210 .. v210}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v108, v6, -0x1

    :goto_3
    if-ltz v108, :cond_13

    move-object/from16 v0, v210

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v233

    check-cast v233, Landroid/os/BatteryStats$Uid$Wakelock;

    const/4 v6, 0x1

    move-object/from16 v0, v233

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v83

    if-eqz v83, :cond_10

    move-object/from16 v0, v83

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    add-long v86, v86, v6

    :cond_10
    const/4 v6, 0x0

    move-object/from16 v0, v233

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    if-eqz v9, :cond_12

    move-wide/from16 v0, v24

    move/from16 v2, p4

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v10

    const-wide/16 v6, 0x0

    cmp-long v6, v10, v6

    if-lez v6, :cond_12

    if-gez p5, :cond_11

    new-instance v6, Landroid/os/BatteryStats$TimerEntry;

    move-object/from16 v0, v210

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-direct/range {v6 .. v11}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v0, v177

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-long v144, v144, v10

    :cond_12
    add-int/lit8 v108, v108, -0x1

    goto :goto_3

    :cond_13
    add-int/lit8 v107, v107, 0x1

    goto :goto_2

    :cond_14
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v124

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v132

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v228

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v240

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v126

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v134

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v230

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v242

    const/4 v6, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v50

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v54

    const-wide/16 v6, 0x0

    cmp-long v6, v86, v6

    if-eqz v6, :cond_15

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Total full wakelock time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x1f4

    add-long v6, v6, v86

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_15
    const-wide/16 v6, 0x0

    cmp-long v6, v144, v6

    if-eqz v6, :cond_16

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Total partial wakelock time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x1f4

    add-long v6, v6, v144

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_16
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Mobile total received: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v124

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, ", sent: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v132

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, " (packets received "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v126

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v6, ", sent "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v134

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v6, ")"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Phone signal levels:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v61, 0x0

    const/16 v97, 0x0

    :goto_4
    sget v6, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    move/from16 v0, v97

    if-ge v0, v6, :cond_18

    move-object/from16 v0, p0

    move/from16 v1, v97

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v174

    const-wide/16 v6, 0x0

    cmp-long v6, v174, v6

    if-nez v6, :cond_17

    :goto_5
    add-int/lit8 v97, v97, 0x1

    goto :goto_4

    :cond_17
    const-string/jumbo v6, "\n    "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v61, 0x1

    sget-object v6, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v97

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v174, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v174

    move-wide/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, v97

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_18
    if-nez v61, :cond_19

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Signal scanning time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v6

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Radio types:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v61, 0x0

    const/16 v97, 0x0

    :goto_6
    const/16 v6, 0x11

    move/from16 v0, v97

    if-ge v0, v6, :cond_1b

    move-object/from16 v0, p0

    move/from16 v1, v97

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v174

    const-wide/16 v6, 0x0

    cmp-long v6, v174, v6

    if-nez v6, :cond_1a

    :goto_7
    add-int/lit8 v97, v97, 0x1

    goto :goto_6

    :cond_1a
    const-string/jumbo v6, "\n    "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v61, 0x1

    sget-object v6, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v97

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v174, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v174

    move-wide/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, v97

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_1b
    if-nez v61, :cond_1c

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Mobile radio active time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v116

    const-wide/16 v6, 0x3e8

    div-long v6, v116, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v116

    move-wide/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v118

    const-wide/16 v6, 0x0

    cmp-long v6, v118, v6

    if-eqz v6, :cond_1d

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Mobile radio active unknown time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v118, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v118

    move-wide/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownCount(I)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v114

    const-wide/16 v6, 0x0

    cmp-long v6, v114, v6

    if-eqz v6, :cond_1e

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Mobile radio active adjusted time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v114, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v114

    move-wide/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1e
    const-string/jumbo v16, "Radio"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v17

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v15, p3

    move/from16 v18, p4

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Wi-Fi total received: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v228

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, ", sent: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v240

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, " (packets received "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v230

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v6, ", sent "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v242

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v6, ")"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Wifi on: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v220, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v220

    move-wide/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "), Wifi running: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v222, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v222

    move-wide/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Wifi states:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v61, 0x0

    const/16 v97, 0x0

    :goto_8
    const/16 v6, 0x8

    move/from16 v0, v97

    if-ge v0, v6, :cond_20

    move-object/from16 v0, p0

    move/from16 v1, v97

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v174

    const-wide/16 v6, 0x0

    cmp-long v6, v174, v6

    if-nez v6, :cond_1f

    :goto_9
    add-int/lit8 v97, v97, 0x1

    goto :goto_8

    :cond_1f
    const-string/jumbo v6, "\n    "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v61, 0x1

    sget-object v6, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v97

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v174, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v174

    move-wide/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, v97

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiStateCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_20
    if-nez v61, :cond_21

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Wifi supplicant states:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v61, 0x0

    const/16 v97, 0x0

    :goto_a
    const/16 v6, 0xd

    move/from16 v0, v97

    if-ge v0, v6, :cond_23

    move-object/from16 v0, p0

    move/from16 v1, v97

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v174

    const-wide/16 v6, 0x0

    cmp-long v6, v174, v6

    if-nez v6, :cond_22

    :goto_b
    add-int/lit8 v97, v97, 0x1

    goto :goto_a

    :cond_22
    const-string/jumbo v6, "\n    "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v61, 0x1

    sget-object v6, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v97

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v174, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v174

    move-wide/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, v97

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSupplStateCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_23
    if-nez v61, :cond_24

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Wifi signal levels:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v61, 0x0

    const/16 v97, 0x0

    :goto_c
    const/4 v6, 0x5

    move/from16 v0, v97

    if-ge v0, v6, :cond_26

    move-object/from16 v0, p0

    move/from16 v1, v97

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v174

    const-wide/16 v6, 0x0

    cmp-long v6, v174, v6

    if-nez v6, :cond_25

    :goto_d
    add-int/lit8 v97, v97, 0x1

    goto :goto_c

    :cond_25
    const-string/jumbo v6, "\n    "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v61, 0x1

    const-string/jumbo v6, "level("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v97

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v174, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v174

    move-wide/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, v97

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSignalStrengthCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_26
    if-nez v61, :cond_27

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v16, "WiFi"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v17

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v15, p3

    move/from16 v18, p4

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Bluetooth total received: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, ", sent: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getBluetoothScanTime(JI)J

    move-result-wide v6

    const-wide/16 v12, 0x3e8

    div-long v46, v6, v12

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Bluetooth scan time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v46

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v16, "Bluetooth"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v17

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v15, p3

    move/from16 v18, p4

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const/4 v6, 0x2

    move/from16 v0, p4

    if-ne v0, v6, :cond_36

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Device is currently unplugged"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Discharge cycle start level: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Discharge cycle current level: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    :goto_e
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged while screen on: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged while screen off: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v6, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_f
    new-instance v96, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v6, 0x0

    move-object/from16 v0, v96

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    move-object/from16 v0, v96

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    const/4 v6, -0x1

    move-object/from16 v0, v96

    move/from16 v1, p4

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    invoke-virtual/range {v96 .. v96}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v163

    if-eqz v163, :cond_38

    invoke-interface/range {v163 .. v163}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_38

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Estimated power use (mAh):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Capacity: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v96 .. v96}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    const-string/jumbo v6, ", Computed drain: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v96 .. v96}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    const-string/jumbo v6, ", actual drain: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v96 .. v96}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    invoke-virtual/range {v96 .. v96}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v6

    invoke-virtual/range {v96 .. v96}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v12

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_28

    const-string/jumbo v6, "-"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v96 .. v96}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_28
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const/16 v97, 0x0

    :goto_10
    invoke-interface/range {v163 .. v163}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v97

    if-ge v0, v6, :cond_37

    move-object/from16 v0, v163

    move/from16 v1, v97

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/internal/os/BatterySipper;

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/BatteryStats;->-getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I

    move-result-object v6

    move-object/from16 v0, v41

    iget-object v7, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    const-string/jumbo v6, "    ???: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_11
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    move-object/from16 v0, v41

    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_34

    const-string/jumbo v6, " ("

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_29

    const-string/jumbo v6, " usage="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_29
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_2a

    const-string/jumbo v6, " cpu="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_2a
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->gpuPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_2b

    const-string/jumbo v6, " gpu="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->gpuPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_2b
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_2c

    const-string/jumbo v6, " wake="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_2c
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_2d

    const-string/jumbo v6, " radio="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_2d
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_2e

    const-string/jumbo v6, " wifi="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_2e
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_2f

    const-string/jumbo v6, " bt="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_2f
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_30

    const-string/jumbo v6, " gps="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_30
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_31

    const-string/jumbo v6, " sensor="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_31
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_32

    const-string/jumbo v6, " camera="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_32
    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_33

    const-string/jumbo v6, " flash="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_33
    const-string/jumbo v6, " )"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_34
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v97, v97, 0x1

    goto/16 :goto_10

    :cond_35
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Device is currently plugged into power"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Last discharge cycle start level: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Last discharge cycle end level: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_e

    :cond_36
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Device battery use since last full charge"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged (lower bound): "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged (upper bound): "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged while screen on: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged while screen off: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_f

    :pswitch_0
    const-string/jumbo v6, "    Idle: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_1
    const-string/jumbo v6, "    Cell standby: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_2
    const-string/jumbo v6, "    Phone calls: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_3
    const-string/jumbo v6, "    Wifi: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_4
    const-string/jumbo v6, "    Bluetooth: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_5
    const-string/jumbo v6, "    Screen: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_6
    const-string/jumbo v6, "    Flashlight: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_7
    const-string/jumbo v6, "    Uid "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v41

    iget-object v6, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v6, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_8
    const-string/jumbo v6, "    User "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v41

    iget v6, v0, Lcom/android/internal/os/BatterySipper;->userId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v6, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_9
    const-string/jumbo v6, "    Unaccounted: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_a
    const-string/jumbo v6, "    Over-counted: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_b
    const-string/jumbo v6, "    Camera: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_37
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_38
    invoke-virtual/range {v96 .. v96}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilemsppList()Ljava/util/List;

    move-result-object v163

    if-eqz v163, :cond_3a

    invoke-interface/range {v163 .. v163}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3a

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Per-app mobile ms per packet:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v190, 0x0

    const/16 v97, 0x0

    :goto_12
    invoke-interface/range {v163 .. v163}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v97

    if-ge v0, v6, :cond_39

    move-object/from16 v0, v163

    move/from16 v1, v97

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/internal/os/BatterySipper;

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Uid "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v41

    iget-object v6, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-static {v14, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v6, ": "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    move-object/from16 v0, v41

    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long/2addr v6, v12

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " packets over "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v41

    iget v6, v0, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, v41

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    add-long v190, v190, v6

    add-int/lit8 v97, v97, 0x1

    goto :goto_12

    :cond_39
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    TOTAL TIME: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v190

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v190

    move-wide/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_3a
    new-instance v176, Landroid/os/BatteryStats$1;

    move-object/from16 v0, v176

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$1;-><init>(Landroid/os/BatteryStats;)V

    if-gez p5, :cond_44

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v111

    invoke-interface/range {v111 .. v111}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_3f

    new-instance v112, Ljava/util/ArrayList;

    invoke-direct/range {v112 .. v112}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v111 .. v111}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v80

    :cond_3b
    :goto_13
    invoke-interface/range {v80 .. v80}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-interface/range {v80 .. v80}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v79

    check-cast v79, Ljava/util/Map$Entry;

    invoke-interface/range {v79 .. v79}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/BatteryStats$Timer;

    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v20

    const-wide/16 v6, 0x0

    cmp-long v6, v20, v6

    if-lez v6, :cond_3b

    new-instance v16, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface/range {v79 .. v79}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v21}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v0, v112

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_3c
    invoke-virtual/range {v112 .. v112}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3f

    move-object/from16 v0, v112

    move-object/from16 v1, v176

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  All kernel wake locks:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v97, 0x0

    :goto_14
    invoke-virtual/range {v112 .. v112}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v97

    if-ge v0, v6, :cond_3e

    move-object/from16 v0, v112

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v169

    check-cast v169, Landroid/os/BatteryStats$TimerEntry;

    const-string/jumbo v28, ": "

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Kernel Wake lock "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v169

    iget-object v6, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v169

    iget-object v0, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    move-object/from16 v22, v14

    move/from16 v27, p4

    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v6, ": "

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    const-string/jumbo v6, " realtime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3d
    add-int/lit8 v97, v97, 0x1

    goto :goto_14

    :cond_3e
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_3f
    invoke-virtual/range {v177 .. v177}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_41

    move-object/from16 v0, v177

    move-object/from16 v1, v176

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  All partial wake locks:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v97, 0x0

    :goto_15
    invoke-virtual/range {v177 .. v177}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v97

    if-ge v0, v6, :cond_40

    move-object/from16 v0, v177

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v169

    check-cast v169, Landroid/os/BatteryStats$TimerEntry;

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v6, "  Wake lock "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v169

    iget v6, v0, Landroid/os/BatteryStats$TimerEntry;->mId:I

    invoke-static {v14, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v169

    iget-object v6, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v169

    iget-object v0, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move-object/from16 v31, v0

    const-string/jumbo v36, ": "

    const/16 v34, 0x0

    move-object/from16 v30, v14

    move-wide/from16 v32, v24

    move/from16 v35, p4

    invoke-static/range {v30 .. v36}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    const-string/jumbo v6, " realtime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v97, v97, 0x1

    goto :goto_15

    :cond_40
    invoke-virtual/range {v177 .. v177}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_41
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v211

    invoke-interface/range {v211 .. v211}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_44

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  All wakeup reasons:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v156, Ljava/util/ArrayList;

    invoke-direct/range {v156 .. v156}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v211 .. v211}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v80

    :goto_16
    invoke-interface/range {v80 .. v80}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface/range {v80 .. v80}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v79

    check-cast v79, Ljava/util/Map$Entry;

    invoke-interface/range {v79 .. v79}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/BatteryStats$Timer;

    new-instance v30, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface/range {v79 .. v79}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v34, v0

    const/16 v32, 0x0

    move-object/from16 v33, v19

    invoke-direct/range {v30 .. v35}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v0, v156

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_42
    move-object/from16 v0, v156

    move-object/from16 v1, v176

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v97, 0x0

    :goto_17
    invoke-virtual/range {v156 .. v156}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v97

    if-ge v0, v6, :cond_43

    move-object/from16 v0, v156

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v169

    check-cast v169, Landroid/os/BatteryStats$TimerEntry;

    const-string/jumbo v28, ": "

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Wakeup reason "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v169

    iget-object v6, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v169

    iget-object v0, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move-object/from16 v31, v0

    const-string/jumbo v36, ": "

    const/16 v34, 0x0

    move-object/from16 v30, v14

    move-wide/from16 v32, v24

    move/from16 v35, p4

    invoke-static/range {v30 .. v36}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    const-string/jumbo v6, " realtime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v97, v97, 0x1

    goto :goto_17

    :cond_43
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_44
    const/16 v107, 0x0

    :goto_18
    move/from16 v0, v107

    move/from16 v1, v38

    if-ge v0, v1, :cond_8a

    move-object/from16 v0, v202

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v197

    if-ltz p5, :cond_46

    move/from16 v0, v197

    move/from16 v1, p5

    if-eq v0, v1, :cond_46

    const/16 v6, 0x3e8

    move/from16 v0, v197

    if-eq v0, v6, :cond_46

    :cond_45
    :goto_19
    add-int/lit8 v107, v107, 0x1

    goto :goto_18

    :cond_46
    move-object/from16 v0, v202

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v196

    check-cast v196, Landroid/os/BatteryStats$Uid;

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move/from16 v1, v197

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v6, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object/from16 v0, v196

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v120

    const/4 v6, 0x1

    move-object/from16 v0, v196

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v128

    const/4 v6, 0x2

    move-object/from16 v0, v196

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v224

    const/4 v6, 0x3

    move-object/from16 v0, v196

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v236

    const/4 v6, 0x4

    move-object/from16 v0, v196

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v48

    const/4 v6, 0x5

    move-object/from16 v0, v196

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v52

    const/4 v6, 0x0

    move-object/from16 v0, v196

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v122

    const/4 v6, 0x1

    move-object/from16 v0, v196

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v130

    const/4 v6, 0x2

    move-object/from16 v0, v196

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v226

    const/4 v6, 0x3

    move-object/from16 v0, v196

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v238

    move-object/from16 v0, v196

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v200

    move-object/from16 v0, v196

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v199

    move-object/from16 v0, v196

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v88

    move-object/from16 v0, v196

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v234

    move-object/from16 v0, v196

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v232

    move-object/from16 v0, v196

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v204

    const-wide/16 v6, 0x0

    cmp-long v6, v120, v6

    if-gtz v6, :cond_47

    const-wide/16 v6, 0x0

    cmp-long v6, v128, v6

    if-lez v6, :cond_53

    :cond_47
    :goto_1a
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Mobile network: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v120

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v128

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, " sent (packets "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v122

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v130

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v6, " sent)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_48
    const-wide/16 v6, 0x0

    cmp-long v6, v200, v6

    if-gtz v6, :cond_49

    if-lez v199, :cond_4b

    :cond_49
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Mobile radio active: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v200, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v200

    move-wide/from16 v3, v116

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v199

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v142, v122, v130

    const-wide/16 v6, 0x0

    cmp-long v6, v142, v6

    if-nez v6, :cond_4a

    const-wide/16 v142, 0x1

    :cond_4a
    const-string/jumbo v6, " @ "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v200, v6

    long-to-double v6, v6

    move-wide/from16 v0, v142

    long-to-double v12, v0

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " mspp"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "Modem"

    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v17

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move/from16 v18, p4

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide/16 v6, 0x0

    cmp-long v6, v224, v6

    if-gtz v6, :cond_4c

    const-wide/16 v6, 0x0

    cmp-long v6, v236, v6

    if-lez v6, :cond_54

    :cond_4c
    :goto_1b
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Wi-Fi network: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v224

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v236

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, " sent (packets "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v226

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v238

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v6, " sent)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4d
    const-wide/16 v6, 0x0

    cmp-long v6, v88, v6

    if-nez v6, :cond_4e

    const-wide/16 v6, 0x0

    cmp-long v6, v234, v6

    if-eqz v6, :cond_55

    :cond_4e
    :goto_1c
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Wifi Running: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v204, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v204

    move-wide/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ")\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Full Wifi Lock: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v88, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v88

    move-wide/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ")\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Wifi Scan: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v234, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v234

    move-wide/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v232

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "WiFi"

    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v17

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move/from16 v18, p4

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide/16 v6, 0x0

    cmp-long v6, v48, v6

    if-gtz v6, :cond_50

    const-wide/16 v6, 0x0

    cmp-long v6, v52, v6

    if-lez v6, :cond_51

    :cond_50
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Bluetooth network: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, " sent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_51
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v31

    const-string/jumbo v36, "Bluetooth Scan"

    move-object/from16 v29, p2

    move-object/from16 v30, v14

    move-wide/from16 v32, v24

    move/from16 v34, p4

    move-object/from16 v35, p3

    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v198

    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v6

    if-eqz v6, :cond_58

    const/16 v94, 0x0

    const/16 v97, 0x0

    :goto_1d
    const/4 v6, 0x4

    move/from16 v0, v97

    if-ge v0, v6, :cond_57

    move-object/from16 v0, v196

    move/from16 v1, v97

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v203

    if-eqz v203, :cond_52

    if-nez v94, :cond_56

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v6, "    User activity: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v94, 0x1

    :goto_1e
    move/from16 v0, v203

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    aget-object v6, v6, v97

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_52
    add-int/lit8 v97, v97, 0x1

    goto :goto_1d

    :cond_53
    const-wide/16 v6, 0x0

    cmp-long v6, v122, v6

    if-gtz v6, :cond_47

    const-wide/16 v6, 0x0

    cmp-long v6, v130, v6

    if-lez v6, :cond_48

    goto/16 :goto_1a

    :cond_54
    const-wide/16 v6, 0x0

    cmp-long v6, v226, v6

    if-gtz v6, :cond_4c

    const-wide/16 v6, 0x0

    cmp-long v6, v238, v6

    if-lez v6, :cond_4d

    goto/16 :goto_1b

    :cond_55
    if-nez v232, :cond_4e

    const-wide/16 v6, 0x0

    cmp-long v6, v204, v6

    if-eqz v6, :cond_4f

    goto/16 :goto_1c

    :cond_56
    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_57
    if-eqz v94, :cond_58

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_58
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v210

    const-wide/16 v180, 0x0

    const-wide/16 v184, 0x0

    const-wide/16 v194, 0x0

    const-wide/16 v178, 0x0

    const/16 v60, 0x0

    invoke-virtual/range {v210 .. v210}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v108, v6, -0x1

    :goto_1f
    if-ltz v108, :cond_59

    move-object/from16 v0, v210

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v233

    check-cast v233, Landroid/os/BatteryStats$Uid$Wakelock;

    const-string/jumbo v28, ": "

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Wake lock "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v210

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    move-object/from16 v0, v233

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v23

    const-string/jumbo v26, "full"

    move-object/from16 v22, v14

    move/from16 v27, p4

    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/4 v6, 0x0

    move-object/from16 v0, v233

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v23

    const-string/jumbo v26, "partial"

    move-object/from16 v22, v14

    move/from16 v27, p4

    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/4 v6, 0x2

    move-object/from16 v0, v233

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v23

    const-string/jumbo v26, "window"

    move-object/from16 v22, v14

    move/from16 v27, p4

    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/16 v6, 0x12

    move-object/from16 v0, v233

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v23

    const-string/jumbo v26, "draw"

    move-object/from16 v22, v14

    move/from16 v27, p4

    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v6, " realtime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v198, 0x1

    add-int/lit8 v60, v60, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, v233

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    move-wide/from16 v0, v24

    move/from16 v2, p4

    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    add-long v180, v180, v6

    const/4 v6, 0x0

    move-object/from16 v0, v233

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    move-wide/from16 v0, v24

    move/from16 v2, p4

    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    add-long v184, v184, v6

    const/4 v6, 0x2

    move-object/from16 v0, v233

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    move-wide/from16 v0, v24

    move/from16 v2, p4

    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    add-long v194, v194, v6

    const/16 v6, 0x12

    move-object/from16 v0, v233

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    move-wide/from16 v0, v24

    move/from16 v2, p4

    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    add-long v178, v178, v6

    add-int/lit8 v108, v108, -0x1

    goto/16 :goto_1f

    :cond_59
    const/4 v6, 0x1

    move/from16 v0, v60

    if-le v0, v6, :cond_62

    const-wide/16 v6, 0x0

    cmp-long v6, v180, v6

    if-nez v6, :cond_5a

    const-wide/16 v6, 0x0

    cmp-long v6, v184, v6

    if-eqz v6, :cond_63

    :cond_5a
    :goto_20
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    TOTAL wake: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v136, 0x0

    const-wide/16 v6, 0x0

    cmp-long v6, v180, v6

    if-eqz v6, :cond_5b

    const/16 v136, 0x1

    move-wide/from16 v0, v180

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "full"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5b
    const-wide/16 v6, 0x0

    cmp-long v6, v184, v6

    if-eqz v6, :cond_5d

    if-eqz v136, :cond_5c

    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5c
    const/16 v136, 0x1

    move-wide/from16 v0, v184

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "partial"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5d
    const-wide/16 v6, 0x0

    cmp-long v6, v194, v6

    if-eqz v6, :cond_5f

    if-eqz v136, :cond_5e

    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5e
    const/16 v136, 0x1

    move-wide/from16 v0, v194

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "window"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5f
    const-wide/16 v6, 0x0

    cmp-long v6, v178, v6

    if-eqz v6, :cond_61

    if-eqz v136, :cond_60

    const-string/jumbo v6, ","

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_60
    const/16 v136, 0x1

    move-wide/from16 v0, v178

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "draw"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_61
    const-string/jumbo v6, " realtime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_62
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v168

    invoke-virtual/range {v168 .. v168}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v106, v6, -0x1

    :goto_21
    if-ltz v106, :cond_65

    move-object/from16 v0, v168

    move/from16 v1, v106

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/BatteryStats$Timer;

    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v12, 0x1f4

    add-long/2addr v6, v12

    const-wide/16 v12, 0x3e8

    div-long v190, v6, v12

    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v59

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Sync "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v168

    move/from16 v1, v106

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ": "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x0

    cmp-long v6, v190, v6

    if-eqz v6, :cond_64

    move-wide/from16 v0, v190

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "realtime ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v59

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_22
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v198, 0x1

    add-int/lit8 v106, v106, -0x1

    goto :goto_21

    :cond_63
    const-wide/16 v6, 0x0

    cmp-long v6, v194, v6

    if-eqz v6, :cond_62

    goto/16 :goto_20

    :cond_64
    const-string/jumbo v6, "(not used)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    :cond_65
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v110

    invoke-virtual/range {v110 .. v110}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v98, v6, -0x1

    :goto_23
    if-ltz v98, :cond_67

    move-object/from16 v0, v110

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/BatteryStats$Timer;

    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v12, 0x1f4

    add-long/2addr v6, v12

    const-wide/16 v12, 0x3e8

    div-long v190, v6, v12

    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v59

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Job "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v110

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ": "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x0

    cmp-long v6, v190, v6

    if-eqz v6, :cond_66

    move-wide/from16 v0, v190

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "realtime ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v59

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_24
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v198, 0x1

    add-int/lit8 v98, v98, -0x1

    goto :goto_23

    :cond_66
    const-string/jumbo v6, "(not used)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_67
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v31

    const-string/jumbo v36, "Flashlight"

    move-object/from16 v29, p2

    move-object/from16 v30, v14

    move-wide/from16 v32, v24

    move/from16 v34, p4

    move-object/from16 v35, p3

    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v198, v198, v6

    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v31

    const-string/jumbo v36, "Camera"

    move-object/from16 v29, p2

    move-object/from16 v30, v14

    move-wide/from16 v32, v24

    move/from16 v34, p4

    move-object/from16 v35, p3

    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v198, v198, v6

    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v31

    const-string/jumbo v36, "Video"

    move-object/from16 v29, p2

    move-object/from16 v30, v14

    move-wide/from16 v32, v24

    move/from16 v34, p4

    move-object/from16 v35, p3

    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v198, v198, v6

    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v31

    const-string/jumbo v36, "Audio"

    move-object/from16 v29, p2

    move-object/from16 v30, v14

    move-wide/from16 v32, v24

    move/from16 v34, p4

    move-object/from16 v35, p3

    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v198, v198, v6

    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v161

    invoke-virtual/range {v161 .. v161}, Landroid/util/SparseArray;->size()I

    move-result v37

    const/16 v104, 0x0

    :goto_25
    move/from16 v0, v104

    move/from16 v1, v37

    if-ge v0, v1, :cond_6b

    move-object/from16 v0, v161

    move/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v157

    check-cast v157, Landroid/os/BatteryStats$Uid$Sensor;

    move-object/from16 v0, v161

    move/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v160

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Sensor "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v157 .. v157}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v91

    const/16 v6, -0x2710

    move/from16 v0, v91

    if-ne v0, v6, :cond_68

    const-string/jumbo v6, "GPS"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_26
    const-string/jumbo v6, ": "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v157 .. v157}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v19

    if-eqz v19, :cond_6a

    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v12, 0x1f4

    add-long/2addr v6, v12

    const-wide/16 v12, 0x3e8

    div-long v190, v6, v12

    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v59

    const-wide/16 v6, 0x0

    cmp-long v6, v190, v6

    if-eqz v6, :cond_69

    move-wide/from16 v0, v190

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "realtime ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v59

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_27
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v198, 0x1

    add-int/lit8 v104, v104, 0x1

    goto/16 :goto_25

    :cond_68
    move/from16 v0, v91

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_69
    const-string/jumbo v6, "(not used)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_6a
    const-string/jumbo v6, "(not used)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_6b
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v31

    const-string/jumbo v36, "Vibrator"

    move-object/from16 v29, p2

    move-object/from16 v30, v14

    move-wide/from16 v32, v24

    move/from16 v34, p4

    move-object/from16 v35, p3

    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v198, v198, v6

    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v31

    const-string/jumbo v36, "Foreground activities"

    move-object/from16 v29, p2

    move-object/from16 v30, v14

    move-wide/from16 v32, v24

    move/from16 v34, p4

    move-object/from16 v35, p3

    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v198, v198, v6

    const-wide/16 v188, 0x0

    const/16 v103, 0x0

    :goto_28
    const/4 v6, 0x6

    move/from16 v0, v103

    if-ge v0, v6, :cond_6d

    move-object/from16 v0, v196

    move/from16 v1, v103

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v174

    const-wide/16 v6, 0x0

    cmp-long v6, v174, v6

    if-lez v6, :cond_6c

    add-long v188, v188, v174

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v103

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " for: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x1f4

    add-long v6, v6, v174

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v198, 0x1

    :cond_6c
    add-int/lit8 v103, v103, 0x1

    goto :goto_28

    :cond_6d
    const-wide/16 v6, 0x0

    cmp-long v6, v188, v6

    if-lez v6, :cond_6e

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Total running: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x1f4

    add-long v6, v6, v188

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6e
    move-object/from16 v0, v196

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v206

    move-object/from16 v0, v196

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v170

    move-object/from16 v0, v196

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getCpuPowerMaUs(I)J

    move-result-wide v148

    const-wide/16 v6, 0x0

    cmp-long v6, v206, v6

    if-gtz v6, :cond_6f

    const-wide/16 v6, 0x0

    cmp-long v6, v170, v6

    if-lez v6, :cond_72

    :cond_6f
    :goto_29
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Total cpu time: u="

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v206, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "s="

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v170, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "p="

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v148

    long-to-double v6, v0

    const-wide v12, 0x41ead27480000000L    # 3.6E9

    div-double/2addr v6, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/lang/StringBuilder;D)V

    const-string/jumbo v6, "mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_70
    invoke-virtual/range {v96 .. v96}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/os/PowerProfile;->getNumGpuSpeedSteps()I

    move-result v90

    const-wide/16 v182, 0x0

    const/16 v97, 0x0

    :goto_2a
    move/from16 v0, v97

    move/from16 v1, v90

    if-ge v0, v1, :cond_73

    move-object/from16 v0, v196

    move/from16 v1, v97

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getTimeAtGpuSpeed(II)J

    move-result-wide v92

    const-wide/16 v6, 0x0

    cmp-long v6, v92, v6

    if-eqz v6, :cond_71

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v6, "    #"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v97

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " GPU time(ms): "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v92

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-long v182, v182, v92

    :cond_71
    add-int/lit8 v97, v97, 0x1

    goto :goto_2a

    :cond_72
    const-wide/16 v6, 0x0

    cmp-long v6, v148, v6

    if-lez v6, :cond_70

    goto/16 :goto_29

    :cond_73
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v6, "    Total GPU time(ms): "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v182

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v141

    invoke-virtual/range {v141 .. v141}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v102, v6, -0x1

    :goto_2b
    if-ltz v102, :cond_82

    move-object/from16 v0, v141

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v153

    check-cast v153, Landroid/os/BatteryStats$Uid$Proc;

    move-object/from16 v0, v153

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v208

    move-object/from16 v0, v153

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v172

    move-object/from16 v0, v153

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v84

    move-object/from16 v0, v153

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v165

    move-object/from16 v0, v153

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v138

    move-object/from16 v0, v153

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v137

    if-nez p4, :cond_7c

    invoke-virtual/range {v153 .. v153}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    move-result v139

    :goto_2c
    const-wide/16 v6, 0x0

    cmp-long v6, v208, v6

    if-nez v6, :cond_74

    const-wide/16 v6, 0x0

    cmp-long v6, v172, v6

    if-eqz v6, :cond_7d

    :cond_74
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Proc "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v141

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ":\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "      CPU: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v208

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "usr + "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v172

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "krn ; "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v84

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "fg"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v165, :cond_75

    if-eqz v138, :cond_7e

    :cond_75
    :goto_2d
    const-string/jumbo v6, "\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "      "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v95, 0x0

    if-eqz v165, :cond_76

    const/16 v95, 0x1

    move/from16 v0, v165

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " starts"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_76
    if-eqz v138, :cond_78

    if-eqz v95, :cond_77

    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_77
    const/16 v95, 0x1

    move/from16 v0, v138

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " crashes"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_78
    if-eqz v137, :cond_7a

    if-eqz v95, :cond_79

    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_79
    move/from16 v0, v137

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " anrs"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7a
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v78, 0x0

    :goto_2e
    move/from16 v0, v78

    move/from16 v1, v139

    if-ge v0, v1, :cond_81

    move-object/from16 v0, v153

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    move-result-object v82

    if-eqz v82, :cond_7b

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "      * Killed for "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v82

    iget v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7f

    const-string/jumbo v6, "wake lock"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_2f
    const-string/jumbo v6, " use: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v82

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    move-object/from16 v0, p2

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string/jumbo v6, " over "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v82

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    move-object/from16 v0, p2

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    move-object/from16 v0, v82

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    const-wide/16 v12, 0x0

    cmp-long v6, v6, v12

    if-eqz v6, :cond_7b

    const-string/jumbo v6, " ("

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v82

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    const-wide/16 v12, 0x64

    mul-long/2addr v6, v12

    move-object/from16 v0, v82

    iget-wide v12, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    div-long/2addr v6, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v6, "%)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7b
    add-int/lit8 v78, v78, 0x1

    goto :goto_2e

    :cond_7c
    const/16 v139, 0x0

    goto/16 :goto_2c

    :cond_7d
    const-wide/16 v6, 0x0

    cmp-long v6, v84, v6

    if-nez v6, :cond_74

    if-nez v165, :cond_74

    if-nez v139, :cond_74

    if-nez v138, :cond_74

    if-nez v137, :cond_74

    :goto_30
    add-int/lit8 v102, v102, -0x1

    goto/16 :goto_2b

    :cond_7e
    if-eqz v137, :cond_7a

    goto/16 :goto_2d

    :cond_7f
    move-object/from16 v0, v82

    iget v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_80

    const-string/jumbo v6, "cpu"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2f

    :cond_80
    const-string/jumbo v6, "unknown"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2f

    :cond_81
    const/16 v198, 0x1

    goto :goto_30

    :cond_82
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v140

    invoke-virtual/range {v140 .. v140}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v99, v6, -0x1

    :goto_31
    if-ltz v99, :cond_89

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Apk "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v140

    move/from16 v1, v99

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v40, 0x0

    move-object/from16 v0, v140

    move/from16 v1, v99

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v152

    check-cast v152, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual/range {v152 .. v152}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v109, v6, -0x1

    :goto_32
    if-ltz v109, :cond_83

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "      Wakeup alarm "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v39

    move/from16 v1, v109

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v39

    move/from16 v1, v109

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Counter;

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v6, " times"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v40, 0x1

    add-int/lit8 v109, v109, -0x1

    goto :goto_32

    :cond_83
    invoke-virtual/range {v152 .. v152}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v162

    invoke-virtual/range {v162 .. v162}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v105, v6, -0x1

    :goto_33
    if-ltz v105, :cond_87

    move-object/from16 v0, v162

    move/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v164

    check-cast v164, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-object/from16 v0, v164

    move-wide/from16 v1, v44

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v166

    move-object/from16 v0, v164

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v165

    move-object/from16 v0, v164

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v113

    const-wide/16 v6, 0x0

    cmp-long v6, v166, v6

    if-nez v6, :cond_84

    if-eqz v165, :cond_86

    :cond_84
    :goto_34
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "      Service "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v162

    move/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ":\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "        Created for: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v166, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "uptime\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "        Starts: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v165

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ", launches: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v113

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v40, 0x1

    :cond_85
    add-int/lit8 v105, v105, -0x1

    goto/16 :goto_33

    :cond_86
    if-eqz v113, :cond_85

    goto :goto_34

    :cond_87
    if-nez v40, :cond_88

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "      (nothing executed)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_88
    const/16 v198, 0x1

    add-int/lit8 v99, v99, -0x1

    goto/16 :goto_31

    :cond_89
    if-nez v198, :cond_45

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    (nothing executed)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_19

    :cond_8a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_b
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_2
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_3
    .end packed-switch
.end method

.method public abstract finishIteratingHistoryLocked()V
.end method

.method public abstract finishIteratingOldHistoryLocked()V
.end method

.method final formatBytesLocked(J)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string/jumbo v1, "%.2fKB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p1

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string/jumbo v1, "%.2fMB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p1

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string/jumbo v1, "%.2fGB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p1

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final formatRatioLocked(JJ)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-nez v1, :cond_0

    const-string/jumbo v1, "--%"

    return-object v1

    :cond_0
    long-to-float v1, p1

    long-to-float v2, p3

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v1, v2

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string/jumbo v2, "%.1f%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract getBatteryRealtime(J)J
.end method

.method public abstract getBatteryUptime(J)J
.end method

.method public abstract getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getBluetoothScanTime(JI)J
.end method

.method public abstract getCameraOnTime(JI)J
.end method

.method public abstract getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getCurrentDailyStartTime()J
.end method

.method public abstract getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;
.end method

.method public abstract getDailyPackageChanges()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceIdleModeCount(II)I
.end method

.method public abstract getDeviceIdleModeTime(IJI)J
.end method

.method public abstract getDeviceIdlingCount(II)I
.end method

.method public abstract getDeviceIdlingTime(IJI)J
.end method

.method public abstract getDischargeAmount(I)I
.end method

.method public abstract getDischargeAmountScreenOff()I
.end method

.method public abstract getDischargeAmountScreenOffSinceCharge()I
.end method

.method public abstract getDischargeAmountScreenOn()I
.end method

.method public abstract getDischargeAmountScreenOnSinceCharge()I
.end method

.method public abstract getDischargeCoulombCounter()Landroid/os/BatteryStats$LongCounter;
.end method

.method public abstract getDischargeCurrentLevel()I
.end method

.method public abstract getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDischargeScreenOffCoulombCounter()Landroid/os/BatteryStats$LongCounter;
.end method

.method public abstract getDischargeStartLevel()I
.end method

.method public abstract getEndPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getEstimatedBatteryCapacity()I
.end method

.method public abstract getFlashlightOnCount(I)J
.end method

.method public abstract getFlashlightOnTime(JI)J
.end method

.method public abstract getGlobalWifiRunningTime(JI)J
.end method

.method public abstract getHighDischargeAmountSinceCharge()I
.end method

.method public abstract getHistoryBaseTime()J
.end method

.method public abstract getHistoryStringPoolBytes()I
.end method

.method public abstract getHistoryStringPoolSize()I
.end method

.method public abstract getHistoryTagPoolString(I)Ljava/lang/String;
.end method

.method public abstract getHistoryTagPoolUid(I)I
.end method

.method public abstract getHistoryTotalSize()I
.end method

.method public abstract getHistoryUsedSize()I
.end method

.method public abstract getInteractiveTime(JI)J
.end method

.method public abstract getIsOnBattery()Z
.end method

.method public abstract getKernelWakelockStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLongestDeviceIdleModeTime(I)J
.end method

.method public abstract getLowDischargeAmountSinceCharge()I
.end method

.method public abstract getMobileRadioActiveAdjustedTime(I)J
.end method

.method public abstract getMobileRadioActiveCount(I)I
.end method

.method public abstract getMobileRadioActiveTime(JI)J
.end method

.method public abstract getMobileRadioActiveUnknownCount(I)I
.end method

.method public abstract getMobileRadioActiveUnknownTime(I)J
.end method

.method public abstract getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getNetworkActivityBytes(II)J
.end method

.method public abstract getNetworkActivityPackets(II)J
.end method

.method public abstract getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getNextMaxDailyDeadline()J
.end method

.method public abstract getNextMinDailyDeadline()J
.end method

.method public abstract getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getNumConnectivityChange(I)I
.end method

.method public abstract getParcelVersion()I
.end method

.method public abstract getPhoneDataConnectionCount(II)I
.end method

.method public abstract getPhoneDataConnectionTime(IJI)J
.end method

.method public abstract getPhoneOnCount(I)I
.end method

.method public abstract getPhoneOnTime(JI)J
.end method

.method public abstract getPhoneSignalScanningTime(JI)J
.end method

.method public abstract getPhoneSignalStrengthCount(II)I
.end method

.method public abstract getPhoneSignalStrengthTime(IJI)J
.end method

.method public abstract getPowerSaveModeEnabledCount(I)I
.end method

.method public abstract getPowerSaveModeEnabledTime(JI)J
.end method

.method public abstract getScreenBrightnessTime(IJI)J
.end method

.method public abstract getScreenOnCount(I)I
.end method

.method public abstract getScreenOnTime(JI)J
.end method

.method public abstract getStartClockTime()J
.end method

.method public abstract getStartCount()I
.end method

.method public abstract getStartPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getUidStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWakeupReasonStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getWifiOnTime(JI)J
.end method

.method public abstract getWifiSignalStrengthCount(II)I
.end method

.method public abstract getWifiSignalStrengthTime(IJI)J
.end method

.method public abstract getWifiStateCount(II)I
.end method

.method public abstract getWifiStateTime(IJI)J
.end method

.method public abstract getWifiSupplStateCount(II)I
.end method

.method public abstract getWifiSupplStateTime(IJI)J
.end method

.method public abstract hasBluetoothActivityReporting()Z
.end method

.method public abstract hasModemActivityReporting()Z
.end method

.method public abstract hasWifiActivityReporting()Z
.end method

.method public prepareForDumpLocked()V
    .locals 0

    return-void
.end method

.method public abstract startIteratingHistoryLocked()Z
.end method

.method public abstract startIteratingOldHistoryLocked()Z
.end method

.method public abstract writeToParcelWithoutUids(Landroid/os/Parcel;I)V
.end method
