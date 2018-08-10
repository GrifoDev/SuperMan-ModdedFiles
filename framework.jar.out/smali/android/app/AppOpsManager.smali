.class public Landroid/app/AppOpsManager;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$OnOpChangedInternalListener;,
        Landroid/app/AppOpsManager$OnOpChangedListener;,
        Landroid/app/AppOpsManager$OpEntry;,
        Landroid/app/AppOpsManager$PackageOps;
    }
.end annotation


# static fields
.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_IGNORED:I = 0x1

.field public static final OPSTR_ACTIVATE_VPN:Ljava/lang/String; = "android:activate_vpn"

.field public static final OPSTR_ADD_VOICEMAIL:Ljava/lang/String; = "android:add_voicemail"

.field public static final OPSTR_ANSWER_PHONE_CALLS:Ljava/lang/String; = "android:answer_phone_calls"

.field public static final OPSTR_BODY_SENSORS:Ljava/lang/String; = "android:body_sensors"

.field public static final OPSTR_CALL_PHONE:Ljava/lang/String; = "android:call_phone"

.field public static final OPSTR_CAMERA:Ljava/lang/String; = "android:camera"

.field public static final OPSTR_COARSE_LOCATION:Ljava/lang/String; = "android:coarse_location"

.field public static final OPSTR_FINE_LOCATION:Ljava/lang/String; = "android:fine_location"

.field public static final OPSTR_GET_ACCOUNTS:Ljava/lang/String; = "android:get_accounts"

.field public static final OPSTR_GET_USAGE_STATS:Ljava/lang/String; = "android:get_usage_stats"

.field public static final OPSTR_INSTANT_APP_START_FOREGROUND:Ljava/lang/String; = "android:instant_app_start_foreground"

.field public static final OPSTR_MOCK_LOCATION:Ljava/lang/String; = "android:mock_location"

.field public static final OPSTR_MONITOR_HIGH_POWER_LOCATION:Ljava/lang/String; = "android:monitor_location_high_power"

.field public static final OPSTR_MONITOR_LOCATION:Ljava/lang/String; = "android:monitor_location"

.field public static final OPSTR_PICTURE_IN_PICTURE:Ljava/lang/String; = "android:picture_in_picture"

.field public static final OPSTR_PROCESS_OUTGOING_CALLS:Ljava/lang/String; = "android:process_outgoing_calls"

.field public static final OPSTR_READ_CALENDAR:Ljava/lang/String; = "android:read_calendar"

.field public static final OPSTR_READ_CALL_LOG:Ljava/lang/String; = "android:read_call_log"

.field public static final OPSTR_READ_CELL_BROADCASTS:Ljava/lang/String; = "android:read_cell_broadcasts"

.field public static final OPSTR_READ_CONTACTS:Ljava/lang/String; = "android:read_contacts"

.field public static final OPSTR_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "android:read_external_storage"

.field public static final OPSTR_READ_PHONE_NUMBERS:Ljava/lang/String; = "android:read_phone_numbers"

.field public static final OPSTR_READ_PHONE_STATE:Ljava/lang/String; = "android:read_phone_state"

.field public static final OPSTR_READ_SMS:Ljava/lang/String; = "android:read_sms"

.field public static final OPSTR_RECEIVE_MMS:Ljava/lang/String; = "android:receive_mms"

.field public static final OPSTR_RECEIVE_SMS:Ljava/lang/String; = "android:receive_sms"

.field public static final OPSTR_RECEIVE_WAP_PUSH:Ljava/lang/String; = "android:receive_wap_push"

.field public static final OPSTR_RECORD_AUDIO:Ljava/lang/String; = "android:record_audio"

.field public static final OPSTR_SEND_SMS:Ljava/lang/String; = "android:send_sms"

.field public static final OPSTR_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "android:system_alert_window"

.field public static final OPSTR_SYSTEM_INTERNAL_WINDOW:Ljava/lang/String; = "android:system_internal_window"

.field public static final OPSTR_USE_FINGERPRINT:Ljava/lang/String; = "android:use_fingerprint"

.field public static final OPSTR_USE_SIP:Ljava/lang/String; = "android:use_sip"

.field public static final OPSTR_WRITE_CALENDAR:Ljava/lang/String; = "android:write_calendar"

.field public static final OPSTR_WRITE_CALL_LOG:Ljava/lang/String; = "android:write_call_log"

.field public static final OPSTR_WRITE_CONTACTS:Ljava/lang/String; = "android:write_contacts"

.field public static final OPSTR_WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "android:write_external_storage"

.field public static final OPSTR_WRITE_SETTINGS:Ljava/lang/String; = "android:write_settings"

.field public static final OP_ACCESS_NOTIFICATIONS:I = 0x19

.field public static final OP_ACTIVATE_VPN:I = 0x2f

.field public static final OP_ADD_VOICEMAIL:I = 0x34

.field public static final OP_ANSWER_PHONE_CALLS:I = 0x45

.field public static final OP_ASSIST_SCREENSHOT:I = 0x32

.field public static final OP_ASSIST_STRUCTURE:I = 0x31

.field public static final OP_AUDIO_ACCESSIBILITY_VOLUME:I = 0x40

.field public static final OP_AUDIO_ALARM_VOLUME:I = 0x25

.field public static final OP_AUDIO_BLUETOOTH_VOLUME:I = 0x27

.field public static final OP_AUDIO_MASTER_VOLUME:I = 0x21

.field public static final OP_AUDIO_MEDIA_VOLUME:I = 0x24

.field public static final OP_AUDIO_NOTIFICATION_VOLUME:I = 0x26

.field public static final OP_AUDIO_RING_VOLUME:I = 0x23

.field public static final OP_AUDIO_VOICE_VOLUME:I = 0x22

.field public static final OP_BODY_SENSORS:I = 0x38

.field public static final OP_CALL_PHONE:I = 0xd

.field public static final OP_CAMERA:I = 0x1a

.field public static final OP_COARSE_LOCATION:I = 0x0

.field public static final OP_FINE_LOCATION:I = 0x1

.field public static final OP_GET_ACCOUNTS:I = 0x3e

.field public static final OP_GET_USAGE_STATS:I = 0x2b

.field public static final OP_GPS:I = 0x2

.field public static final OP_INSTANT_APP_START_FOREGROUND:I = 0x44

.field public static final OP_MOCK_LOCATION:I = 0x3a

.field public static final OP_MONITOR_HIGH_POWER_LOCATION:I = 0x2a

.field public static final OP_MONITOR_LOCATION:I = 0x29

.field public static final OP_MUTE_MICROPHONE:I = 0x2c

.field public static final OP_NEIGHBORING_CELLS:I = 0xc

.field public static final OP_NONE:I = -0x1

.field public static final OP_PICTURE_IN_PICTURE:I = 0x43

.field public static final OP_PLAY_AUDIO:I = 0x1c

.field public static final OP_POST_NOTIFICATION:I = 0xb

.field public static final OP_PROCESS_OUTGOING_CALLS:I = 0x36

.field public static final OP_PROJECT_MEDIA:I = 0x2e

.field public static final OP_READ_CALENDAR:I = 0x8

.field public static final OP_READ_CALL_LOG:I = 0x6

.field public static final OP_READ_CELL_BROADCASTS:I = 0x39

.field public static final OP_READ_CLIPBOARD:I = 0x1d

.field public static final OP_READ_CONTACTS:I = 0x4

.field public static final OP_READ_EXTERNAL_STORAGE:I = 0x3b

.field public static final OP_READ_ICC_SMS:I = 0x15

.field public static final OP_READ_PHONE_NUMBERS:I = 0x41

.field public static final OP_READ_PHONE_STATE:I = 0x33

.field public static final OP_READ_SMS:I = 0xe

.field public static final OP_RECEIVE_EMERGECY_SMS:I = 0x11

.field public static final OP_RECEIVE_MMS:I = 0x12

.field public static final OP_RECEIVE_SMS:I = 0x10

.field public static final OP_RECEIVE_WAP_PUSH:I = 0x13

.field public static final OP_RECORD_AUDIO:I = 0x1b

.field public static final OP_REQUEST_INSTALL_PACKAGES:I = 0x42

.field public static final OP_RUN_IN_BACKGROUND:I = 0x3f

.field public static final OP_SEND_SMS:I = 0x14

.field public static final OP_SYSTEM_ALERT_WINDOW:I = 0x18

.field public static final OP_SYSTEM_INTERNAL_WINDOW:I = 0x46

.field public static final OP_TAKE_AUDIO_FOCUS:I = 0x20

.field public static final OP_TAKE_MEDIA_BUTTONS:I = 0x1f

.field public static final OP_TOAST_WINDOW:I = 0x2d

.field public static final OP_TURN_SCREEN_ON:I = 0x3d

.field public static final OP_USE_FINGERPRINT:I = 0x37

.field public static final OP_USE_SIP:I = 0x35

.field public static final OP_VIBRATE:I = 0x3

.field public static final OP_WAKE_LOCK:I = 0x28

.field public static final OP_WIFI_SCAN:I = 0xa

.field public static final OP_WRITE_CALENDAR:I = 0x9

.field public static final OP_WRITE_CALL_LOG:I = 0x7

.field public static final OP_WRITE_CLIPBOARD:I = 0x1e

.field public static final OP_WRITE_CONTACTS:I = 0x5

.field public static final OP_WRITE_EXTERNAL_STORAGE:I = 0x3c

.field public static final OP_WRITE_ICC_SMS:I = 0x16

.field public static final OP_WRITE_SETTINGS:I = 0x17

.field public static final OP_WRITE_SMS:I = 0xf

.field public static final OP_WRITE_WALLPAPER:I = 0x30

.field private static final RUNTIME_AND_APPOP_PERMISSIONS_OPS:[I

.field public static final _NUM_OP:I = 0x47

.field private static sOpAllowSystemRestrictionBypass:[Z

.field private static sOpDefaultMode:[I

.field private static sOpDisableReset:[Z

.field private static sOpNames:[Ljava/lang/String;

.field private static sOpPerms:[Ljava/lang/String;

.field private static sOpRestrictions:[Ljava/lang/String;

.field private static sOpStrToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sOpToString:[Ljava/lang/String;

.field private static sOpToSwitch:[I

.field private static sPermToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sToken:Landroid/os/IBinder;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/AppOpsManager$OnOpChangedListener;",
            "Lcom/android/internal/app/IAppOpsCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/internal/app/IAppOpsService;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x1

    const/16 v8, 0x1f

    const/4 v2, 0x0

    const/16 v7, 0x47

    const/4 v6, 0x0

    new-array v3, v8, [I

    fill-array-data v3, :array_0

    sput-object v3, Landroid/app/AppOpsManager;->RUNTIME_AND_APPOP_PERMISSIONS_OPS:[I

    new-array v3, v7, [I

    fill-array-data v3, :array_1

    sput-object v3, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "android:coarse_location"

    aput-object v4, v3, v2

    const-string/jumbo v4, "android:fine_location"

    aput-object v4, v3, v9

    const/4 v4, 0x2

    aput-object v6, v3, v4

    const/4 v4, 0x3

    aput-object v6, v3, v4

    const-string/jumbo v4, "android:read_contacts"

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:write_contacts"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:read_call_log"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:write_call_log"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:read_calendar"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:write_calendar"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const/16 v4, 0xa

    aput-object v6, v3, v4

    const/16 v4, 0xb

    aput-object v6, v3, v4

    const/16 v4, 0xc

    aput-object v6, v3, v4

    const-string/jumbo v4, "android:call_phone"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:read_sms"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const/16 v4, 0xf

    aput-object v6, v3, v4

    const-string/jumbo v4, "android:receive_sms"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const/16 v4, 0x11

    aput-object v6, v3, v4

    const-string/jumbo v4, "android:receive_mms"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:receive_wap_push"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:send_sms"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    const/16 v4, 0x15

    aput-object v6, v3, v4

    const/16 v4, 0x16

    aput-object v6, v3, v4

    const-string/jumbo v4, "android:write_settings"

    const/16 v5, 0x17

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:system_alert_window"

    const/16 v5, 0x18

    aput-object v4, v3, v5

    const/16 v4, 0x19

    aput-object v6, v3, v4

    const-string/jumbo v4, "android:camera"

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:record_audio"

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    const/16 v4, 0x1c

    aput-object v6, v3, v4

    const/16 v4, 0x1d

    aput-object v6, v3, v4

    const/16 v4, 0x1e

    aput-object v6, v3, v4

    aput-object v6, v3, v8

    const/16 v4, 0x20

    aput-object v6, v3, v4

    const/16 v4, 0x21

    aput-object v6, v3, v4

    const/16 v4, 0x22

    aput-object v6, v3, v4

    const/16 v4, 0x23

    aput-object v6, v3, v4

    const/16 v4, 0x24

    aput-object v6, v3, v4

    const/16 v4, 0x25

    aput-object v6, v3, v4

    const/16 v4, 0x26

    aput-object v6, v3, v4

    const/16 v4, 0x27

    aput-object v6, v3, v4

    const/16 v4, 0x28

    aput-object v6, v3, v4

    const-string/jumbo v4, "android:monitor_location"

    const/16 v5, 0x29

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:monitor_location_high_power"

    const/16 v5, 0x2a

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:get_usage_stats"

    const/16 v5, 0x2b

    aput-object v4, v3, v5

    const/16 v4, 0x2c

    aput-object v6, v3, v4

    const/16 v4, 0x2d

    aput-object v6, v3, v4

    const/16 v4, 0x2e

    aput-object v6, v3, v4

    const-string/jumbo v4, "android:activate_vpn"

    const/16 v5, 0x2f

    aput-object v4, v3, v5

    const/16 v4, 0x30

    aput-object v6, v3, v4

    const/16 v4, 0x31

    aput-object v6, v3, v4

    const/16 v4, 0x32

    aput-object v6, v3, v4

    const-string/jumbo v4, "android:read_phone_state"

    const/16 v5, 0x33

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:add_voicemail"

    const/16 v5, 0x34

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:use_sip"

    const/16 v5, 0x35

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:process_outgoing_calls"

    const/16 v5, 0x36

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:use_fingerprint"

    const/16 v5, 0x37

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:body_sensors"

    const/16 v5, 0x38

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:read_cell_broadcasts"

    const/16 v5, 0x39

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:mock_location"

    const/16 v5, 0x3a

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:read_external_storage"

    const/16 v5, 0x3b

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:write_external_storage"

    const/16 v5, 0x3c

    aput-object v4, v3, v5

    const/16 v4, 0x3d

    aput-object v6, v3, v4

    const-string/jumbo v4, "android:get_accounts"

    const/16 v5, 0x3e

    aput-object v4, v3, v5

    const/16 v4, 0x3f

    aput-object v6, v3, v4

    const/16 v4, 0x40

    aput-object v6, v3, v4

    const-string/jumbo v4, "android:read_phone_numbers"

    const/16 v5, 0x41

    aput-object v4, v3, v5

    const/16 v4, 0x42

    aput-object v6, v3, v4

    const-string/jumbo v4, "android:picture_in_picture"

    const/16 v5, 0x43

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:instant_app_start_foreground"

    const/16 v5, 0x44

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:answer_phone_calls"

    const/16 v5, 0x45

    aput-object v4, v3, v5

    const-string/jumbo v4, "android:system_internal_window"

    const/16 v5, 0x46

    aput-object v4, v3, v5

    sput-object v3, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "COARSE_LOCATION"

    aput-object v4, v3, v2

    const-string/jumbo v4, "FINE_LOCATION"

    aput-object v4, v3, v9

    const-string/jumbo v4, "GPS"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string/jumbo v4, "VIBRATE"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string/jumbo v4, "READ_CONTACTS"

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const-string/jumbo v4, "WRITE_CONTACTS"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "READ_CALL_LOG"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "WRITE_CALL_LOG"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "READ_CALENDAR"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "WRITE_CALENDAR"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "WIFI_SCAN"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "POST_NOTIFICATION"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "NEIGHBORING_CELLS"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "CALL_PHONE"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "READ_SMS"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "WRITE_SMS"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "RECEIVE_SMS"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const-string/jumbo v4, "RECEIVE_EMERGECY_SMS"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    const-string/jumbo v4, "RECEIVE_MMS"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const-string/jumbo v4, "RECEIVE_WAP_PUSH"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    const-string/jumbo v4, "SEND_SMS"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    const-string/jumbo v4, "READ_ICC_SMS"

    const/16 v5, 0x15

    aput-object v4, v3, v5

    const-string/jumbo v4, "WRITE_ICC_SMS"

    const/16 v5, 0x16

    aput-object v4, v3, v5

    const-string/jumbo v4, "WRITE_SETTINGS"

    const/16 v5, 0x17

    aput-object v4, v3, v5

    const-string/jumbo v4, "SYSTEM_ALERT_WINDOW"

    const/16 v5, 0x18

    aput-object v4, v3, v5

    const-string/jumbo v4, "ACCESS_NOTIFICATIONS"

    const/16 v5, 0x19

    aput-object v4, v3, v5

    const-string/jumbo v4, "CAMERA"

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    const-string/jumbo v4, "RECORD_AUDIO"

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    const-string/jumbo v4, "PLAY_AUDIO"

    const/16 v5, 0x1c

    aput-object v4, v3, v5

    const-string/jumbo v4, "READ_CLIPBOARD"

    const/16 v5, 0x1d

    aput-object v4, v3, v5

    const-string/jumbo v4, "WRITE_CLIPBOARD"

    const/16 v5, 0x1e

    aput-object v4, v3, v5

    const-string/jumbo v4, "TAKE_MEDIA_BUTTONS"

    aput-object v4, v3, v8

    const-string/jumbo v4, "TAKE_AUDIO_FOCUS"

    const/16 v5, 0x20

    aput-object v4, v3, v5

    const-string/jumbo v4, "AUDIO_MASTER_VOLUME"

    const/16 v5, 0x21

    aput-object v4, v3, v5

    const-string/jumbo v4, "AUDIO_VOICE_VOLUME"

    const/16 v5, 0x22

    aput-object v4, v3, v5

    const-string/jumbo v4, "AUDIO_RING_VOLUME"

    const/16 v5, 0x23

    aput-object v4, v3, v5

    const-string/jumbo v4, "AUDIO_MEDIA_VOLUME"

    const/16 v5, 0x24

    aput-object v4, v3, v5

    const-string/jumbo v4, "AUDIO_ALARM_VOLUME"

    const/16 v5, 0x25

    aput-object v4, v3, v5

    const-string/jumbo v4, "AUDIO_NOTIFICATION_VOLUME"

    const/16 v5, 0x26

    aput-object v4, v3, v5

    const-string/jumbo v4, "AUDIO_BLUETOOTH_VOLUME"

    const/16 v5, 0x27

    aput-object v4, v3, v5

    const-string/jumbo v4, "WAKE_LOCK"

    const/16 v5, 0x28

    aput-object v4, v3, v5

    const-string/jumbo v4, "MONITOR_LOCATION"

    const/16 v5, 0x29

    aput-object v4, v3, v5

    const-string/jumbo v4, "MONITOR_HIGH_POWER_LOCATION"

    const/16 v5, 0x2a

    aput-object v4, v3, v5

    const-string/jumbo v4, "GET_USAGE_STATS"

    const/16 v5, 0x2b

    aput-object v4, v3, v5

    const-string/jumbo v4, "MUTE_MICROPHONE"

    const/16 v5, 0x2c

    aput-object v4, v3, v5

    const-string/jumbo v4, "TOAST_WINDOW"

    const/16 v5, 0x2d

    aput-object v4, v3, v5

    const-string/jumbo v4, "PROJECT_MEDIA"

    const/16 v5, 0x2e

    aput-object v4, v3, v5

    const-string/jumbo v4, "ACTIVATE_VPN"

    const/16 v5, 0x2f

    aput-object v4, v3, v5

    const-string/jumbo v4, "WRITE_WALLPAPER"

    const/16 v5, 0x30

    aput-object v4, v3, v5

    const-string/jumbo v4, "ASSIST_STRUCTURE"

    const/16 v5, 0x31

    aput-object v4, v3, v5

    const-string/jumbo v4, "ASSIST_SCREENSHOT"

    const/16 v5, 0x32

    aput-object v4, v3, v5

    const-string/jumbo v4, "OP_READ_PHONE_STATE"

    const/16 v5, 0x33

    aput-object v4, v3, v5

    const-string/jumbo v4, "ADD_VOICEMAIL"

    const/16 v5, 0x34

    aput-object v4, v3, v5

    const-string/jumbo v4, "USE_SIP"

    const/16 v5, 0x35

    aput-object v4, v3, v5

    const-string/jumbo v4, "PROCESS_OUTGOING_CALLS"

    const/16 v5, 0x36

    aput-object v4, v3, v5

    const-string/jumbo v4, "USE_FINGERPRINT"

    const/16 v5, 0x37

    aput-object v4, v3, v5

    const-string/jumbo v4, "BODY_SENSORS"

    const/16 v5, 0x38

    aput-object v4, v3, v5

    const-string/jumbo v4, "READ_CELL_BROADCASTS"

    const/16 v5, 0x39

    aput-object v4, v3, v5

    const-string/jumbo v4, "MOCK_LOCATION"

    const/16 v5, 0x3a

    aput-object v4, v3, v5

    const-string/jumbo v4, "READ_EXTERNAL_STORAGE"

    const/16 v5, 0x3b

    aput-object v4, v3, v5

    const-string/jumbo v4, "WRITE_EXTERNAL_STORAGE"

    const/16 v5, 0x3c

    aput-object v4, v3, v5

    const-string/jumbo v4, "TURN_ON_SCREEN"

    const/16 v5, 0x3d

    aput-object v4, v3, v5

    const-string/jumbo v4, "GET_ACCOUNTS"

    const/16 v5, 0x3e

    aput-object v4, v3, v5

    const-string/jumbo v4, "RUN_IN_BACKGROUND"

    const/16 v5, 0x3f

    aput-object v4, v3, v5

    const-string/jumbo v4, "AUDIO_ACCESSIBILITY_VOLUME"

    const/16 v5, 0x40

    aput-object v4, v3, v5

    const-string/jumbo v4, "READ_PHONE_NUMBERS"

    const/16 v5, 0x41

    aput-object v4, v3, v5

    const-string/jumbo v4, "REQUEST_INSTALL_PACKAGES"

    const/16 v5, 0x42

    aput-object v4, v3, v5

    const-string/jumbo v4, "PICTURE_IN_PICTURE"

    const/16 v5, 0x43

    aput-object v4, v3, v5

    const-string/jumbo v4, "INSTANT_APP_START_FOREGROUND"

    const/16 v5, 0x44

    aput-object v4, v3, v5

    const-string/jumbo v4, "ANSWER_PHONE_CALLS"

    const/16 v5, 0x45

    aput-object v4, v3, v5

    const-string/jumbo v4, "SYSTEM_INTERNAL_WINDOW"

    const/16 v5, 0x46

    aput-object v4, v3, v5

    sput-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v4, v3, v2

    const-string/jumbo v4, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v4, v3, v9

    const/4 v4, 0x2

    aput-object v6, v3, v4

    const-string/jumbo v4, "android.permission.VIBRATE"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.READ_CONTACTS"

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.WRITE_CONTACTS"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.READ_CALL_LOG"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.WRITE_CALL_LOG"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.READ_CALENDAR"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.WRITE_CALENDAR"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.ACCESS_WIFI_STATE"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const/16 v4, 0xb

    aput-object v6, v3, v4

    const/16 v4, 0xc

    aput-object v6, v3, v4

    const-string/jumbo v4, "android.permission.CALL_PHONE"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.READ_SMS"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const/16 v4, 0xf

    aput-object v6, v3, v4

    const-string/jumbo v4, "android.permission.RECEIVE_SMS"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.RECEIVE_MMS"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.RECEIVE_WAP_PUSH"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.SEND_SMS"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.READ_SMS"

    const/16 v5, 0x15

    aput-object v4, v3, v5

    const/16 v4, 0x16

    aput-object v6, v3, v4

    const-string/jumbo v4, "android.permission.WRITE_SETTINGS"

    const/16 v5, 0x17

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.SYSTEM_ALERT_WINDOW"

    const/16 v5, 0x18

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.ACCESS_NOTIFICATIONS"

    const/16 v5, 0x19

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.CAMERA"

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.RECORD_AUDIO"

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    const/16 v4, 0x1c

    aput-object v6, v3, v4

    const/16 v4, 0x1d

    aput-object v6, v3, v4

    const/16 v4, 0x1e

    aput-object v6, v3, v4

    aput-object v6, v3, v8

    const/16 v4, 0x20

    aput-object v6, v3, v4

    const/16 v4, 0x21

    aput-object v6, v3, v4

    const/16 v4, 0x22

    aput-object v6, v3, v4

    const/16 v4, 0x23

    aput-object v6, v3, v4

    const/16 v4, 0x24

    aput-object v6, v3, v4

    const/16 v4, 0x25

    aput-object v6, v3, v4

    const/16 v4, 0x26

    aput-object v6, v3, v4

    const/16 v4, 0x27

    aput-object v6, v3, v4

    const-string/jumbo v4, "android.permission.WAKE_LOCK"

    const/16 v5, 0x28

    aput-object v4, v3, v5

    const/16 v4, 0x29

    aput-object v6, v3, v4

    const/16 v4, 0x2a

    aput-object v6, v3, v4

    const-string/jumbo v4, "android.permission.PACKAGE_USAGE_STATS"

    const/16 v5, 0x2b

    aput-object v4, v3, v5

    const/16 v4, 0x2c

    aput-object v6, v3, v4

    const/16 v4, 0x2d

    aput-object v6, v3, v4

    const/16 v4, 0x2e

    aput-object v6, v3, v4

    const/16 v4, 0x2f

    aput-object v6, v3, v4

    const/16 v4, 0x30

    aput-object v6, v3, v4

    const/16 v4, 0x31

    aput-object v6, v3, v4

    const/16 v4, 0x32

    aput-object v6, v3, v4

    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    const/16 v5, 0x33

    aput-object v4, v3, v5

    const-string/jumbo v4, "com.android.voicemail.permission.ADD_VOICEMAIL"

    const/16 v5, 0x34

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.USE_SIP"

    const/16 v5, 0x35

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.PROCESS_OUTGOING_CALLS"

    const/16 v5, 0x36

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.USE_FINGERPRINT"

    const/16 v5, 0x37

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.BODY_SENSORS"

    const/16 v5, 0x38

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.READ_CELL_BROADCASTS"

    const/16 v5, 0x39

    aput-object v4, v3, v5

    const/16 v4, 0x3a

    aput-object v6, v3, v4

    const-string/jumbo v4, "android.permission.READ_EXTERNAL_STORAGE"

    const/16 v5, 0x3b

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/16 v5, 0x3c

    aput-object v4, v3, v5

    const/16 v4, 0x3d

    aput-object v6, v3, v4

    const-string/jumbo v4, "android.permission.GET_ACCOUNTS"

    const/16 v5, 0x3e

    aput-object v4, v3, v5

    const/16 v4, 0x3f

    aput-object v6, v3, v4

    const/16 v4, 0x40

    aput-object v6, v3, v4

    const-string/jumbo v4, "android.permission.READ_PHONE_NUMBERS"

    const/16 v5, 0x41

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.REQUEST_INSTALL_PACKAGES"

    const/16 v5, 0x42

    aput-object v4, v3, v5

    const/16 v4, 0x43

    aput-object v6, v3, v4

    const-string/jumbo v4, "android.permission.INSTANT_APP_FOREGROUND_SERVICE"

    const/16 v5, 0x44

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.ANSWER_PHONE_CALLS"

    const/16 v5, 0x45

    aput-object v4, v3, v5

    const/16 v4, 0x46

    aput-object v6, v3, v4

    sput-object v3, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "no_share_location"

    aput-object v4, v3, v2

    const-string/jumbo v4, "no_share_location"

    aput-object v4, v3, v9

    const-string/jumbo v4, "no_share_location"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v4, 0x3

    aput-object v6, v3, v4

    const/4 v4, 0x4

    aput-object v6, v3, v4

    const/4 v4, 0x5

    aput-object v6, v3, v4

    const-string/jumbo v4, "no_outgoing_calls"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "no_outgoing_calls"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const/16 v4, 0x8

    aput-object v6, v3, v4

    const/16 v4, 0x9

    aput-object v6, v3, v4

    const-string/jumbo v4, "no_share_location"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const/16 v4, 0xb

    aput-object v6, v3, v4

    const/16 v4, 0xc

    aput-object v6, v3, v4

    const/16 v4, 0xd

    aput-object v6, v3, v4

    const-string/jumbo v4, "no_sms"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "no_sms"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "no_sms"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const/16 v4, 0x11

    aput-object v6, v3, v4

    const-string/jumbo v4, "no_sms"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const/16 v4, 0x13

    aput-object v6, v3, v4

    const-string/jumbo v4, "no_sms"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    const-string/jumbo v4, "no_sms"

    const/16 v5, 0x15

    aput-object v4, v3, v5

    const-string/jumbo v4, "no_sms"

    const/16 v5, 0x16

    aput-object v4, v3, v5

    const/16 v4, 0x17

    aput-object v6, v3, v4

    const-string/jumbo v4, "no_create_windows"

    const/16 v5, 0x18

    aput-object v4, v3, v5

    const/16 v4, 0x19

    aput-object v6, v3, v4

    const-string/jumbo v4, "no_camera"

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    const-string/jumbo v4, "no_record_audio"

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    const/16 v4, 0x1c

    aput-object v6, v3, v4

    const/16 v4, 0x1d

    aput-object v6, v3, v4

    const/16 v4, 0x1e

    aput-object v6, v3, v4

    aput-object v6, v3, v8

    const/16 v4, 0x20

    aput-object v6, v3, v4

    const-string/jumbo v4, "no_adjust_volume"

    const/16 v5, 0x21

    aput-object v4, v3, v5

    const-string/jumbo v4, "no_adjust_volume"

    const/16 v5, 0x22

    aput-object v4, v3, v5

    const-string/jumbo v4, "no_adjust_volume"

    const/16 v5, 0x23

    aput-object v4, v3, v5

    const-string/jumbo v4, "no_adjust_volume"

    const/16 v5, 0x24

    aput-object v4, v3, v5

    const-string/jumbo v4, "no_adjust_volume"

    const/16 v5, 0x25

    aput-object v4, v3, v5

    const-string/jumbo v4, "no_adjust_volume"

    const/16 v5, 0x26

    aput-object v4, v3, v5

    const-string/jumbo v4, "no_adjust_volume"

    const/16 v5, 0x27

    aput-object v4, v3, v5

    const/16 v4, 0x28

    aput-object v6, v3, v4

    const-string/jumbo v4, "no_share_location"

    const/16 v5, 0x29

    aput-object v4, v3, v5

    const-string/jumbo v4, "no_share_location"

    const/16 v5, 0x2a

    aput-object v4, v3, v5

    const/16 v4, 0x2b

    aput-object v6, v3, v4

    const-string/jumbo v4, "no_unmute_microphone"

    const/16 v5, 0x2c

    aput-object v4, v3, v5

    const-string/jumbo v4, "no_create_windows"

    const/16 v5, 0x2d

    aput-object v4, v3, v5

    const/16 v4, 0x2e

    aput-object v6, v3, v4

    const/16 v4, 0x2f

    aput-object v6, v3, v4

    const-string/jumbo v4, "no_wallpaper"

    const/16 v5, 0x30

    aput-object v4, v3, v5

    const/16 v4, 0x31

    aput-object v6, v3, v4

    const/16 v4, 0x32

    aput-object v6, v3, v4

    const/16 v4, 0x33

    aput-object v6, v3, v4

    const/16 v4, 0x34

    aput-object v6, v3, v4

    const/16 v4, 0x35

    aput-object v6, v3, v4

    const/16 v4, 0x36

    aput-object v6, v3, v4

    const/16 v4, 0x37

    aput-object v6, v3, v4

    const/16 v4, 0x38

    aput-object v6, v3, v4

    const/16 v4, 0x39

    aput-object v6, v3, v4

    const/16 v4, 0x3a

    aput-object v6, v3, v4

    const/16 v4, 0x3b

    aput-object v6, v3, v4

    const/16 v4, 0x3c

    aput-object v6, v3, v4

    const/16 v4, 0x3d

    aput-object v6, v3, v4

    const/16 v4, 0x3e

    aput-object v6, v3, v4

    const/16 v4, 0x3f

    aput-object v6, v3, v4

    const-string/jumbo v4, "no_adjust_volume"

    const/16 v5, 0x40

    aput-object v4, v3, v5

    const/16 v4, 0x41

    aput-object v6, v3, v4

    const/16 v4, 0x42

    aput-object v6, v3, v4

    const/16 v4, 0x43

    aput-object v6, v3, v4

    const/16 v4, 0x44

    aput-object v6, v3, v4

    const/16 v4, 0x45

    aput-object v6, v3, v4

    const/16 v4, 0x46

    aput-object v6, v3, v4

    sput-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    new-array v3, v7, [Z

    fill-array-data v3, :array_2

    sput-object v3, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    new-array v3, v7, [I

    fill-array-data v3, :array_3

    sput-object v3, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    new-array v3, v7, [Z

    fill-array-data v3, :array_4

    sput-object v3, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    sget-object v3, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v3, v3

    if-eq v3, v7, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpToSwitch length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " should be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    sget-object v3, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v3, v3

    if-eq v3, v7, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpToString length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " should be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v3, v3

    if-eq v3, v7, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpNames length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " should be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    sget-object v3, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v3, v3

    if-eq v3, v7, :cond_3

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpPerms length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " should be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    sget-object v3, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v3, v3

    if-eq v3, v7, :cond_4

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpDefaultMode length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " should be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    sget-object v3, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v3, v3

    if-eq v3, v7, :cond_5

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpDisableReset length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " should be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    sget-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v3, v3

    if-eq v3, v7, :cond_6

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpRestrictions length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " should be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    sget-object v3, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    array-length v3, v3

    if-eq v3, v7, :cond_7

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpAllowSYstemRestrictionsBypass length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " should be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v7, :cond_9

    sget-object v3, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_8

    sget-object v3, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    sget-object v4, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    sget-object v3, Landroid/app/AppOpsManager;->RUNTIME_AND_APPOP_PERMISSIONS_OPS:[I

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_b

    aget v1, v3, v2

    sget-object v5, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-eqz v5, :cond_a

    sget-object v5, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    sget-object v6, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_b
    return-void

    :array_0
    .array-data 4
        0x4
        0x5
        0x3e
        0x8
        0x9
        0x14
        0x10
        0xe
        0x13
        0x12
        0x39
        0x3b
        0x3c
        0x0
        0x1
        0x33
        0x41
        0xd
        0x6
        0x7
        0x34
        0x35
        0x36
        0x45
        0x1b
        0x1a
        0x38
        0x19
        0x18
        0x17
        0x42
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x0
        0xb
        0x0
        0xd
        0xe
        0xf
        0x10
        0x10
        0x12
        0x13
        0x14
        0xe
        0xf
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x0
        0x0
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
    .end array-data

    :array_2
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x0
        0x3
        0x0
        0x3
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IAppOpsService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    iput-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    return-void
.end method

.method private buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " not allowed to perform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;
    .locals 3

    const-class v2, Landroid/app/AppOpsManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-interface {p0, v1}, Lcom/android/internal/app/IAppOpsService;->getToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    sput-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static opAllowSystemBypassRestriction(I)Z
    .locals 1

    sget-object v0, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static opAllowsReset(I)Z
    .locals 1

    sget-object v0, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    aget-boolean v0, v0, p0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static opToDefaultMode(I)I
    .locals 1

    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    aget v0, v0, p0

    return v0
.end method

.method public static opToName(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "NONE"

    return-object v0

    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_1

    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static opToPermission(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToRestriction(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToSwitch(I)I
    .locals 1

    sget-object v0, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    aget v0, v0, p0

    return v0
.end method

.method public static permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    return-object v1
.end method

.method public static permissionToOpCode(Ljava/lang/String;)I
    .locals 2

    sget-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static strDebugOpToOp(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown operation string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static strOpToOp(Ljava/lang/String;)I
    .locals 4

    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown operation string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method


# virtual methods
.method public checkAudioOp(IIILjava/lang/String;)I
    .locals 4

    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p3, p4}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    return v1
.end method

.method public checkAudioOpNoThrow(IIILjava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkOp(IILjava/lang/String;)I
    .locals 4

    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    return v1
.end method

.method public checkOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkOpNoThrow(IILjava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkPackage(ILjava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not belong to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    return-void
.end method

.method public finishOp(I)V
    .locals 2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    return-void
.end method

.method public finishOp(IILjava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public finishOp(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    return-void
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public noteOp(I)I
    .locals 2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOp(IILjava/lang/String;)I
    .locals 4

    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    return v1
.end method

.method public noteOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOpNoThrow(IILjava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOp(ILjava/lang/String;)I
    .locals 4

    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Proxy package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " or calling package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not allowed to perform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method public noteProxyOp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOpNoThrow(ILjava/lang/String;)I
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-interface {v1, p1, v2, v3, p2}, Lcom/android/internal/app/IAppOpsService;->noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public resetAllModes()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public semCheckOpSystemAlertWindow(ILjava/lang/String;)I
    .locals 1

    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public semCheckOpWriteSms(ILjava/lang/String;)I
    .locals 1

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public semSetMode(IILjava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    return-void
.end method

.method public semSetModeSystemAlertWindow(ILjava/lang/String;I)V
    .locals 1

    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    return-void
.end method

.method public semSetModeWriteSms(ILjava/lang/String;I)V
    .locals 1

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    return-void
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setRestriction(III[Ljava/lang/String;)V
    .locals 7

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->setAudioRestriction(IIII[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setUidMode(III)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUidMode(Ljava/lang/String;II)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;[Ljava/lang/String;)V

    return-void
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;[Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    return-void
.end method

.method public setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->setUserRestriction(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public startOp(I)I
    .locals 2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOp(IILjava/lang/String;)I
    .locals 4

    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v3}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    return v1
.end method

.method public startOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOpNoThrow(IILjava/lang/String;)I
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 4

    iget-object v3, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AppOpsManager$1;

    invoke-direct {v0, p0, p3}, Landroid/app/AppOpsManager$1;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public startWatchingMode(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 1

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    return-void
.end method

.method public stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 4

    iget-object v3, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v0}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit v3

    return-void

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
