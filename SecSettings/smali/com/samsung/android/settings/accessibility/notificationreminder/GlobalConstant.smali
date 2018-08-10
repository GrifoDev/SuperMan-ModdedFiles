.class public Lcom/samsung/android/settings/accessibility/notificationreminder/GlobalConstant;
.super Ljava/lang/Object;
.source "GlobalConstant.java"


# static fields
.field public static INTENT_NOTIFICATION_START_SREVICE_ACTION:Ljava/lang/String;

.field public static INTENT_NOTIFICATION_STOP_SREVICE_ACTION:Ljava/lang/String;

.field public static TIME_VALUE_DEFAULT:I

.field private static excludeAppArray:[Ljava/lang/String;

.field public static includeAppStrings:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "accessibility_settings_notification_reminder_start"

    sput-object v0, Lcom/samsung/android/settings/accessibility/notificationreminder/GlobalConstant;->INTENT_NOTIFICATION_START_SREVICE_ACTION:Ljava/lang/String;

    const-string/jumbo v0, "accessibility_settings_notification_reminder_stop"

    sput-object v0, Lcom/samsung/android/settings/accessibility/notificationreminder/GlobalConstant;->INTENT_NOTIFICATION_STOP_SREVICE_ACTION:Ljava/lang/String;

    const/16 v0, 0x3c

    sput v0, Lcom/samsung/android/settings/accessibility/notificationreminder/GlobalConstant;->TIME_VALUE_DEFAULT:I

    const-string/jumbo v0, "com.android.server.telecom;"

    sput-object v0, Lcom/samsung/android/settings/accessibility/notificationreminder/GlobalConstant;->includeAppStrings:Ljava/lang/String;

    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.app.watchmanager"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.hostmanager"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.app.watchmanager"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.app.watchmanagerstub"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.wms"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.keystringscreen"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.development"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.quickmemo"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.popupcalculator"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.camera"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.chrome"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.contacts"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.clockpackage"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.clockpackagechina"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.gallery3d"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.play.games"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.music"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.sbrowser"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.music"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.app.music.chn"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.myfiles"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.shealth"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.snote"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.translator"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.vlingo.midas"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.everglades.video"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "tv.peel.samsung.app"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "tv.peel.smartremote"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.voicenote"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.voicerecorder"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.widgetapp.diotek.smemo"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sds.mobiledesk"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.wallet"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.widgetapp.ap.hero.accuweather"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.app.memo"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string/jumbo v1, "jp.co.nttdocomo.carriermail"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.kddi.disasterapp"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/accessibility/notificationreminder/GlobalConstant;->excludeAppArray:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Contain(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/settings/accessibility/notificationreminder/GlobalConstant;->excludeAppArray:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/settings/accessibility/notificationreminder/GlobalConstant;->excludeAppArray:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static getDefaultTimeInterval()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/accessibility/notificationreminder/GlobalConstant;->TIME_VALUE_DEFAULT:I

    return v0
.end method

.method public static getPackageMigrationMap()Ljava/util/HashMap;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "com.android.mms"

    const-string/jumbo v2, "com.samsung.android.messaging"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.android.calendar"

    const-string/jumbo v2, "com.samsung.android.calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.samsung.android.video"

    const-string/jumbo v2, "com.samsung.android.videolist"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
