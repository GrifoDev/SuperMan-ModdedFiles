.class public interface abstract Lcom/android/server/epm/PluginConstants;
.super Ljava/lang/Object;
.source "PluginConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/epm/PluginConstants$1;
    }
.end annotation


# static fields
.field public static final APPLY_THEME:I = 0x65

.field public static final CALLBACK_INSTALL_COMPLETED:I = 0x3

.field public static final CALLBACK_INSTALL_PROGRESS:I = 0x4

.field public static final CALLBACK_STATECHANGE_COMPLETED:I = 0x5

.field public static final CALLBACK_STATECHANGE_PROGRESS:I = 0x6

.field public static final CALLBACK_UNINSTALL_COMPLETED:I = 0x1

.field public static final CALLBACK_UNINSTALL_PROGRESS:I = 0x2

.field public static final CATEGORY:Ljava/lang/String; = "type"

.field public static final CATEGORY_APP_ICON:Ljava/lang/String; = "appicon"

.field public static final CATEGORY_CHINESE_FESTIVAL:Ljava/lang/String; = "Festival"

.field public static final CATEGORY_LANG:I = 0x2

.field public static final CATEGORY_LOCK:Ljava/lang/String; = "lock"

.field public static final CATEGORY_MY_EVENT:Ljava/lang/String; = "MyEvent"

.field public static final CATEGORY_OPEN_THEME:Ljava/lang/String; = "open_theme"

.field public static final CATEGORY_PLUGIN:I = 0x0

.field public static final CATEGORY_THEME:I = 0x1

.field public static final CATEGORY_TRIAL_THEME:Ljava/lang/String; = "trial_theme"

.field public static final CATEGORY_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field public static final CHINESE_FESTIVAL:Ljava/lang/String; = "com.samsung.festival.chinadefault"

.field public static final COLUMN_NAME_CATEGORY:Ljava/lang/String; = "category"

.field public static final COLUMN_NAME_SOURCE_CLASS:Ljava/lang/String; = "sourceClass"

.field public static final COLUMN_NAME_SOURCE_PACKAGE:Ljava/lang/String; = "sourcePackage"

.field public static final COLUMN_NAME_TARGET_CLASS:Ljava/lang/String; = "targetClass"

.field public static final COLUMN_NAME_TARGET_PACKAGE:Ljava/lang/String; = "targetPackage"

.field public static final COMMA_SEP:Ljava/lang/String; = ","

.field public static final COMPONENT_APP_ICON:Ljava/lang/String; = "appicon"

.field public static final COMPONENT_COVER_APP:Ljava/lang/String; = "cover"

.field public static final COMPONENT_EVENT:Ljava/lang/String; = "Event"

.field public static final COMPONENT_FONT:Ljava/lang/String; = "font"

.field public static final COMPONENT_HOME:Ljava/lang/String; = "home"

.field public static final COMPONENT_LOCK:Ljava/lang/String; = "lock"

.field public static final COMPONENT_PHONE_STYLE:Ljava/lang/String; = "appstyle"

.field public static final COMPONENT_SOUND:Ljava/lang/String; = "sound"

.field public static final COMPONENT_THEME:Ljava/lang/String; = "themes"

.field public static final COMPONENT_THIRD_PARTY:Ljava/lang/String; = "thirdparty"

.field public static final COMPONENT_TITLE:Ljava/lang/String; = "title"

.field public static final COMPONENT_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field public static final CONSTRUCT_DATA:I = 0x1

.field public static final DATABASE_NAME:Ljava/lang/String; = "FeatureInformation.db"

.field public static final DATABASE_VERSION:I = 0x1

.field public static final DEAFULT_EXPIRY_TIME:I = 0x2

.field public static final DEBUG_ELASTIC:Z = false

.field public static final DELETE_SET_EVENT_TIME:I = 0xb

.field public static final DELETE_THEME:I = 0x66

.field public static final DELIMITER:Ljava/lang/String; = "#"

.field public static final DESC:Ljava/lang/String; = "description"

.field public static final EVENT_THEME_MESSAGE:Ljava/lang/String; = "A new event theme is ready to be applied. Continue?"

.field public static final EVENT_THEME_TITLE:Ljava/lang/String; = "Event Theme"

.field public static final EXIT_THREAD:I = 0x4

.field public static final EXPIRY_TIME:Ljava/lang/String; = "expiry_time"

.field public static final FEATURE_INFORMATION:Ljava/lang/String; = "FEATURE_INFO"

.field public static final FONT_CLOCK:Ljava/lang/String; = "clock"

.field public static final FONT_NUMERIC:Ljava/lang/String; = "numeric"

.field public static final FONT_SIZE:Ljava/lang/String; = "size"

.field public static final FONT_SYSTEM:Ljava/lang/String; = "system"

.field public static final KILL_ALL_PARENT:I = 0x3

.field public static final KILL_PARENT:I = 0x2

.field public static final LOCK_WALLPAPER_NAME:Ljava/lang/String; = "lockscreen_wallpaper.png"

.field public static final MASTER:Ljava/lang/String; = "master"

.field public static final MASTER_VERSION:Ljava/lang/String; = "opentheme_version"

.field public static final MESSAGE_BUGGY_MASTER:I = 0x5

.field public static final MESSAGE_CHANGE_STATE:I = 0x1

.field public static final MESSAGE_ENABLE_COMPONENT:I = 0x8

.field public static final MESSAGE_EVENT:I = 0x2

.field public static final MESSAGE_INSTALL:I = 0x0

.field public static final MESSAGE_NORMAL_INSTALL:I = 0x6

.field public static final MESSAGE_PRELOADED_INSTALL:I = 0xd

.field public static final MESSAGE_REMOVE:I = 0x4

.field public static final MESSAGE_SET_EVENT_TIME:I = 0x7

.field public static final MESSAGE_SET_FESTIVAL:I = 0xc

.field public static final MESSAGE_THEME_APPLIED:I = 0x9

.field public static final MESSAGE_THEME_PACKAGE_STATE:I = 0xa

.field public static final MESSAGE_UNINSTALL_MASTER:I = 0x3

.field public static final META_DATA_LANGUAGE:Ljava/lang/String; = "elastic.language.ttf"

.field public static final MODULE_LANGUAGE:Ljava/lang/String; = "module_lang"

.field public static final MODULE_OVERLAY:Ljava/lang/String; = "module_overlay"

.field public static final MODULE_THEME:Ljava/lang/String; = "module_theme"

.field public static final MYEVENT_BIRTHDAY:Ljava/lang/String; = "com.samsung.festival.MyEventBirthday"

.field public static final MYEVENT_CONGRATULATION:Ljava/lang/String; = "com.samsung.festival.MyEventcongrat"

.field public static final MYEVENT_THANKYOU:Ljava/lang/String; = "com.samsung.festival.MyEventThankyou"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final ORDER_APPICON:I = 0x3

.field public static final ORDER_EVENT:I = 0x4

.field public static final ORDER_FONT:I = 0x5

.field public static final ORDER_HOME:I = 0x8

.field public static final ORDER_LOCK:I = 0x1

.field public static final ORDER_PHONE_STYLE:I = 0x7

.field public static final ORDER_SOUND:I = 0x6

.field public static final ORDER_THEME:I = 0x0

.field public static final ORDER_WALLPAPER:I = 0x2

.field public static final OVERLAY:Ljava/lang/String; = "overlay"

.field public static final PACKAGE:Ljava/lang/String; = "package"

.field public static final PATH_FONT:Ljava/lang/String; = "/data/downloaded_fonts"

.field public static final PATH_FONT_FILES:Ljava/lang/String; = "/data/overlays/font"

.field public static final PATH_JSON_FILES:Ljava/lang/String; = "/data/overlays/jsonfiles"

.field public static final PATH_LOCAL_TEMP:Ljava/lang/String; = "/data/local/tmp"

.field public static final PATH_LOCK_WALLPAPER:Ljava/lang/String; = "/data/overlays/lockwallpaper"

.field public static final PATH_OVERLAY:Ljava/lang/String; = "/data/overlays"

.field public static final PATH_PHONESTYLE_JSON_FILES:Ljava/lang/String; = "/data/overlays/jsonfiles/phonestylefiles"

.field public static final PATH_PREVIEW:Ljava/lang/String; = "/data/overlays/preview"

.field public static final PATH_SOUND:Ljava/lang/String; = "/data/overlays/sound"

.field public static final PATH_THEME_PREFERENCE:Ljava/lang/String; = "/data/overlays/preferences/samsung.andorid.themes.component_preference.xml"

.field public static final PATH_TRIAL_JSON_FILES:Ljava/lang/String; = "/data/overlays/jsonfiles/trialjson"

.field public static final PATH_USER_JSON_FILES:Ljava/lang/String; = "/data/overlays/jsonfiles/userjson"

.field public static final PERMISSION_OVERLAY_COMPONENT:Ljava/lang/String; = "com.samsung.android.permission.SAMSUNG_OVERLAY_COMPONENT"

.field public static final PERMISSION_OVERLAY_LANGUAGE:Ljava/lang/String; = "com.samsung.android.permission.SAMSUNG_OVERLAY_LANGUAGE"

.field public static final PERMISSION_OVERLAY_THEME:Ljava/lang/String; = "com.samsung.android.permission.SAMSUNG_OVERLAY_THEME"

.field public static final PERMISSION_PLUGIN_NATIVE:Ljava/lang/String; = "com.samsung.android.permission.FEATURE_INJECTION"

.field public static final PERMISSION_SAMSUNG_OVERLAY:Ljava/lang/String; = "com.samsung.android.permission.SAMSUNG_OVERLAY_"

.field public static final PHONESTYLE_APPLICATION:Ljava/lang/String; = "applications"

.field public static final PHONESTYLE_FRAMEWORK:Ljava/lang/String; = "framework"

.field public static final PHONESTYLE_TWFRAMEWORK:Ljava/lang/String; = "twframework"

.field public static final PLUGIN_DISABLE:I = 0x3

.field public static final PLUGIN_ENABLE:I = 0x2

.field public static final PLUGIN_INSTALL:I = 0x0

.field public static final PLUGIN_UNINSTALL:I = 0x1

.field public static final PROPERTY_END_TIME:Ljava/lang/String; = "endtime"

.field public static final PROPERTY_EVENT_TITLE:Ljava/lang/String; = "myEventType"

.field public static final PROPERTY_NOTIFY_USER:Ljava/lang/String; = "notifyuser"

.field public static final PROPERTY_START_TIME:Ljava/lang/String; = "starttime"

.field public static final SHARED_PREF_FOR_THEMES:Ljava/lang/String; = "store"

.field public static final SOUND_ALARM:Ljava/lang/String; = "alarm"

.field public static final SOUND_DIAL:Ljava/lang/String; = "dial"

.field public static final SOUND_DIAL_DB_NAME:Ljava/lang/String; = "dialer_sound_theme_path"

.field public static final SOUND_HW_TOUCH:Ljava/lang/String; = "hw_touch"

.field public static final SOUND_HW_TOUCH_FILE_NAME:Ljava/lang/String; = "S_HW_Touch.ogg"

.field public static final SOUND_KEYBOARD:Ljava/lang/String; = "keyboard"

.field public static final SOUND_KEYBOARD_BACK:Ljava/lang/String; = "keyboard_back"

.field public static final SOUND_KEYBOARD_BACK_DB_NAME:Ljava/lang/String; = "backspace_key_sound_path"

.field public static final SOUND_KEYBOARD_DB_NAME:Ljava/lang/String; = "default_key_sound_path"

.field public static final SOUND_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final SOUND_RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final SOUND_TOUCH:Ljava/lang/String; = "screen_touch"

.field public static final SOUND_TOUCH_DB_NAME:Ljava/lang/String; = "theme_touch_sound"

.field public static final SOUND_TOUCH_FILE_NAME:Ljava/lang/String; = "TW_Touch.ogg"

.field public static final TABLE_NAME:Ljava/lang/String; = "featureInformation"

.field public static final THEME_FONT_SYSTEM:Ljava/lang/String; = "theme_font_system"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TYPE_INTEGER:Ljava/lang/String; = " INTEGER"

.field public static final TYPE_LANGUAGE:I = 0x1

.field public static final TYPE_TEXT:Ljava/lang/String; = " TEXT"

.field public static final TYPE_THEME:I = 0x0

.field public static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field public static final WALLPAPER_NAME:Ljava/lang/String; = "defalut.png"

.field public static final XML_FILE_PATH:Ljava/lang/String; = "/data/downloaded_fonts/downloaded_fonts.xml"

.field public static final XML_META_DATA_OVERLAY:Ljava/lang/String; = "samsung.overlay"

.field public static final XML_META_DATA_PLUGIN_NATIVE:Ljava/lang/String; = "samsung.injection"

.field public static final _ID:Ljava/lang/String; = "id"

.field public static final changeableApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final immortalApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final overlayTargetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final protectedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x29

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "com.sec.android.app.desktoplauncher"

    aput-object v2, v1, v4

    const-string/jumbo v2, "com.sec.android.app.eventnotification"

    aput-object v2, v1, v5

    const-string/jumbo v2, "com.samsung.tmowfc.wfcpref"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.sec.android.app.launcher"

    aput-object v2, v1, v7

    const-string/jumbo v2, "com.sec.android.app.FlashBarService"

    aput-object v2, v1, v8

    const-string/jumbo v2, "com.android.nfc"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.felicalock"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.app.highlightplayer"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.android.apps.tag"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.app.newtrim"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.adnroid.dreams.phototable"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.policydm"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.securitylogagent"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.SecSetupWizard"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.safetyinformation"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.app.samsungprinterservice"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.spg"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.capabilitymanager"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.wallpaperchooser"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.bst.airmessage"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.simsettingmgr"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.simcardmanagement"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.widgetapp.dualsimwidget"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.irsettings"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.app.shareaccessibilitysettings"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.google.android.marvin.talkback"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.SettingsReceiver"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.popupuireceiver"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.wallpapercropper2"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.MtpApplication"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.soundalive"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.game.gametools"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.app.galaxylabs"

    const/16 v3, 0x20

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.mimage.photoretouching"

    const/16 v3, 0x21

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.android.providers.media"

    const/16 v3, 0x22

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.slinkcloud"

    const/16 v3, 0x23

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.emergencylauncher"

    const/16 v3, 0x24

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.hongbaoassistant"

    const/16 v3, 0x25

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.firewall"

    const/16 v3, 0x26

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.bst.spamcall"

    const/16 v3, 0x27

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.app.screenrecorder"

    const/16 v3, 0x28

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/epm/PluginConstants;->changeableApps:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/epm/PluginConstants$1;

    invoke-direct {v0}, Lcom/android/server/epm/PluginConstants$1;-><init>()V

    sput-object v0, Lcom/android/server/epm/PluginConstants;->overlayTargetMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "com.android.systemui"

    aput-object v2, v1, v4

    const-string/jumbo v2, "com.samsung.android.themecenter"

    aput-object v2, v1, v5

    const-string/jumbo v2, "com.android.nfc"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.samsung.android.universalswitch"

    aput-object v2, v1, v7

    const-string/jumbo v2, "com.android.providers.media"

    aput-object v2, v1, v8

    const-string/jumbo v2, "com.android.incallui"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.android.phone"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.app.aodservice"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.launcher"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.safetyassurance"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.incallui"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.scloud"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/epm/PluginConstants;->immortalApps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "com.samsung.android.themecenter"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/epm/PluginConstants;->protectedApps:Ljava/util/ArrayList;

    return-void
.end method
