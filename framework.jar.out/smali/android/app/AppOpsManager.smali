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

.field public static final OPSTR_BODY_SENSORS:Ljava/lang/String; = "android:body_sensors"

.field public static final OPSTR_CALL_PHONE:Ljava/lang/String; = "android:call_phone"

.field public static final OPSTR_CAMERA:Ljava/lang/String; = "android:camera"

.field public static final OPSTR_COARSE_LOCATION:Ljava/lang/String; = "android:coarse_location"

.field public static final OPSTR_FINE_LOCATION:Ljava/lang/String; = "android:fine_location"

.field public static final OPSTR_GET_ACCOUNTS:Ljava/lang/String; = "android:get_accounts"

.field public static final OPSTR_GET_USAGE_STATS:Ljava/lang/String; = "android:get_usage_stats"

.field public static final OPSTR_MOCK_LOCATION:Ljava/lang/String; = "android:mock_location"

.field public static final OPSTR_MONITOR_HIGH_POWER_LOCATION:Ljava/lang/String; = "android:monitor_location_high_power"

.field public static final OPSTR_MONITOR_LOCATION:Ljava/lang/String; = "android:monitor_location"

.field public static final OPSTR_READ_CALENDAR:Ljava/lang/String; = "android:read_calendar"

.field public static final OPSTR_READ_CALL_LOG:Ljava/lang/String; = "android:read_call_log"

.field public static final OPSTR_READ_CELL_BROADCASTS:Ljava/lang/String; = "android:read_cell_broadcasts"

.field public static final OPSTR_READ_CONTACTS:Ljava/lang/String; = "android:read_contacts"

.field public static final OPSTR_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "android:read_external_storage"

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

.field public static final OP_ASSIST_SCREENSHOT:I = 0x32

.field public static final OP_ASSIST_STRUCTURE:I = 0x31

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

.field public static final OP_MOCK_LOCATION:I = 0x3a

.field public static final OP_MONITOR_HIGH_POWER_LOCATION:I = 0x2a

.field public static final OP_MONITOR_LOCATION:I = 0x29

.field public static final OP_MUTE_MICROPHONE:I = 0x2c

.field public static final OP_NEIGHBORING_CELLS:I = 0xc

.field public static final OP_NONE:I = -0x1

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

.field public static final OP_READ_PHONE_STATE:I = 0x33

.field public static final OP_READ_SMS:I = 0xe

.field public static final OP_RECEIVE_EMERGECY_SMS:I = 0x11

.field public static final OP_RECEIVE_MMS:I = 0x12

.field public static final OP_RECEIVE_SMS:I = 0x10

.field public static final OP_RECEIVE_WAP_PUSH:I = 0x13

.field public static final OP_RECORD_AUDIO:I = 0x1b

.field public static final OP_RUN_IN_BACKGROUND:I = 0x3f

.field public static final OP_SEND_SMS:I = 0x14

.field public static final OP_SYSTEM_ALERT_WINDOW:I = 0x18

.field public static final OP_SYSTEM_INTERNAL_WINDOW:I = 0x40

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

.field private static final RUNTIME_PERMISSIONS_OPS:[I

.field public static final _NUM_OP:I = 0x41

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

.field private static sRuntimePermToOp:Ljava/util/HashMap;
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

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x19

    const/4 v2, 0x0

    const/16 v7, 0x41

    const/4 v6, 0x0

    .line 351
    new-array v3, v8, [I

    fill-array-data v3, :array_0

    sput-object v3, Landroid/app/AppOpsManager;->RUNTIME_PERMISSIONS_OPS:[I

    .line 396
    new-array v3, v7, [I

    fill-array-data v3, :array_1

    sput-object v3, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    .line 470
    new-array v3, v7, [Ljava/lang/String;

    .line 471
    const-string/jumbo v4, "android:coarse_location"

    aput-object v4, v3, v2

    .line 472
    const-string/jumbo v4, "android:fine_location"

    aput-object v4, v3, v9

    .line 473
    const/4 v4, 0x2

    aput-object v6, v3, v4

    .line 474
    const/4 v4, 0x3

    aput-object v6, v3, v4

    .line 475
    const-string/jumbo v4, "android:read_contacts"

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 476
    const-string/jumbo v4, "android:write_contacts"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 477
    const-string/jumbo v4, "android:read_call_log"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 478
    const-string/jumbo v4, "android:write_call_log"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    .line 479
    const-string/jumbo v4, "android:read_calendar"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    .line 480
    const-string/jumbo v4, "android:write_calendar"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    .line 481
    const/16 v4, 0xa

    aput-object v6, v3, v4

    .line 482
    const/16 v4, 0xb

    aput-object v6, v3, v4

    .line 483
    const/16 v4, 0xc

    aput-object v6, v3, v4

    .line 484
    const-string/jumbo v4, "android:call_phone"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    .line 485
    const-string/jumbo v4, "android:read_sms"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    .line 486
    const/16 v4, 0xf

    aput-object v6, v3, v4

    .line 487
    const-string/jumbo v4, "android:receive_sms"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    .line 488
    const/16 v4, 0x11

    aput-object v6, v3, v4

    .line 489
    const-string/jumbo v4, "android:receive_mms"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    .line 490
    const-string/jumbo v4, "android:receive_wap_push"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    .line 491
    const-string/jumbo v4, "android:send_sms"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    .line 492
    const/16 v4, 0x15

    aput-object v6, v3, v4

    .line 493
    const/16 v4, 0x16

    aput-object v6, v3, v4

    .line 494
    const-string/jumbo v4, "android:write_settings"

    const/16 v5, 0x17

    aput-object v4, v3, v5

    .line 495
    const-string/jumbo v4, "android:system_alert_window"

    const/16 v5, 0x18

    aput-object v4, v3, v5

    .line 496
    aput-object v6, v3, v8

    .line 497
    const-string/jumbo v4, "android:camera"

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    .line 498
    const-string/jumbo v4, "android:record_audio"

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    .line 499
    const/16 v4, 0x1c

    aput-object v6, v3, v4

    .line 500
    const/16 v4, 0x1d

    aput-object v6, v3, v4

    .line 501
    const/16 v4, 0x1e

    aput-object v6, v3, v4

    .line 502
    const/16 v4, 0x1f

    aput-object v6, v3, v4

    .line 503
    const/16 v4, 0x20

    aput-object v6, v3, v4

    .line 504
    const/16 v4, 0x21

    aput-object v6, v3, v4

    .line 505
    const/16 v4, 0x22

    aput-object v6, v3, v4

    .line 506
    const/16 v4, 0x23

    aput-object v6, v3, v4

    .line 507
    const/16 v4, 0x24

    aput-object v6, v3, v4

    .line 508
    const/16 v4, 0x25

    aput-object v6, v3, v4

    .line 509
    const/16 v4, 0x26

    aput-object v6, v3, v4

    .line 510
    const/16 v4, 0x27

    aput-object v6, v3, v4

    .line 511
    const/16 v4, 0x28

    aput-object v6, v3, v4

    .line 512
    const-string/jumbo v4, "android:monitor_location"

    const/16 v5, 0x29

    aput-object v4, v3, v5

    .line 513
    const-string/jumbo v4, "android:monitor_location_high_power"

    const/16 v5, 0x2a

    aput-object v4, v3, v5

    .line 514
    const-string/jumbo v4, "android:get_usage_stats"

    const/16 v5, 0x2b

    aput-object v4, v3, v5

    .line 515
    const/16 v4, 0x2c

    aput-object v6, v3, v4

    .line 516
    const/16 v4, 0x2d

    aput-object v6, v3, v4

    .line 517
    const/16 v4, 0x2e

    aput-object v6, v3, v4

    .line 518
    const-string/jumbo v4, "android:activate_vpn"

    const/16 v5, 0x2f

    aput-object v4, v3, v5

    .line 519
    const/16 v4, 0x30

    aput-object v6, v3, v4

    .line 520
    const/16 v4, 0x31

    aput-object v6, v3, v4

    .line 521
    const/16 v4, 0x32

    aput-object v6, v3, v4

    .line 522
    const-string/jumbo v4, "android:read_phone_state"

    const/16 v5, 0x33

    aput-object v4, v3, v5

    .line 523
    const-string/jumbo v4, "android:add_voicemail"

    const/16 v5, 0x34

    aput-object v4, v3, v5

    .line 524
    const-string/jumbo v4, "android:use_sip"

    const/16 v5, 0x35

    aput-object v4, v3, v5

    .line 525
    const/16 v4, 0x36

    aput-object v6, v3, v4

    .line 526
    const-string/jumbo v4, "android:use_fingerprint"

    const/16 v5, 0x37

    aput-object v4, v3, v5

    .line 527
    const-string/jumbo v4, "android:body_sensors"

    const/16 v5, 0x38

    aput-object v4, v3, v5

    .line 528
    const-string/jumbo v4, "android:read_cell_broadcasts"

    const/16 v5, 0x39

    aput-object v4, v3, v5

    .line 529
    const-string/jumbo v4, "android:mock_location"

    const/16 v5, 0x3a

    aput-object v4, v3, v5

    .line 530
    const-string/jumbo v4, "android:read_external_storage"

    const/16 v5, 0x3b

    aput-object v4, v3, v5

    .line 531
    const-string/jumbo v4, "android:write_external_storage"

    const/16 v5, 0x3c

    aput-object v4, v3, v5

    .line 532
    const/16 v4, 0x3d

    aput-object v6, v3, v4

    .line 533
    const-string/jumbo v4, "android:get_accounts"

    const/16 v5, 0x3e

    aput-object v4, v3, v5

    .line 534
    const/16 v4, 0x3f

    aput-object v6, v3, v4

    .line 536
    const-string/jumbo v4, "android:system_internal_window"

    const/16 v5, 0x40

    aput-object v4, v3, v5

    .line 470
    sput-object v3, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    .line 544
    new-array v3, v7, [Ljava/lang/String;

    .line 545
    const-string/jumbo v4, "COARSE_LOCATION"

    aput-object v4, v3, v2

    .line 546
    const-string/jumbo v4, "FINE_LOCATION"

    aput-object v4, v3, v9

    .line 547
    const-string/jumbo v4, "GPS"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 548
    const-string/jumbo v4, "VIBRATE"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 549
    const-string/jumbo v4, "READ_CONTACTS"

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 550
    const-string/jumbo v4, "WRITE_CONTACTS"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 551
    const-string/jumbo v4, "READ_CALL_LOG"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 552
    const-string/jumbo v4, "WRITE_CALL_LOG"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    .line 553
    const-string/jumbo v4, "READ_CALENDAR"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    .line 554
    const-string/jumbo v4, "WRITE_CALENDAR"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    .line 555
    const-string/jumbo v4, "WIFI_SCAN"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    .line 556
    const-string/jumbo v4, "POST_NOTIFICATION"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    .line 557
    const-string/jumbo v4, "NEIGHBORING_CELLS"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    .line 558
    const-string/jumbo v4, "CALL_PHONE"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    .line 559
    const-string/jumbo v4, "READ_SMS"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    .line 560
    const-string/jumbo v4, "WRITE_SMS"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    .line 561
    const-string/jumbo v4, "RECEIVE_SMS"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    .line 562
    const-string/jumbo v4, "RECEIVE_EMERGECY_SMS"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    .line 563
    const-string/jumbo v4, "RECEIVE_MMS"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    .line 564
    const-string/jumbo v4, "RECEIVE_WAP_PUSH"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    .line 565
    const-string/jumbo v4, "SEND_SMS"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    .line 566
    const-string/jumbo v4, "READ_ICC_SMS"

    const/16 v5, 0x15

    aput-object v4, v3, v5

    .line 567
    const-string/jumbo v4, "WRITE_ICC_SMS"

    const/16 v5, 0x16

    aput-object v4, v3, v5

    .line 568
    const-string/jumbo v4, "WRITE_SETTINGS"

    const/16 v5, 0x17

    aput-object v4, v3, v5

    .line 569
    const-string/jumbo v4, "SYSTEM_ALERT_WINDOW"

    const/16 v5, 0x18

    aput-object v4, v3, v5

    .line 570
    const-string/jumbo v4, "ACCESS_NOTIFICATIONS"

    aput-object v4, v3, v8

    .line 571
    const-string/jumbo v4, "CAMERA"

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    .line 572
    const-string/jumbo v4, "RECORD_AUDIO"

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    .line 573
    const-string/jumbo v4, "PLAY_AUDIO"

    const/16 v5, 0x1c

    aput-object v4, v3, v5

    .line 574
    const-string/jumbo v4, "READ_CLIPBOARD"

    const/16 v5, 0x1d

    aput-object v4, v3, v5

    .line 575
    const-string/jumbo v4, "WRITE_CLIPBOARD"

    const/16 v5, 0x1e

    aput-object v4, v3, v5

    .line 576
    const-string/jumbo v4, "TAKE_MEDIA_BUTTONS"

    const/16 v5, 0x1f

    aput-object v4, v3, v5

    .line 577
    const-string/jumbo v4, "TAKE_AUDIO_FOCUS"

    const/16 v5, 0x20

    aput-object v4, v3, v5

    .line 578
    const-string/jumbo v4, "AUDIO_MASTER_VOLUME"

    const/16 v5, 0x21

    aput-object v4, v3, v5

    .line 579
    const-string/jumbo v4, "AUDIO_VOICE_VOLUME"

    const/16 v5, 0x22

    aput-object v4, v3, v5

    .line 580
    const-string/jumbo v4, "AUDIO_RING_VOLUME"

    const/16 v5, 0x23

    aput-object v4, v3, v5

    .line 581
    const-string/jumbo v4, "AUDIO_MEDIA_VOLUME"

    const/16 v5, 0x24

    aput-object v4, v3, v5

    .line 582
    const-string/jumbo v4, "AUDIO_ALARM_VOLUME"

    const/16 v5, 0x25

    aput-object v4, v3, v5

    .line 583
    const-string/jumbo v4, "AUDIO_NOTIFICATION_VOLUME"

    const/16 v5, 0x26

    aput-object v4, v3, v5

    .line 584
    const-string/jumbo v4, "AUDIO_BLUETOOTH_VOLUME"

    const/16 v5, 0x27

    aput-object v4, v3, v5

    .line 585
    const-string/jumbo v4, "WAKE_LOCK"

    const/16 v5, 0x28

    aput-object v4, v3, v5

    .line 586
    const-string/jumbo v4, "MONITOR_LOCATION"

    const/16 v5, 0x29

    aput-object v4, v3, v5

    .line 587
    const-string/jumbo v4, "MONITOR_HIGH_POWER_LOCATION"

    const/16 v5, 0x2a

    aput-object v4, v3, v5

    .line 588
    const-string/jumbo v4, "GET_USAGE_STATS"

    const/16 v5, 0x2b

    aput-object v4, v3, v5

    .line 589
    const-string/jumbo v4, "MUTE_MICROPHONE"

    const/16 v5, 0x2c

    aput-object v4, v3, v5

    .line 590
    const-string/jumbo v4, "TOAST_WINDOW"

    const/16 v5, 0x2d

    aput-object v4, v3, v5

    .line 591
    const-string/jumbo v4, "PROJECT_MEDIA"

    const/16 v5, 0x2e

    aput-object v4, v3, v5

    .line 592
    const-string/jumbo v4, "ACTIVATE_VPN"

    const/16 v5, 0x2f

    aput-object v4, v3, v5

    .line 593
    const-string/jumbo v4, "WRITE_WALLPAPER"

    const/16 v5, 0x30

    aput-object v4, v3, v5

    .line 594
    const-string/jumbo v4, "ASSIST_STRUCTURE"

    const/16 v5, 0x31

    aput-object v4, v3, v5

    .line 595
    const-string/jumbo v4, "ASSIST_SCREENSHOT"

    const/16 v5, 0x32

    aput-object v4, v3, v5

    .line 596
    const-string/jumbo v4, "OP_READ_PHONE_STATE"

    const/16 v5, 0x33

    aput-object v4, v3, v5

    .line 597
    const-string/jumbo v4, "ADD_VOICEMAIL"

    const/16 v5, 0x34

    aput-object v4, v3, v5

    .line 598
    const-string/jumbo v4, "USE_SIP"

    const/16 v5, 0x35

    aput-object v4, v3, v5

    .line 599
    const-string/jumbo v4, "PROCESS_OUTGOING_CALLS"

    const/16 v5, 0x36

    aput-object v4, v3, v5

    .line 600
    const-string/jumbo v4, "USE_FINGERPRINT"

    const/16 v5, 0x37

    aput-object v4, v3, v5

    .line 601
    const-string/jumbo v4, "BODY_SENSORS"

    const/16 v5, 0x38

    aput-object v4, v3, v5

    .line 602
    const-string/jumbo v4, "READ_CELL_BROADCASTS"

    const/16 v5, 0x39

    aput-object v4, v3, v5

    .line 603
    const-string/jumbo v4, "MOCK_LOCATION"

    const/16 v5, 0x3a

    aput-object v4, v3, v5

    .line 604
    const-string/jumbo v4, "READ_EXTERNAL_STORAGE"

    const/16 v5, 0x3b

    aput-object v4, v3, v5

    .line 605
    const-string/jumbo v4, "WRITE_EXTERNAL_STORAGE"

    const/16 v5, 0x3c

    aput-object v4, v3, v5

    .line 606
    const-string/jumbo v4, "TURN_ON_SCREEN"

    const/16 v5, 0x3d

    aput-object v4, v3, v5

    .line 607
    const-string/jumbo v4, "GET_ACCOUNTS"

    const/16 v5, 0x3e

    aput-object v4, v3, v5

    .line 608
    const-string/jumbo v4, "RUN_IN_BACKGROUND"

    const/16 v5, 0x3f

    aput-object v4, v3, v5

    .line 610
    const-string/jumbo v4, "SYSTEM_INTERNAL_WINDOW"

    const/16 v5, 0x40

    aput-object v4, v3, v5

    .line 544
    sput-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    .line 618
    new-array v3, v7, [Ljava/lang/String;

    .line 619
    const-string/jumbo v4, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v4, v3, v2

    .line 620
    const-string/jumbo v4, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v4, v3, v9

    .line 621
    const/4 v4, 0x2

    aput-object v6, v3, v4

    .line 622
    const-string/jumbo v4, "android.permission.VIBRATE"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 623
    const-string/jumbo v4, "android.permission.READ_CONTACTS"

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 624
    const-string/jumbo v4, "android.permission.WRITE_CONTACTS"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 625
    const-string/jumbo v4, "android.permission.READ_CALL_LOG"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 626
    const-string/jumbo v4, "android.permission.WRITE_CALL_LOG"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    .line 627
    const-string/jumbo v4, "android.permission.READ_CALENDAR"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    .line 628
    const-string/jumbo v4, "android.permission.WRITE_CALENDAR"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    .line 629
    const-string/jumbo v4, "android.permission.ACCESS_WIFI_STATE"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    .line 630
    const/16 v4, 0xb

    aput-object v6, v3, v4

    .line 631
    const/16 v4, 0xc

    aput-object v6, v3, v4

    .line 632
    const-string/jumbo v4, "android.permission.CALL_PHONE"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    .line 633
    const-string/jumbo v4, "android.permission.READ_SMS"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    .line 634
    const/16 v4, 0xf

    aput-object v6, v3, v4

    .line 635
    const-string/jumbo v4, "android.permission.RECEIVE_SMS"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    .line 636
    const-string/jumbo v4, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    .line 637
    const-string/jumbo v4, "android.permission.RECEIVE_MMS"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    .line 638
    const-string/jumbo v4, "android.permission.RECEIVE_WAP_PUSH"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    .line 639
    const-string/jumbo v4, "android.permission.SEND_SMS"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    .line 640
    const-string/jumbo v4, "android.permission.READ_SMS"

    const/16 v5, 0x15

    aput-object v4, v3, v5

    .line 641
    const/16 v4, 0x16

    aput-object v6, v3, v4

    .line 642
    const-string/jumbo v4, "android.permission.WRITE_SETTINGS"

    const/16 v5, 0x17

    aput-object v4, v3, v5

    .line 643
    const-string/jumbo v4, "android.permission.SYSTEM_ALERT_WINDOW"

    const/16 v5, 0x18

    aput-object v4, v3, v5

    .line 644
    const-string/jumbo v4, "android.permission.ACCESS_NOTIFICATIONS"

    aput-object v4, v3, v8

    .line 645
    const-string/jumbo v4, "android.permission.CAMERA"

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    .line 646
    const-string/jumbo v4, "android.permission.RECORD_AUDIO"

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    .line 647
    const/16 v4, 0x1c

    aput-object v6, v3, v4

    .line 648
    const/16 v4, 0x1d

    aput-object v6, v3, v4

    .line 649
    const/16 v4, 0x1e

    aput-object v6, v3, v4

    .line 650
    const/16 v4, 0x1f

    aput-object v6, v3, v4

    .line 651
    const/16 v4, 0x20

    aput-object v6, v3, v4

    .line 652
    const/16 v4, 0x21

    aput-object v6, v3, v4

    .line 653
    const/16 v4, 0x22

    aput-object v6, v3, v4

    .line 654
    const/16 v4, 0x23

    aput-object v6, v3, v4

    .line 655
    const/16 v4, 0x24

    aput-object v6, v3, v4

    .line 656
    const/16 v4, 0x25

    aput-object v6, v3, v4

    .line 657
    const/16 v4, 0x26

    aput-object v6, v3, v4

    .line 658
    const/16 v4, 0x27

    aput-object v6, v3, v4

    .line 659
    const-string/jumbo v4, "android.permission.WAKE_LOCK"

    const/16 v5, 0x28

    aput-object v4, v3, v5

    .line 660
    const/16 v4, 0x29

    aput-object v6, v3, v4

    .line 661
    const/16 v4, 0x2a

    aput-object v6, v3, v4

    .line 662
    const-string/jumbo v4, "android.permission.PACKAGE_USAGE_STATS"

    const/16 v5, 0x2b

    aput-object v4, v3, v5

    .line 663
    const/16 v4, 0x2c

    aput-object v6, v3, v4

    .line 664
    const/16 v4, 0x2d

    aput-object v6, v3, v4

    .line 665
    const/16 v4, 0x2e

    aput-object v6, v3, v4

    .line 666
    const/16 v4, 0x2f

    aput-object v6, v3, v4

    .line 667
    const/16 v4, 0x30

    aput-object v6, v3, v4

    .line 668
    const/16 v4, 0x31

    aput-object v6, v3, v4

    .line 669
    const/16 v4, 0x32

    aput-object v6, v3, v4

    .line 670
    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    const/16 v5, 0x33

    aput-object v4, v3, v5

    .line 671
    const-string/jumbo v4, "com.android.voicemail.permission.ADD_VOICEMAIL"

    const/16 v5, 0x34

    aput-object v4, v3, v5

    .line 672
    const-string/jumbo v4, "android.permission.USE_SIP"

    const/16 v5, 0x35

    aput-object v4, v3, v5

    .line 673
    const-string/jumbo v4, "android.permission.PROCESS_OUTGOING_CALLS"

    const/16 v5, 0x36

    aput-object v4, v3, v5

    .line 674
    const-string/jumbo v4, "android.permission.USE_FINGERPRINT"

    const/16 v5, 0x37

    aput-object v4, v3, v5

    .line 675
    const-string/jumbo v4, "android.permission.BODY_SENSORS"

    const/16 v5, 0x38

    aput-object v4, v3, v5

    .line 676
    const-string/jumbo v4, "android.permission.READ_CELL_BROADCASTS"

    const/16 v5, 0x39

    aput-object v4, v3, v5

    .line 677
    const/16 v4, 0x3a

    aput-object v6, v3, v4

    .line 678
    const-string/jumbo v4, "android.permission.READ_EXTERNAL_STORAGE"

    const/16 v5, 0x3b

    aput-object v4, v3, v5

    .line 679
    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/16 v5, 0x3c

    aput-object v4, v3, v5

    .line 680
    const/16 v4, 0x3d

    aput-object v6, v3, v4

    .line 681
    const-string/jumbo v4, "android.permission.GET_ACCOUNTS"

    const/16 v5, 0x3e

    aput-object v4, v3, v5

    .line 682
    const/16 v4, 0x3f

    aput-object v6, v3, v4

    .line 684
    const/16 v4, 0x40

    aput-object v6, v3, v4

    .line 618
    sput-object v3, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    .line 693
    new-array v3, v7, [Ljava/lang/String;

    .line 694
    const-string/jumbo v4, "no_share_location"

    aput-object v4, v3, v2

    .line 695
    const-string/jumbo v4, "no_share_location"

    aput-object v4, v3, v9

    .line 696
    const-string/jumbo v4, "no_share_location"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 697
    const/4 v4, 0x3

    aput-object v6, v3, v4

    .line 698
    const/4 v4, 0x4

    aput-object v6, v3, v4

    .line 699
    const/4 v4, 0x5

    aput-object v6, v3, v4

    .line 700
    const-string/jumbo v4, "no_outgoing_calls"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 701
    const-string/jumbo v4, "no_outgoing_calls"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    .line 702
    const/16 v4, 0x8

    aput-object v6, v3, v4

    .line 703
    const/16 v4, 0x9

    aput-object v6, v3, v4

    .line 704
    const-string/jumbo v4, "no_share_location"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    .line 705
    const/16 v4, 0xb

    aput-object v6, v3, v4

    .line 706
    const/16 v4, 0xc

    aput-object v6, v3, v4

    .line 707
    const/16 v4, 0xd

    aput-object v6, v3, v4

    .line 708
    const-string/jumbo v4, "no_sms"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    .line 709
    const-string/jumbo v4, "no_sms"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    .line 710
    const-string/jumbo v4, "no_sms"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    .line 711
    const/16 v4, 0x11

    aput-object v6, v3, v4

    .line 712
    const-string/jumbo v4, "no_sms"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    .line 713
    const/16 v4, 0x13

    aput-object v6, v3, v4

    .line 714
    const-string/jumbo v4, "no_sms"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    .line 715
    const-string/jumbo v4, "no_sms"

    const/16 v5, 0x15

    aput-object v4, v3, v5

    .line 716
    const-string/jumbo v4, "no_sms"

    const/16 v5, 0x16

    aput-object v4, v3, v5

    .line 717
    const/16 v4, 0x17

    aput-object v6, v3, v4

    .line 718
    const-string/jumbo v4, "no_create_windows"

    const/16 v5, 0x18

    aput-object v4, v3, v5

    .line 719
    aput-object v6, v3, v8

    .line 720
    const-string/jumbo v4, "no_camera"

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    .line 721
    const-string/jumbo v4, "no_record_audio"

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    .line 722
    const/16 v4, 0x1c

    aput-object v6, v3, v4

    .line 723
    const/16 v4, 0x1d

    aput-object v6, v3, v4

    .line 724
    const/16 v4, 0x1e

    aput-object v6, v3, v4

    .line 725
    const/16 v4, 0x1f

    aput-object v6, v3, v4

    .line 726
    const/16 v4, 0x20

    aput-object v6, v3, v4

    .line 727
    const-string/jumbo v4, "no_adjust_volume"

    const/16 v5, 0x21

    aput-object v4, v3, v5

    .line 728
    const-string/jumbo v4, "no_adjust_volume"

    const/16 v5, 0x22

    aput-object v4, v3, v5

    .line 729
    const-string/jumbo v4, "no_adjust_volume"

    const/16 v5, 0x23

    aput-object v4, v3, v5

    .line 730
    const-string/jumbo v4, "no_adjust_volume"

    const/16 v5, 0x24

    aput-object v4, v3, v5

    .line 731
    const-string/jumbo v4, "no_adjust_volume"

    const/16 v5, 0x25

    aput-object v4, v3, v5

    .line 732
    const-string/jumbo v4, "no_adjust_volume"

    const/16 v5, 0x26

    aput-object v4, v3, v5

    .line 733
    const-string/jumbo v4, "no_adjust_volume"

    const/16 v5, 0x27

    aput-object v4, v3, v5

    .line 734
    const/16 v4, 0x28

    aput-object v6, v3, v4

    .line 735
    const-string/jumbo v4, "no_share_location"

    const/16 v5, 0x29

    aput-object v4, v3, v5

    .line 736
    const-string/jumbo v4, "no_share_location"

    const/16 v5, 0x2a

    aput-object v4, v3, v5

    .line 737
    const/16 v4, 0x2b

    aput-object v6, v3, v4

    .line 738
    const-string/jumbo v4, "no_unmute_microphone"

    const/16 v5, 0x2c

    aput-object v4, v3, v5

    .line 739
    const-string/jumbo v4, "no_create_windows"

    const/16 v5, 0x2d

    aput-object v4, v3, v5

    .line 740
    const/16 v4, 0x2e

    aput-object v6, v3, v4

    .line 741
    const/16 v4, 0x2f

    aput-object v6, v3, v4

    .line 742
    const-string/jumbo v4, "no_wallpaper"

    const/16 v5, 0x30

    aput-object v4, v3, v5

    .line 743
    const/16 v4, 0x31

    aput-object v6, v3, v4

    .line 744
    const/16 v4, 0x32

    aput-object v6, v3, v4

    .line 745
    const/16 v4, 0x33

    aput-object v6, v3, v4

    .line 746
    const/16 v4, 0x34

    aput-object v6, v3, v4

    .line 747
    const/16 v4, 0x35

    aput-object v6, v3, v4

    .line 748
    const/16 v4, 0x36

    aput-object v6, v3, v4

    .line 749
    const/16 v4, 0x37

    aput-object v6, v3, v4

    .line 750
    const/16 v4, 0x38

    aput-object v6, v3, v4

    .line 751
    const/16 v4, 0x39

    aput-object v6, v3, v4

    .line 752
    const/16 v4, 0x3a

    aput-object v6, v3, v4

    .line 753
    const/16 v4, 0x3b

    aput-object v6, v3, v4

    .line 754
    const/16 v4, 0x3c

    aput-object v6, v3, v4

    .line 755
    const/16 v4, 0x3d

    aput-object v6, v3, v4

    .line 756
    const/16 v4, 0x3e

    aput-object v6, v3, v4

    .line 757
    const/16 v4, 0x3f

    aput-object v6, v3, v4

    .line 759
    const-string/jumbo v4, "no_create_windows"

    const/16 v5, 0x40

    aput-object v4, v3, v5

    .line 693
    sput-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    .line 767
    new-array v3, v7, [Z

    fill-array-data v3, :array_2

    sput-object v3, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    .line 840
    new-array v3, v7, [I

    fill-array-data v3, :array_3

    sput-object v3, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    .line 917
    new-array v3, v7, [Z

    fill-array-data v3, :array_4

    sput-object v3, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    .line 990
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    .line 995
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Landroid/app/AppOpsManager;->sRuntimePermToOp:Ljava/util/HashMap;

    .line 998
    sget-object v3, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v3, v3

    if-eq v3, v7, :cond_0

    .line 999
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

    .line 1000
    const-string/jumbo v4, " should be "

    .line 999
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1002
    :cond_0
    sget-object v3, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v3, v3

    if-eq v3, v7, :cond_1

    .line 1003
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

    .line 1004
    const-string/jumbo v4, " should be "

    .line 1003
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1006
    :cond_1
    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v3, v3

    if-eq v3, v7, :cond_2

    .line 1007
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

    .line 1008
    const-string/jumbo v4, " should be "

    .line 1007
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1010
    :cond_2
    sget-object v3, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v3, v3

    if-eq v3, v7, :cond_3

    .line 1011
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

    .line 1012
    const-string/jumbo v4, " should be "

    .line 1011
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1014
    :cond_3
    sget-object v3, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v3, v3

    if-eq v3, v7, :cond_4

    .line 1015
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

    .line 1016
    const-string/jumbo v4, " should be "

    .line 1015
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1018
    :cond_4
    sget-object v3, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v3, v3

    if-eq v3, v7, :cond_5

    .line 1019
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

    .line 1020
    const-string/jumbo v4, " should be "

    .line 1019
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1022
    :cond_5
    sget-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v3, v3

    if-eq v3, v7, :cond_6

    .line 1023
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

    .line 1024
    const-string/jumbo v4, " should be "

    .line 1023
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1026
    :cond_6
    sget-object v3, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    array-length v3, v3

    if-eq v3, v7, :cond_7

    .line 1027
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpAllowSYstemRestrictionsBypass length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1028
    sget-object v4, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v4, v4

    .line 1027
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1028
    const-string/jumbo v4, " should be "

    .line 1027
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1030
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_9

    .line 1031
    sget-object v3, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_8

    .line 1032
    sget-object v3, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    sget-object v4, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1035
    :cond_9
    sget-object v3, Landroid/app/AppOpsManager;->RUNTIME_PERMISSIONS_OPS:[I

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_b

    aget v1, v3, v2

    .line 1036
    .local v1, "op":I
    sget-object v5, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-eqz v5, :cond_a

    .line 1037
    sget-object v5, Landroid/app/AppOpsManager;->sRuntimePermToOp:Ljava/util/HashMap;

    sget-object v6, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 49
    .end local v1    # "op":I
    :cond_b
    return-void

    .line 351
    nop

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
        0xd
        0x6
        0x7
        0x34
        0x35
        0x36
        0x1b
        0x1a
        0x38
    .end array-data

    .line 396
    :array_1
    .array-data 4
        0x0
        0x1
        0x2
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
        0x10
        0x10
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
        0x1
        0x1
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
    .end array-data

    .line 767
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
        0x1t
    .end array-data

    .line 840
    nop

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
        0x3
    .end array-data

    .line 917
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
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IAppOpsService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 1296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 74
    iput-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    .line 1297
    iput-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 1298
    iput-object p2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 1296
    return-void
.end method

.method private buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1543
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
    .param p0, "service"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 1886
    const-class v2, Landroid/app/AppOpsManager;

    monitor-enter v2

    .line 1887
    :try_start_0
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 1888
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 1891
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

    .line 1895
    :try_start_2
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v1

    .line 1892
    :catch_0
    move-exception v0

    .line 1893
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1886
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static opAllowSystemBypassRestriction(I)Z
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1104
    sget-object v0, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static opAllowsReset(I)Z
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1120
    sget-object v0, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static opToDefaultMode(I)I
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1112
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    aget v0, v0, p0

    return v0
.end method

.method public static opToName(I)Ljava/lang/String;
    .locals 2
    .param p0, "op"    # I

    .prologue
    .line 1055
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "NONE"

    return-object v0

    .line 1056
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
    .param p0, "op"    # I

    .prologue
    .line 1076
    sget-object v0, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToRestriction(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1084
    sget-object v0, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToSwitch(I)I
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1047
    sget-object v0, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    aget v0, v0, p0

    return v0
.end method

.method public static permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1476
    sget-object v1, Landroid/app/AppOpsManager;->sRuntimePermToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1477
    .local v0, "opCode":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1478
    return-object v2

    .line 1480
    :cond_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    return-object v1
.end method

.method public static permissionToOpCode(Ljava/lang/String;)I
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 1094
    sget-object v1, Landroid/app/AppOpsManager;->sRuntimePermToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1095
    .local v0, "boxedOpCode":Ljava/lang/Integer;
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
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 1063
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1064
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1065
    return v0

    .line 1063
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1068
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
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 1550
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1551
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1552
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

    .line 1554
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method


# virtual methods
.method public checkAudioOp(IIILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1773
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v1

    .line 1774
    .local v1, "mode":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1775
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p3, p4}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1778
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    .line 1779
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1777
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "mode":I
    :cond_0
    return v1
.end method

.method public checkAudioOpNoThrow(IIILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1790
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1791
    :catch_0
    move-exception v0

    .line 1792
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkOp(IILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1695
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1

    .line 1696
    .local v1, "mode":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1697
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1700
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    .line 1701
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1699
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "mode":I
    :cond_0
    return v1
.end method

.method public checkOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1574
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkOpNoThrow(IILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1744
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1745
    :catch_0
    move-exception v0

    .line 1746
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1582
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkPackage(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1758
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1759
    new-instance v1, Ljava/lang/SecurityException;

    .line 1760
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

    .line 1759
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1762
    :catch_0
    move-exception v0

    .line 1763
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1756
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public finishOp(I)V
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 1963
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1962
    return-void
.end method

.method public finishOp(IILjava/lang/String;)V
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1955
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1953
    return-void

    .line 1956
    :catch_0
    move-exception v0

    .line 1957
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public finishOp(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1673
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1672
    return-void
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
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

    .prologue
    .line 1325
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1326
    :catch_0
    move-exception v0

    .line 1327
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 2
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1309
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1310
    :catch_0
    move-exception v0

    .line 1311
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public noteOp(I)I
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 1881
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
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1813
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v1

    .line 1814
    .local v1, "mode":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1815
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1818
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    .line 1819
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1817
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "mode":I
    :cond_0
    return v1
.end method

.method public noteOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1600
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOpNoThrow(IILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1873
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1874
    :catch_0
    move-exception v0

    .line 1875
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1608
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOp(ILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 1842
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILjava/lang/String;)I

    move-result v0

    .line 1843
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1844
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

    .line 1845
    const-string/jumbo v3, " from uid "

    .line 1844
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1845
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 1844
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1845
    const-string/jumbo v3, " or calling package "

    .line 1844
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1846
    const-string/jumbo v3, " from uid "

    .line 1844
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1846
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1844
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1847
    const-string/jumbo v3, " not allowed to perform "

    .line 1844
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1847
    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v3, v3, p1

    .line 1844
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1849
    :cond_0
    return v0
.end method

.method public noteProxyOp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 1627
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOpNoThrow(ILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 1859
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1860
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1859
    invoke-interface {v1, p1, v2, v3, p2}, Lcom/android/internal/app/IAppOpsService;->noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1861
    :catch_0
    move-exception v0

    .line 1862
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 1635
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public resetAllModes()V
    .locals 4

    .prologue
    .line 1459
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1457
    return-void

    .line 1460
    :catch_0
    move-exception v0

    .line 1461
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public semCheckOpSystemAlertWindow(ILjava/lang/String;)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1734
    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public semCheckOpWriteSms(ILjava/lang/String;)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1718
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public semSetMode(IILjava/lang/String;I)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 1406
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 1405
    return-void
.end method

.method public semSetModeSystemAlertWindow(ILjava/lang/String;I)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .prologue
    .line 1432
    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 1431
    return-void
.end method

.method public semSetModeWriteSms(ILjava/lang/String;I)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .prologue
    .line 1419
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 1418
    return-void
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 1392
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1390
    return-void

    .line 1393
    :catch_0
    move-exception v0

    .line 1394
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setRestriction(III[Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "mode"    # I
    .param p4, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    .line 1449
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1450
    .local v3, "uid":I
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->setAudioRestriction(IIII[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1447
    return-void

    .line 1451
    .end local v3    # "uid":I
    :catch_0
    move-exception v6

    .line 1452
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setUidMode(III)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .prologue
    .line 1343
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1341
    return-void

    .line 1344
    :catch_0
    move-exception v0

    .line 1345
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUidMode(Ljava/lang/String;II)V
    .locals 3
    .param p1, "appOp"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .prologue
    .line 1362
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1360
    return-void

    .line 1363
    :catch_0
    move-exception v0

    .line 1364
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1370
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;[Ljava/lang/String;)V

    .line 1369
    return-void
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;[Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    .line 1376
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    .line 1375
    return-void
.end method

.method public setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "exceptionPackages"    # [Ljava/lang/String;
    .param p5, "userId"    # I

    .prologue
    .line 1383
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

    .line 1381
    return-void

    .line 1384
    :catch_0
    move-exception v6

    .line 1385
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public startOp(I)I
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 1943
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
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1918
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v3}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    move-result v1

    .line 1919
    .local v1, "mode":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1920
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1923
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    .line 1924
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1922
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "mode":I
    :cond_0
    return v1
.end method

.method public startOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1655
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOpNoThrow(IILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1935
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

    .line 1936
    :catch_0
    move-exception v0

    .line 1937
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1663
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 4
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 1502
    iget-object v3, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1503
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;

    .line 1504
    .local v0, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-nez v0, :cond_0

    .line 1505
    new-instance v0, Landroid/app/AppOpsManager$1;

    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    invoke-direct {v0, p0, p3}, Landroid/app/AppOpsManager$1;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1515
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1518
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 1501
    return-void

    .line 1519
    :catch_0
    move-exception v1

    .line 1520
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1502
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public startWatchingMode(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 1491
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1490
    return-void
.end method

.method public stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 4
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 1530
    iget-object v3, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1531
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1532
    .local v0, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-eqz v0, :cond_0

    .line 1534
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v0}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit v3

    .line 1529
    return-void

    .line 1535
    :catch_0
    move-exception v1

    .line 1536
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1530
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
