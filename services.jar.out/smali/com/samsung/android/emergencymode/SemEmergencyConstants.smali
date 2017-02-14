.class public Lcom/samsung/android/emergencymode/SemEmergencyConstants;
.super Ljava/lang/Object;
.source "SemEmergencyConstants.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final ALARM_ALLOW:I = 0x4

.field public static final ALLOWFLAG:Ljava/lang/String; = "allowflag"

.field public static final ALL_ALLOW:I = 0x7

.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.emergencymode"

.field public static final BATTERY_CONSERVING_MODE:I = 0x800

.field public static final BATTERY_CONSERVING_MODE_LAUNCHER:I = 0x2

.field public static final BLIND:I = 0x2

.field public static final CMD_UPDATE_TABLE:Ljava/lang/String; = "updatetable"

.field public static final DATABASE_VERSION:I = 0x1

.field public static final DEAF:I = 0x4

.field public static final DEFAULT_ALLOW:I = 0x1

.field public static final DETECT:I = 0x80

.field public static final DISASTER:I = 0x100

.field public static final EMERGENCY_CALL:Ljava/lang/String; = "emcall"

.field public static final EMERGENCY_CHECK_ABNORMAL_STATE:Ljava/lang/String; = "com.samsung.intent.action.EMERGENCY_CHECK_ABNORMAL_STATE"

.field public static final EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED:Ljava/lang/String; = "com.samsung.intent.action.EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED"

.field public static final EMERGENCY_LAUNCHER:Ljava/lang/String; = "com.sec.android.emergencylauncher"

.field public static final EMERGENCY_LAUNCHER_CLASS:Ljava/lang/String; = "com.sec.android.emergencylauncher.LauncherActivity"

.field public static final EMERGENCY_MANAGER_SERVICE:Ljava/lang/String; = "com.sec.android.emergency_manager_service"

.field public static final EMERGENCY_MODE:I = 0x10

.field public static final EMERGENCY_MODE_LAUNCHER:I = 0x0

.field public static final EMERGENCY_SERVICE_PACKAGE:Ljava/lang/String; = "com.sec.android.emergencymode.service"

.field public static final EMERGENCY_SERVICE_STARTER:Ljava/lang/String; = "com.sec.android.emergencymode.service.EmergencyServiceStarter"

.field public static final EMERGENCY_START_EMERGENCY_CHOICE_POPUP:Ljava/lang/String; = "com.samsung.intent.action.EMERGENCY_START_CHOICE_POPUP"

.field public static final EMERGENCY_START_SERVICE_BY_ORDER:Ljava/lang/String; = "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

.field public static final EMERGENCY_START_SERVICE_BY_ORDER_OLD:Ljava/lang/String; = "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

.field public static final EMERGENCY_STATE_CHANGED:Ljava/lang/String; = "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

.field public static final ERROR_USER_CANCELED:I = -0x8

.field public static final ERR_CONFIGURING:I = -0xa

.field public static final ERR_GENERAL_FAILURE:I = -0x1

.field public static final ERR_INVALID_STATE:I = -0x4

.field public static final ERR_INVALID_TYPE:I = -0x3

.field public static final ERR_MODIFYING:I = -0x2

.field public static final ERR_NOT_FOUND_SERVICE:I = -0x5

.field public static final ERR_NULL_CONTEXT:I = -0x7

.field public static final ERR_ON_VTCALL:I = -0xb

.field public static final ERR_PERMISSION_DENIED:I = -0x6

.field public static final ERR_UNKNOWN_FAIL:I = -0x9

.field public static final EXTRA_CLEAR_BOOT_TIME:Ljava/lang/String; = "clearBootTime"

.field public static final EXTRA_EMERGENCY_START_SERVICE_ENABLE:Ljava/lang/String; = "enabled"

.field public static final EXTRA_EMERGENCY_START_SERVICE_FLAG:Ljava/lang/String; = "flag"

.field public static final EXTRA_EMERGENCY_START_SERVICE_SKIPDIALOG:Ljava/lang/String; = "skipdialog"

.field public static final EXTRA_INIT_FOR_EM_STATE:Ljava/lang/String; = "initForEMState"

.field public static final FIND_MY_MOBILE:I = 0x40

.field public static final FIND_MY_MOBILE_ALL:I = 0x440

.field public static final GPS_ACCURACY:Ljava/lang/String; = "GPS_ACCURACY"

.field public static final GPS_LATITUDE:Ljava/lang/String; = "GPS_LATITUDE"

.field public static final GPS_LONGITUDE:Ljava/lang/String; = "GPS_LONGITUDE"

.field public static final HEATSENSING:Ljava/lang/String; = "heatsensing"

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MODE_DISABLED:I = 0x5

.field public static final MODE_DISABLING:I = 0x4

.field public static final MODE_ENABLED:I = 0x3

.field public static final MODE_ENABLING:I = 0x2

.field public static final NORMAL:I = 0x1

.field public static final PKG:Ljava/lang/String; = "pkg"

.field public static final PREF:Ljava/lang/String; = "pref"

.field public static final PROVIDER:Ljava/lang/String; = "com.sec.android.provider.emergencymode"

.field public static final RECOVERY:I = 0xf

.field public static final RGBCMYArray:[I

.field public static final SERVICE_NAME:Ljava/lang/String; = "emergency_service"

.field public static final SUCCESS:I = 0x1

.field public static final SVOICE:I = 0x20

.field public static final TABLE_ALARM:Ljava/lang/String; = "alarm"

.field public static final TABLE_DISABLED_PKG:Ljava/lang/String; = "disabledpkg"

.field public static final TABLE_ECCLIST:Ljava/lang/String; = "ecclist"

.field public static final TABLE_LAUNCHER_ADD:Ljava/lang/String; = "launcheradd"

.field public static final TABLE_LAUNCHER_DEFAULT:Ljava/lang/String; = "launcherdefault"

.field public static final TABLE_PREF_SETTINGS:Ljava/lang/String; = "prefsettings"

.field public static final TABLE_WHITE_LIST:Ljava/lang/String; = "whitelist"

.field public static final ULTRA_POWER_SAVING_MODE:I = 0x200

.field public static final ULTRA_POWER_SAVING_MODE_ALL:I = 0x600

.field public static final ULTRA_POWER_SAVING_MODE_FIND_MY_MOBILE:I = 0x400

.field public static final ULTRA_POWER_SAVING_MODE_LAUNCHER:I = 0x1

.field public static final URI_ALARM:Landroid/net/Uri;

.field public static final URI_DISABLEDPKG:Landroid/net/Uri;

.field public static final URI_ECCLIST:Landroid/net/Uri;

.field public static final URI_LAUNCHER_ADD:Landroid/net/Uri;

.field public static final URI_LAUNCHER_DEFAULT:Landroid/net/Uri;

.field public static final URI_PREFSETTINGS:Landroid/net/Uri;

.field public static final URI_UPDATE_TABLE:Landroid/net/Uri;

.field public static final URI_WHITELIST:Landroid/net/Uri;

.field public static final USER_ALLOW:I = 0x2

.field public static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->RGBCMYArray:[I

    const-string/jumbo v0, "content://com.samsung.android.emergencymode/whitelist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_WHITELIST:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.emergencymode/prefsettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_PREFSETTINGS:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.emergencymode/disabledpkg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_DISABLEDPKG:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.emergencymode/alarm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_ALARM:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.emergencymode/ecclist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_ECCLIST:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.emergencymode/launcherdefault"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_LAUNCHER_DEFAULT:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.emergencymode/launcheradd"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_LAUNCHER_ADD:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.emergencymode/updatetable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_UPDATE_TABLE:Landroid/net/Uri;

    return-void

    :array_0
    .array-data 4
        0x4cb3
        0x4cb3
        0x4cb3
        0x9669
        0x9669
        0x9669
        0x1de2
        0x1de2
        0x1de2
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
