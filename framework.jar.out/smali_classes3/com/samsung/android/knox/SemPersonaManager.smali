.class public Lcom/samsung/android/knox/SemPersonaManager;
.super Ljava/lang/Object;
.source "SemPersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/SemPersonaManager$AppType;,
        Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;,
        Lcom/samsung/android/knox/SemPersonaManager$PathStrategy;,
        Lcom/samsung/android/knox/SemPersonaManager$StateManager;
    }
.end annotation


# static fields
.field public static final ACCESS_TYPE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final ACCESS_TYPE_SDCARD:Ljava/lang/String; = "sdcard"

.field private static final ADAPT_SOUND_PACKAGE_NAME:Ljava/lang/String; = "com.sec.hearingadjust"

.field private static final BBC_METADATA:Ljava/lang/String; = "com.samsung.android.knoxenabled"

.field public static final BRIDGE_COMPONENT1:Ljava/lang/String; = "com.sec.knox.bridge/com.sec.knox.bridge.activity.SwitchB2BActivity"

.field public static final BRIDGE_COMPONENT2:Ljava/lang/String; = "com.sec.knox.bridge/com.sec.knox.bridge.activity.SwitchB2BActivity2"

.field public static final BRIDGE_PKG:Ljava/lang/String; = "com.sec.knox.bridge"

.field public static final CALLER_DISPLAY_NAME:Ljava/lang/String; = "caller_display_name"

.field public static final CALLER_PHONE_NUMBER:Ljava/lang/String; = "caller_phone_number"

.field public static final CALLER_PHOTO:Ljava/lang/String; = "caller_photo"

.field public static final CONTACT_OWNER_ID:Ljava/lang/String; = "contact_owner_id"

.field public static final CONTAINER_COM_TYPE:I = 0x3

.field public static final CONTAINER_DEFAULT_TYPE:I = 0x1

.field public static final CONTAINER_LWC_TYPE:I = 0x2

.field public static final CONTAINER_TYPE_MY_KNOX:I = 0x1

.field public static final CONTAINER_TYPE_SECURE_FOLDER:I = 0x2

.field private static final DEBUG:Z = false

.field public static DEFAULT_KNOX_NAME:Ljava/lang/String; = null

.field public static final DEFAULT_SDP_ACTIVATION_TIME:I = 0x1388

.field public static final ENABLE_EULA:Ljava/lang/String; = "enable_eula"

.field public static final ERROR_CREATE_PERSONA_ADMIN_ACTIVATION_FAILED:I = -0x3f1

.field public static final ERROR_CREATE_PERSONA_ADMIN_INSTALLATION_FAILED:I = -0x3f0

.field public static final ERROR_CREATE_PERSONA_EC_MAX_PERSONA_LIMIT_REACHED:I = -0x3f7

.field public static final ERROR_CREATE_PERSONA_EMERGENCY_MODE_FAILED:I = -0x407

.field public static final ERROR_CREATE_PERSONA_FILESYSTEM_ERROR:I = -0x3f3

.field public static final ERROR_CREATE_PERSONA_GENERATE_CMK_FAILED:I = -0x40a

.field public static final ERROR_CREATE_PERSONA_HANDLER_INSTALLATION_FAILED:I = -0x3ee

.field public static final ERROR_CREATE_PERSONA_INTERNAL_ERROR:I = -0x3f6

.field public static final ERROR_CREATE_PERSONA_MAX_PERSONA_LIMIT_REACHED:I = -0x3f4

.field public static final ERROR_CREATE_PERSONA_NO_HANDLER_APK:I = -0x3ea

.field public static final ERROR_CREATE_PERSONA_NO_NAME:I = -0x3e9

.field public static final ERROR_CREATE_PERSONA_NO_PERSONA_ADMIN_APK:I = -0x3ec

.field public static final ERROR_CREATE_PERSONA_NO_PERSONA_TYPE:I = -0x3ed

.field public static final ERROR_CREATE_PERSONA_NO_SETUPWIZARD_APK:I = -0x3eb

.field public static final ERROR_CREATE_PERSONA_RUNTIME_PERMISSION_GRANT:I = -0x40b

.field public static final ERROR_CREATE_PERSONA_SECURE_FOLDER_MAX_PERSONA_LIMIT_REACHED:I = -0x3f5

.field public static final ERROR_CREATE_PERSONA_SETUPWIZARD_INSTALLATION_FAILED:I = -0x3ef

.field public static final ERROR_CREATE_PERSONA_SUB_USER_FAILED:I = -0x403

.field public static final ERROR_CREATE_PERSONA_SYSTEM_APP_INSTALLATION_FAILED:I = -0x3f2

.field public static final ERROR_CREATE_PERSONA_TIMA_PWD_KEY_FAILED:I = -0x409

.field public static final ERROR_CREATE_PERSONA_USER_INFO_INVALID:I = -0x408

.field public static final ERROR_INVAILD_CONTAINER_ID:I = -0x515

.field public static final ERROR_NO_PERSONA_SERVICE:I = -0x514

.field public static final ERROR_PERSONA_APP_INSTALLATION_FAILED:I = -0x7d1

.field public static final ERROR_REMOVE_NOT_PERSONA_OWNER:I = -0x4b3

.field public static final ERROR_REMOVE_PERSONA_FAILED:I = -0x4b1

.field public static final ERROR_REMOVE_PERSONA_NOT_EXIST:I = -0x4b2

.field public static final ERROR_SWITCH_EQUALS_CURRENT_USER:I = -0x451

.field public static final ERROR_SWITCH_INVALID_PERSONA_ID:I = -0x44c

.field public static final ERROR_SWITCH_OUTSIDE_PERSONA_GROUP:I = -0x452

.field public static final ERROR_SWITCH_PERSONA_FILESYSTEM:I = -0x44f

.field public static final ERROR_SWITCH_PERSONA_HANDLER_NOT_RESPONDING:I = -0x450

.field public static final ERROR_SWITCH_PERSONA_LOCKED:I = -0x44e

.field public static final ERROR_SWITCH_PERSONA_NOT_INITIALIZED:I = -0x44d

.field public static final FLAG_ADMIN_TYPE_APK:I = 0x10

.field public static final FLAG_ADMIN_TYPE_NONE:I = 0x40

.field public static final FLAG_ADMIN_TYPE_PACKAGENAME:I = 0x20

.field private static final FLAG_BASE:I = 0x1

.field public static final FLAG_BBC_CONTAINER:I = 0x1000

.field public static final FLAG_CREATOR_SELF_DESTROY:I = 0x8

.field public static final FLAG_ECRYPT_FILESYSTEM:I = 0x2

.field public static final FLAG_EC_ENABLED:I = 0x10000

.field public static final FLAG_KIOSK_ENABLED:I = 0x400

.field public static final FLAG_LIGHT_WEIGHT_CONTAINER:I = 0x200

.field public static final FLAG_MIGRATION:I = 0x100

.field public static final FLAG_PURE_ENABLED:I = 0x800

.field public static final FLAG_SECURE_FOLDER_CONTAINER:I = 0x2000

.field public static final FLAG_TIMA_STORAGE:I = 0x4

.field public static final FLAG_USER_MANAGED_CONTAINER:I = 0x80

.field public static final FOLDERCONTAINER_PKG_NAME:Ljava/lang/String; = "com.sec.knox.foldercontainer"

.field public static final INTENT_ACCESS_EXT_SDCARD:Ljava/lang/String; = "com.sec.knox.container.access.extsdcard"

.field public static final INTENT_ACTION_CONTAINER_REMOVAL_STARTED:Ljava/lang/String; = "com.sec.knox.container.action.containerremovalstarted"

.field public static final INTENT_ACTION_LAUNCH_INFO:Ljava/lang/String; = "com.sec.knox.container.action.launchinfo"

.field public static final INTENT_ACTION_NFC_POLICY:Ljava/lang/String; = "com.sec.knox.container.action.nfc.policy"

.field public static final INTENT_ACTION_OBSERVER:Ljava/lang/String; = "com.sec.knox.container.action.observer"

.field public static final INTENT_ACTION_SDP_TIMEOUT:Ljava/lang/String; = "com.sec.knox.container.INTENT_KNOX_SDP_ACTIVATED"

.field public static final INTENT_CATEGORY_OBSERVER_CONTAINERID:Ljava/lang/String; = "com.sec.knox.container.category.observer.containerid"

.field public static final INTENT_CATEGORY_OBSERVER_ONATTRIBUTECHANGE:Ljava/lang/String; = "com.sec.knox.container.category.observer.onattributechange"

.field public static final INTENT_CATEGORY_OBSERVER_ONKEYGUARDSTATECHANGED:Ljava/lang/String; = "com.sec.knox.container.category.observer.onkeyguardstatechanged"

.field public static final INTENT_CATEGORY_OBSERVER_ONPERSONASWITCH:Ljava/lang/String; = "com.sec.knox.container.category.observer.onpersonaswitch"

.field public static final INTENT_CATEGORY_OBSERVER_ONSESSIONEXPIRED:Ljava/lang/String; = "com.sec.knox.container.category.observer.onsessionexpired"

.field public static final INTENT_CATEGORY_OBSERVER_ONSTATECHANGE:Ljava/lang/String; = "com.sec.knox.container.category.observer.onstatechange"

.field public static final INTENT_CONTAINER_NEED_RESTART:Ljava/lang/String; = "com.sec.knox.container.need.restart"

.field public static final INTENT_EXTRA_CONTAINER_ID:Ljava/lang/String; = "containerId"

.field public static final INTENT_EXTRA_OBSERVER_ATTRIBUTE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.attribute"

.field public static final INTENT_EXTRA_OBSERVER_ATTRIBUTE_STATE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.attribute.state"

.field public static final INTENT_EXTRA_OBSERVER_KEYGUARDSTATE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.keyguardstate"

.field public static final INTENT_EXTRA_OBSERVER_NEWSTATE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.newstate"

.field public static final INTENT_EXTRA_OBSERVER_PREVIOUSSTATE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.previousstate"

.field public static final INTENT_EXTRA_SOURCE:Ljava/lang/String; = "source"

.field public static final INTENT_EXTRA_SOURCE_SBA:I = 0x1

.field public static final INTENT_EXTRA_SOURCE_SBA_BLACKLIST:I = 0x2

.field public static final INTENT_EXTRA_SOURCE_WHITELIST:I = 0x0

.field public static final INTENT_EXTRA_UPDATED_VALUE:Ljava/lang/String; = "com.sec.knox.container.extra.updated.value"

.field public static final INTENT_PERMISSION_LAUNCH_INFO:Ljava/lang/String; = "com.samsung.container.LAUNCH_INFO"

.field public static final INTENT_PERMISSION_OBSERVER:Ljava/lang/String; = "com.samsung.container.OBSERVER"

.field public static final INTENT_PERMISSION_RECEIVE_KNOX_APPS_UPDATE:Ljava/lang/String; = "com.sec.knox.container.permission.RECEIVE_KNOX_APPS_UPDATE"

.field private static final KNOX_SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.containeragent2"

.field public static final KNOX_SWITCH1_PKG:Ljava/lang/String; = "com.sec.knox.switchknoxI"

.field public static final KNOX_SWITCH2_PKG:Ljava/lang/String; = "com.sec.knox.switchknoxII"

.field public static final KNOX_SWITCHER_PKG:Ljava/lang/String; = "com.sec.knox.switcher"

.field public static final KNOX_SWITCH_1_PKG:Ljava/lang/String; = "com.sec.knox.switchknoxI"

.field public static final KNOX_SWITCH_2_PKG:Ljava/lang/String; = "com.sec.knox.switchknoxII"

.field public static final KNOX_SWITCH_COMPONENT1:Ljava/lang/String; = "com.sec.knox.switcher/com.sec.knox.switcher.SwitchB2bActivityI"

.field public static final KNOX_SWITCH_COMPONENT2:Ljava/lang/String; = "com.sec.knox.switcher/com.sec.knox.switcher.SwitchB2bActivityII"

.field public static final MAX_ACTIVE_BUTTONS_ZERO_FOR_KIOSK:I = 0xa

.field public static final MAX_BBC_ID:I = 0xc7

.field public static final MAX_PERSONA_ALLOWED:I = 0x2

.field public static final MAX_PERSONA_ALLOWED_SECURE_FOLDER:I = 0x1

.field public static final MAX_PERSONA_ID:I = 0xc8

.field public static final MAX_SECURE_FOLDER_ID:I = 0xa0

.field private static final MESSAGE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.shortcutsms"

.field private static final METADATA_VR_APPLICATION_MODE:Ljava/lang/String; = "com.samsung.android.vr.application.mode"

.field private static final METADATA_VR_MODE_DUAL:Ljava/lang/String; = "dual"

.field private static final METADATA_VR_MODE_VR_ONLY:Ljava/lang/String; = "vr_only"

.field public static final MINIMUM_SCREEN_OFF_TIMEOUT:I = 0x1388

.field public static final MIN_BBC_ID:I = 0xc3

.field public static final MIN_PERSONA_ID:I = 0x64

.field public static final MIN_SECURE_FOLDER_ID:I = 0x96

.field public static final MOVE_TO_APP_TYPE_GALLERY:I = 0x1

.field public static final MOVE_TO_APP_TYPE_MUSIC:I = 0x3

.field public static final MOVE_TO_APP_TYPE_MYFILES:I = 0x4

.field public static final MOVE_TO_APP_TYPE_VIDEO:I = 0x2

.field public static final MOVE_TO_CONTAINER_TYPE_ENTERPRISE_CONTAINER:I = 0x3e8

.field public static final MOVE_TO_CONTAINER_TYPE_KNOX:I = 0x3e9

.field public static final MOVE_TO_CONTAINER_TYPE_SECURE_FOLDER:I = 0x3ea

.field public static final MOVE_TO_PERSONAL_TYPE_KNOX:I = 0x3ec

.field public static final MOVE_TO_PERSONAL_TYPE_SECURE_FOLDER:I = 0x3eb

.field public static final NOTIFICATION_LIST_FOR_KIOSK:Ljava/lang/String; = "Wifi;MultiWindow;Location;SilentMode;AutoRotate;Bluetooth;NetworkBooster;MobileData;AirplaneMode;Nfc;SmartStay;PowerSaving;TorchLight;WiFiHotspot;"

.field public static final NOTIFICATION_LIST_FOR_KIOSK_M:Ljava/lang/String; = "Wifi,Location,SilentMode,RotationLock,Bluetooth,MobileData,PowerSaving,AirplaneMode,Flashlight,WifiHotspot,SmartStay,Nfc"

.field public static final PERMISSION_KEYGUARD_ACCESS:Ljava/lang/String; = "com.sec.knox.container.keyguard.ACCESS"

.field public static final PERMISSION_PERIPHERAL_POLICY_UPDATE:Ljava/lang/String; = "com.sec.knox.container.peripheral.POLICY_UPDATE"

.field private static final PERSONAL_HOME_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.switcher"

.field public static final PERSONA_ID:Ljava/lang/String; = "persona_id"

.field public static final PERSONA_POLICY_SERVICE:Ljava/lang/String; = "persona_policy"

.field public static final PERSONA_TIMA_ECRPTFS_INDEX1:I = 0x64

.field public static final PERSONA_TIMA_ECRPTFS_INDEX2:I = 0x66

.field public static final PERSONA_TIMA_PASSWORDHINT_INDEX:I = 0x68

.field public static final PERSONA_TIMA_PASSWORD_INDEX1:I = 0x65

.field public static final PERSONA_TIMA_PASSWORD_INDEX2:I = 0x67

.field public static final PERSONA_VALIDATOR_HANDLER:Ljava/lang/String; = "persona_validator"

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.shortcutsms"

.field public static final REMOVE_OP_SUCCESS:I = 0x0

.field public static SECOND_KNOX_NAME:Ljava/lang/String; = null

.field public static SECURE_FOLDER_NAME:Ljava/lang/String; = null

.field public static final SETUP_WIZARD_PKG_NAME:Ljava/lang/String; = "com.sec.knox.setup"

.field static final SHORTCUT_FILTER:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String; = null

.field public static final TIMA_COMPROMISED_TYPE1:I = 0x1000c

.field public static final TIMA_COMPROMISED_TYPE2:I = 0x1000d

.field public static final TIMA_COMPROMISED_TYPE3:I = 0x1000e

.field public static final TIMA_COMPROMISED_TYPE4:I = 0x1000f

.field public static final TIMA_VALIDATION_SUCCESS:I

.field public static final TYPE_B2B_KNOX:I

.field public static final approvedPackages:[Ljava/lang/String;

.field public static final chinaStorePackages:[Ljava/lang/String;

.field public static final excludedPackages:[Ljava/lang/String;

.field public static final excludedPackagesForJPN:[Ljava/lang/String;

.field public static final excludedPackagesForMyKnox:[Ljava/lang/String;

.field private static mBTSecureManagerSync:Ljava/lang/Object;

.field private static mKnoxInfo:Landroid/os/Bundle;

.field private static mMoveToInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static m_bIsKnoxInfoInitialized:Z

.field public static final mdmPackages:[Ljava/lang/String;

.field private static pathstrategy:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/knox/SemPersonaManager$PathStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private static personaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private static personaPolicyMgr:Landroid/os/PersonaPolicyManager;

.field private static rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;


# instance fields
.field private NFCblackList:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/samsung/android/knox/ISemPersonaManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 465
    const-string/jumbo v0, "KNOX"

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->DEFAULT_KNOX_NAME:Ljava/lang/String;

    .line 471
    const-string/jumbo v0, "KNOX II"

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->SECOND_KNOX_NAME:Ljava/lang/String;

    .line 475
    const-string/jumbo v0, "secure-folder"

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->SECURE_FOLDER_NAME:Ljava/lang/String;

    .line 505
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mBTSecureManagerSync:Ljava/lang/Object;

    .line 538
    const-string/jumbo v0, "SemPersonaManager"

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    .line 542
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    .line 543
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mMoveToInfo:Ljava/util/ArrayList;

    .line 544
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 545
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 546
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    .line 555
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 556
    const-string/jumbo v1, "com.sec.knox.shortcutsms"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.sec.knox.shortcutsms"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.sec.knox.switcher"

    aput-object v1, v0, v5

    .line 557
    const-string/jumbo v1, "com.sec.hearingadjust"

    aput-object v1, v0, v6

    const-string/jumbo v1, "com.sec.knox.containeragent2"

    aput-object v1, v0, v7

    .line 555
    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->SHORTCUT_FILTER:[Ljava/lang/String;

    .line 587
    sput-boolean v3, Lcom/samsung/android/knox/SemPersonaManager;->m_bIsKnoxInfoInitialized:Z

    .line 1878
    new-array v0, v4, [Ljava/lang/String;

    .line 1879
    const-string/jumbo v1, "com.samsung.android.voc"

    aput-object v1, v0, v3

    .line 1878
    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->excludedPackagesForMyKnox:[Ljava/lang/String;

    .line 1883
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 1884
    const-string/jumbo v1, "com.facebook.katana"

    aput-object v1, v0, v3

    .line 1885
    const-string/jumbo v1, "com.facebook.orca"

    aput-object v1, v0, v4

    .line 1886
    const-string/jumbo v1, "com.instagram.android"

    aput-object v1, v0, v5

    .line 1887
    const-string/jumbo v1, "com.twitter.android"

    aput-object v1, v0, v6

    .line 1888
    const-string/jumbo v1, "jp.gamegift"

    aput-object v1, v0, v7

    .line 1883
    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->excludedPackagesForJPN:[Ljava/lang/String;

    .line 1892
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 1893
    const-string/jumbo v1, "com.baidu.appsearch"

    aput-object v1, v0, v3

    .line 1894
    const-string/jumbo v1, "com.qihoo.appstore"

    aput-object v1, v0, v4

    .line 1895
    const-string/jumbo v1, "com.tencent.android.qqdownloader"

    aput-object v1, v0, v5

    .line 1896
    const-string/jumbo v1, "com.wandoujia.phoenix2"

    aput-object v1, v0, v6

    .line 1897
    const-string/jumbo v1, "com.dragon.android.pandaspace"

    aput-object v1, v0, v7

    .line 1898
    const-string/jumbo v1, "com.android.vending"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1892
    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->chinaStorePackages:[Ljava/lang/String;

    .line 1902
    const/16 v0, 0x69

    new-array v0, v0, [Ljava/lang/String;

    .line 1903
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    const-string/jumbo v2, "com.android.mms"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getFloatingPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1904
    const-string/jumbo v1, "com.android.settings"

    aput-object v1, v0, v4

    .line 1905
    const-string/jumbo v1, "com.sec.knox.knoxsetupwizardclient"

    aput-object v1, v0, v5

    .line 1906
    const-string/jumbo v1, "com.sec.knox.containeragent2"

    aput-object v1, v0, v6

    .line 1907
    const-string/jumbo v1, "com.sec.knox.setupwizardstub"

    aput-object v1, v0, v7

    .line 1908
    const-string/jumbo v1, "com.sec.chaton"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1909
    const-string/jumbo v1, "com.sec.pcw"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1910
    const-string/jumbo v1, "com.sec.knox.shortcutsms"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1911
    const-string/jumbo v1, "com.sec.knox.switcher"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1912
    const-string/jumbo v1, "com.sec.watchon.phone"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1913
    const-string/jumbo v1, "com.sec.android.automotive.drivelink"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1914
    const-string/jumbo v1, "com.samsung.android.app.lifetimes"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 1915
    const-string/jumbo v1, "com.sec.android.app.shealth"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 1916
    const-string/jumbo v1, "com.sec.android.app.voicenote"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 1917
    const-string/jumbo v1, "com.sec.android.app.kidshome"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 1918
    const-string/jumbo v1, "com.sec.knox.app.container"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 1919
    const-string/jumbo v1, "com.sec.knox.shortcuti"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 1920
    const-string/jumbo v1, "com.sec.knox.containeragent"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 1921
    const-string/jumbo v1, "com.sec.android.app.samsungapps"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 1922
    const-string/jumbo v1, "tv.peel.smartremote"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 1923
    const-string/jumbo v1, "com.skt.prod.phonebook"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 1924
    const-string/jumbo v1, "com.sec.enterprise.knox.express"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 1925
    const-string/jumbo v1, "com.google.android.apps.walletnfcrel"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 1926
    const-string/jumbo v1, "com.samsung.android.voc"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 1927
    const-string/jumbo v1, "com.skt.tservice"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 1928
    const-string/jumbo v1, "com.sktelecom.minit"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 1929
    const-string/jumbo v1, "com.skt.prod.dialer"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 1930
    const-string/jumbo v1, "com.skt.skaf.A000VODBOX"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 1931
    const-string/jumbo v1, "com.skt.skaf.OA00050017"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 1932
    const-string/jumbo v1, "com.skt.skaf.A000Z00040"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 1933
    const-string/jumbo v1, "com.skt.skaf.OA00026910"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 1934
    const-string/jumbo v1, "com.skt.skaf.l001mtm091"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 1935
    const-string/jumbo v1, "com.skt.prod.phonebook"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 1936
    const-string/jumbo v1, "com.skt.smartbill"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 1937
    const-string/jumbo v1, "com.skt.tbagplus"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 1938
    const-string/jumbo v1, "com.sktelecom.tguard"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 1939
    const-string/jumbo v1, "com.skt.tdatacoupon"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 1940
    const-string/jumbo v1, "com.skb.btvmobile"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 1941
    const-string/jumbo v1, "com.iloen.melon"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 1942
    const-string/jumbo v1, "com.nate.android.portalmini"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 1943
    const-string/jumbo v1, "com.tms"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 1944
    const-string/jumbo v1, "com.skmc.okcashbag.home_google"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 1945
    const-string/jumbo v1, "com.elevenst"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 1946
    const-string/jumbo v1, "com.elevenst.deals"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 1947
    const-string/jumbo v1, "com.moent.vas"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 1948
    const-string/jumbo v1, "com.skmnc.gifticon"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 1949
    const-string/jumbo v1, "com.skt.tmaphot"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 1950
    const-string/jumbo v1, "com.skplanet.mbuzzer"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 1951
    const-string/jumbo v1, "com.skt.tgift"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 1952
    const-string/jumbo v1, "com.sktelecom.tsmartpay"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 1953
    const-string/jumbo v1, "com.cyworld.camera"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 1954
    const-string/jumbo v1, "com.kt.android.showtouch"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 1955
    const-string/jumbo v1, "com.kt.wificm"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 1956
    const-string/jumbo v1, "com.ktshow.cs"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 1957
    const-string/jumbo v1, "com.kt.olleh.storefront"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 1958
    const-string/jumbo v1, "com.kth.kshop"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 1959
    const-string/jumbo v1, "com.show.greenbill"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 1960
    const-string/jumbo v1, "com.estsoft.alyac"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 1961
    const-string/jumbo v1, "com.kt.accessory"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 1962
    const-string/jumbo v1, "kt.navi"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 1963
    const-string/jumbo v1, "com.olleh.android.oc2"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 1964
    const-string/jumbo v1, "com.kt.ollehfamilybox"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 1965
    const-string/jumbo v1, "com.kt.otv"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 1966
    const-string/jumbo v1, "com.olleh.webtoon"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 1967
    const-string/jumbo v1, "com.kt.shodoc"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 1968
    const-string/jumbo v1, "com.ktmusic.geniemusic"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 1969
    const-string/jumbo v1, "com.ktcs.whowho"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 1970
    const-string/jumbo v1, "com.kt.apptong"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 1971
    const-string/jumbo v1, "com.mtelo.ktAPP"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    .line 1972
    const-string/jumbo v1, "com.kt.bellringolleh"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    .line 1973
    const-string/jumbo v1, "com.kt.mpay"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    .line 1974
    const-string/jumbo v1, "com.kt.aljjapackplus"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    .line 1975
    const-string/jumbo v1, "com.lguplus.appstore"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    .line 1976
    const-string/jumbo v1, "com.uplus.onphone"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    .line 1977
    const-string/jumbo v1, "com.lguplus.mobile.cs"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    .line 1978
    const-string/jumbo v1, "lg.uplusbox"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    .line 1979
    const-string/jumbo v1, "com.lgu.app.appbundle"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    .line 1980
    const-string/jumbo v1, "lgt.call"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    .line 1981
    const-string/jumbo v1, "com.mnet.app"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    .line 1982
    const-string/jumbo v1, "com.lguplus.usimsvcm"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    .line 1983
    const-string/jumbo v1, "com.lguplus.navi"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    .line 1984
    const-string/jumbo v1, "com.lguplus.paynow"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    .line 1985
    const-string/jumbo v1, "com.uplus.movielte"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    .line 1986
    const-string/jumbo v1, "com.estsoft.alyac"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    .line 1987
    const-string/jumbo v1, "com.lguplus.ltealive"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    .line 1988
    const-string/jumbo v1, "com.uplus.ipagent"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    .line 1989
    const-string/jumbo v1, "com.lguplus.homeiot"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    .line 1990
    const-string/jumbo v1, "com.uplus.baseballhdtv"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    .line 1991
    const-string/jumbo v1, "com.lgu"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    .line 1992
    const-string/jumbo v1, "com.lgt.tmoney"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    .line 1993
    const-string/jumbo v1, "com.lguplus.smartotp"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    .line 1994
    const-string/jumbo v1, "net.daum.android.map"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    .line 1995
    const-string/jumbo v1, "com.sds.mms.ui"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    .line 1996
    const-string/jumbo v1, "com.navitime.local.naviwalk"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    .line 1997
    const-string/jumbo v1, "jp.id_credit_sp.android"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    .line 1998
    const-string/jumbo v1, "jp.id_credit_sp.android.devappli"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    .line 1999
    const-string/jumbo v1, "com.nttdocomo.android.dpoint"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    .line 2000
    const-string/jumbo v1, "com.nttdocomo.android.voicetranslation"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    .line 2001
    const-string/jumbo v1, "com.nttdocomo.android.moneyrecord"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    .line 2002
    const-string/jumbo v1, "com.kddi.android.videopass"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    .line 2003
    const-string/jumbo v1, "com.nttdocomo.android.photocollection"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    .line 2004
    const-string/jumbo v1, "com.android.systemui"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    .line 2005
    const-string/jumbo v1, "com.sec.sprint.wfcstub"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    .line 2006
    const-string/jumbo v1, "com.sec.sprint.wfc"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    .line 2007
    const-string/jumbo v1, "com.oculus.horizon"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    .line 1902
    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->excludedPackages:[Ljava/lang/String;

    .line 2011
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    .line 2012
    const-string/jumbo v1, "com.android.chrome"

    aput-object v1, v0, v3

    .line 2013
    const-string/jumbo v1, "com.google.android.apps"

    aput-object v1, v0, v4

    .line 2014
    const-string/jumbo v1, "com.google.android.apps.plus"

    aput-object v1, v0, v5

    .line 2015
    const-string/jumbo v1, "com.google.android.apps.docs"

    aput-object v1, v0, v6

    .line 2016
    const-string/jumbo v1, "com.google.android.gm"

    aput-object v1, v0, v7

    .line 2017
    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 2018
    const-string/jumbo v1, "com.google.android.talk"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 2019
    const-string/jumbo v1, "com.google.android.apps.maps"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 2020
    const-string/jumbo v1, "com.google.android.apps.books"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 2021
    const-string/jumbo v1, "com.google.android.play.games"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 2022
    const-string/jumbo v1, "com.google.android.music"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 2023
    const-string/jumbo v1, "com.google.android.videos"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 2024
    const-string/jumbo v1, "com.google.android.apps.magazines"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 2025
    const-string/jumbo v1, "com.google.android.apps.photos"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 2026
    const-string/jumbo v1, "com.google.android.youtube"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 2027
    const-string/jumbo v1, "com.samsung.android.app.memo"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 2028
    const-string/jumbo v1, "com.sec.keystringscreen"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 2029
    const-string/jumbo v1, "com.infraware.polarisoffice5"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 2030
    const-string/jumbo v1, "com.microsoft.office.excel"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 2031
    const-string/jumbo v1, "com.microsoft.office.powerpoint"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 2032
    const-string/jumbo v1, "com.microsoft.office.word"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 2033
    const-string/jumbo v1, "com.hancom.androidpc.viewer.launcher"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 2034
    const-string/jumbo v1, "com.hancom.office.editor"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 2035
    const-string/jumbo v1, "com.whatsapp"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 2036
    const-string/jumbo v1, "com.tencent.mm"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 2037
    const-string/jumbo v1, "com.facebook.katana"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 2038
    const-string/jumbo v1, "com.facebook.orca"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 2039
    const-string/jumbo v1, "com.instagram.android"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 2040
    const-string/jumbo v1, "com.skype.raider"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 2041
    const-string/jumbo v1, "com.microsoft.office.onenote"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 2042
    const-string/jumbo v1, "com.microsoft.skydrive"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 2011
    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->approvedPackages:[Ljava/lang/String;

    .line 2046
    new-array v0, v7, [Ljava/lang/String;

    .line 2047
    const-string/jumbo v1, "com.samsung.mdmtest1"

    aput-object v1, v0, v3

    .line 2048
    const-string/jumbo v1, "com.samsung.mdmtest2"

    aput-object v1, v0, v4

    .line 2049
    const-string/jumbo v1, "com.samsung.edmtest"

    aput-object v1, v0, v5

    .line 2050
    const-string/jumbo v1, "com.samsung.containertool"

    aput-object v1, v0, v6

    .line 2046
    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mdmPackages:[Ljava/lang/String;

    .line 4028
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->pathstrategy:Landroid/util/SparseArray;

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ISemPersonaManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/knox/ISemPersonaManager;

    .prologue
    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4161
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.google.android.gms.smartdevice.setup.d2d:nfc2bt_bootstrap"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4162
    const-string/jumbo v1, "com.google.android.gms.auth.setup.d2d:nfc2bt_bootstrap"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4161
    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->NFCblackList:[Ljava/lang/String;

    .line 625
    iput-object p2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    .line 626
    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    .line 624
    return-void
.end method

.method private static containerExists(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "personaId"    # I

    .prologue
    const/4 v5, 0x0

    .line 2948
    const-string/jumbo v3, "0"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2949
    return v5

    .line 2951
    :cond_0
    const-string/jumbo v0, ":"

    .line 2952
    .local v0, "SEPARATOR":Ljava/lang/String;
    const-string/jumbo v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2953
    .local v1, "arr":[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 2954
    aget-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2955
    const/4 v3, 0x1

    return v3

    .line 2953
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2959
    :cond_2
    return v5
.end method

.method public static exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 1804
    if-nez p1, :cond_0

    .line 1805
    return-object v5

    .line 1808
    :cond_0
    const/4 v3, 0x0

    .line 1812
    .local v3, "ret":Landroid/os/Bundle;
    :try_start_0
    const-string/jumbo v5, "RequestProxy"

    const-string/jumbo v6, "action"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1813
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getRCPManager(Landroid/content/Context;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v2

    .line 1815
    .local v2, "rcpm":Lcom/samsung/android/knox/SemRemoteContentManager;
    if-eqz v2, :cond_1

    .line 1816
    const/4 v5, 0x0

    invoke-virtual {v2, p0, v5, p1}, Lcom/samsung/android/knox/SemRemoteContentManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 1836
    .end local v2    # "rcpm":Lcom/samsung/android/knox/SemRemoteContentManager;
    .end local v3    # "ret":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-object v3

    .line 1819
    .restart local v3    # "ret":Landroid/os/Bundle;
    :cond_2
    const-string/jumbo v5, "MoveTo"

    const-string/jumbo v6, "action"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1820
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1822
    .local v4, "ret":Landroid/os/Bundle;
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    .end local v3    # "ret":Landroid/os/Bundle;
    const-string/jumbo v5, "action.com.sec.knox.container.exchangeData"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1823
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1824
    const-string/jumbo v5, "launchFromSemPersonaManager"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1825
    const-string/jumbo v5, "com.samsung.knox.rcp.components"

    .line 1826
    const-string/jumbo v6, "com.sec.knox.bridge.operations.ExchangeDataReceiver"

    .line 1825
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1827
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1829
    const-string/jumbo v5, "result"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .end local v4    # "ret":Landroid/os/Bundle;
    .local v3, "ret":Landroid/os/Bundle;
    goto :goto_0

    .line 1832
    .end local v1    # "intent":Landroid/content/Intent;
    .local v3, "ret":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 1833
    .end local v3    # "ret":Landroid/os/Bundle;
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1832
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "ret":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "ret":Landroid/os/Bundle;
    .local v3, "ret":Landroid/os/Bundle;
    goto :goto_1
.end method

.method public static getBBCBadgeIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "info"    # Landroid/content/pm/ActivityInfo;
    .param p1, "userId"    # I

    .prologue
    .line 3997
    const/4 v1, 0x0

    .line 3999
    .local v1, "drw":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v7, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 4000
    .local v5, "metadata":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    const-string/jumbo v7, "com.samsung.android.knoxenabled"

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4003
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v0

    .line 4005
    .local v0, "appPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    iget-object v7, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationIconFromDb(Ljava/lang/String;I)[B

    move-result-object v3

    .line 4007
    .local v3, "imageData":[B
    if-eqz v3, :cond_1

    .line 4008
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4010
    .local v4, "is":Ljava/io/ByteArrayInputStream;
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 4011
    .local v6, "typedValue":Landroid/util/TypedValue;
    const/4 v7, 0x0

    iput v7, v6, Landroid/util/TypedValue;->density:I

    .line 4012
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v7, v6, v4, v8}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4014
    .local v1, "drw":Landroid/graphics/drawable/Drawable;
    sget-object v7, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "EDM:ApplicationIcon got from EDM database "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4015
    return-object v1

    .line 4018
    .end local v0    # "appPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    .end local v1    # "drw":Landroid/graphics/drawable/Drawable;
    .end local v3    # "imageData":[B
    .end local v4    # "is":Ljava/io/ByteArrayInputStream;
    .end local v6    # "typedValue":Landroid/util/TypedValue;
    :catch_0
    move-exception v2

    .line 4019
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "EDM: Get Icon EX: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4024
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v1
.end method

.method public static getBbcEnabled()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3961
    const-string/jumbo v3, "sys.knox.bbcid"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3962
    .local v2, "value":Ljava/lang/String;
    const/16 v1, -0x2710

    .line 3969
    .local v1, "id":I
    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3974
    :cond_0
    :goto_0
    return v1

    .line 3970
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 3972
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static getFloatingPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "mFloatingConfig"    # Ljava/lang/String;
    .param p1, "mDefaultPkgName"    # Ljava/lang/String;

    .prologue
    .line 1868
    move-object v1, p1

    .line 1870
    .local v1, "mPkgName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1874
    :goto_0
    return-object v1

    .line 1871
    :catch_0
    move-exception v0

    .line 1872
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    .locals 4

    .prologue
    .line 1378
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 1379
    .local v1, "mKnoxInfo":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 1381
    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    if-eqz v1, :cond_0

    .line 1382
    const-string/jumbo v2, "2.0"

    const-string/jumbo v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1384
    const-string/jumbo v2, "13"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1385
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .line 1424
    .end local v0    # "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_0
    :goto_0
    return-object v0

    .line 1386
    .restart local v0    # "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_1
    const-string/jumbo v2, "13"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1387
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_1_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    goto :goto_0

    .line 1388
    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_2
    const-string/jumbo v2, "13"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1389
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    goto :goto_0

    .line 1390
    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_3
    const-string/jumbo v2, "13"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 1391
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    goto :goto_0

    .line 1392
    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_4
    const-string/jumbo v2, "13"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 1393
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    goto :goto_0

    .line 1394
    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_5
    const-string/jumbo v2, "13"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    .line 1395
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    goto :goto_0

    .line 1396
    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_6
    const-string/jumbo v2, "13"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    .line 1397
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    goto :goto_0

    .line 1398
    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_7
    const-string/jumbo v2, "13"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    .line 1399
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    goto :goto_0

    .line 1400
    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_8
    const-string/jumbo v2, "13"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_9

    .line 1401
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    goto :goto_0

    .line 1402
    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_9
    const-string/jumbo v2, "13"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_a

    .line 1403
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_2:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    goto :goto_0

    .line 1404
    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_a
    const-string/jumbo v2, "13"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_b

    .line 1405
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    goto/16 :goto_0

    .line 1406
    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_b
    const-string/jumbo v2, "13"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_c

    .line 1407
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    goto/16 :goto_0

    .line 1408
    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_c
    const-string/jumbo v2, "13"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_d

    .line 1409
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    goto/16 :goto_0

    .line 1410
    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_d
    const-string/jumbo v2, "13"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_e

    .line 1411
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    goto/16 :goto_0

    .line 1412
    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_e
    const-string/jumbo v2, "13"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    .line 1413
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_8_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    goto/16 :goto_0

    .line 1415
    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_f
    const-string/jumbo v2, "1.0"

    const-string/jumbo v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1416
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mKnoxInfo returns 1.0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_1_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    goto/16 :goto_0

    .line 1419
    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_10
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mKnoxInfo is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_NONE:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .local v0, "containerVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    goto/16 :goto_0
.end method

.method public static getKnoxInfo()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 1183
    const-class v3, Lcom/samsung/android/knox/SemPersonaManager;

    monitor-enter v3

    .line 1184
    :try_start_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 1185
    const/4 v1, 0x0

    .line 1186
    .local v1, "version":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sput-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1189
    :try_start_1
    const-string/jumbo v2, "ro.config.knox"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1191
    .local v1, "version":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1200
    :cond_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    :goto_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isSupportCallerInfo"

    const-string/jumbo v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v3

    .line 1210
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v2

    .line 1192
    :cond_2
    :try_start_2
    const-string/jumbo v2, "v30"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1193
    const-string/jumbo v1, "2.0"

    .line 1198
    :cond_3
    :goto_2
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1203
    :catch_0
    move-exception v0

    .line 1204
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1206
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1183
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1194
    :cond_4
    :try_start_4
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1195
    const-string/jumbo v1, "1.0"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1715
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 1716
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .line 1720
    :cond_0
    :try_start_0
    const-string/jumbo v1, "2.0"

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "version"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1721
    const-string/jumbo v1, "isSupportMoveTo"

    invoke-static {p0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1727
    :cond_1
    :goto_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v1

    .line 1723
    :catch_0
    move-exception v0

    .line 1724
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 16
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "req"    # Ljava/lang/String;

    .prologue
    .line 1520
    const-class v13, Lcom/samsung/android/knox/SemPersonaManager;

    monitor-enter v13

    .line 1521
    const/4 v11, 0x0

    .line 1523
    .local v11, "userid":I
    :try_start_0
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v12, :cond_0

    .line 1524
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .line 1527
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    .line 1531
    :try_start_1
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "userId"

    invoke-virtual {v12, v14, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1532
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "checkVersion"

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1534
    sget-boolean v12, Lcom/samsung/android/knox/SemPersonaManager;->m_bIsKnoxInfoInitialized:Z

    if-nez v12, :cond_3

    .line 1535
    const/16 v12, 0x64

    if-lt v11, v12, :cond_1

    .line 1536
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isKnoxMode"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v7

    .line 1538
    .local v7, "lService":Landroid/sec/enterprise/IEDMProxy;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-interface {v7, v11, v12}, Landroid/sec/enterprise/IEDMProxy;->isPackageAllowedToAccessExternalSdcard(II)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 1539
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isBlockExternalSD"

    const-string/jumbo v15, "false"

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    :goto_0
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isBlockBluetoothMenu"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isSamsungAccountBlocked"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    .end local v7    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_1
    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1548
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isBlockExternalSD"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1552
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isKioskModeEnabled"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    :goto_1
    const/4 v12, 0x1

    sput-boolean v12, Lcom/samsung/android/knox/SemPersonaManager;->m_bIsKnoxInfoInitialized:Z

    .line 1561
    :cond_3
    const-string/jumbo v12, "true"

    sget-object v14, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v15, "isKioskModeEnabled"

    invoke-virtual {v14, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 1562
    const-string/jumbo v12, "isSupportMoveTo"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1563
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    move-object/from16 v0, p0

    invoke-static {v0, v12, v11}, Lcom/samsung/android/knox/SemPersonaManager;->setMoveToKnoxInfo(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 1567
    :cond_4
    const-string/jumbo v12, "isKnoxModeActive"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1568
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v12

    const/16 v14, 0x64

    if-lt v12, v14, :cond_12

    .line 1569
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isKnoxModeActive"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    :cond_5
    :goto_2
    const-string/jumbo v12, "isKioskModeEnabled"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1576
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 1577
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isKioskModeEnabled"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    :cond_6
    :goto_3
    const-string/jumbo v12, "isSecureFolderExist"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1584
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderExist(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 1585
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isSecureFolderExist"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    :cond_7
    :goto_4
    const-string/jumbo v12, "isSmartSwitchBnRAvailable"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1591
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->isMyknoxExist(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 1592
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isMyknoxExist"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    :goto_5
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderExist(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 1597
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isSecureFolderExist"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    :cond_8
    :goto_6
    const-string/jumbo v12, "getContainerLabel"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1605
    const/4 v3, 0x0

    .line 1606
    .local v3, "containerName":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 1607
    .local v8, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v8, :cond_9

    .line 1609
    :try_start_2
    iget-object v12, v8, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v12, v11}, Lcom/samsung/android/knox/ISemPersonaManager;->getContainerName(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 1614
    .end local v3    # "containerName":Ljava/lang/String;
    :cond_9
    :goto_7
    :try_start_3
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "getContainerLabel"

    invoke-virtual {v12, v14, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    .end local v8    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_a
    const-string/jumbo v12, "getContainerAppIcon"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1619
    const/4 v1, 0x0

    .line 1620
    .local v1, "containerAppIcon":[B
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .line 1621
    .restart local v8    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v8, :cond_b

    .line 1623
    :try_start_4
    iget-object v12, v8, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v12, v11}, Lcom/samsung/android/knox/ISemPersonaManager;->getContainerAppIcon(I)[B
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 1628
    .end local v1    # "containerAppIcon":[B
    :cond_b
    :goto_8
    :try_start_5
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "getContainerAppIcon"

    invoke-virtual {v12, v14, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1631
    .end local v8    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_c
    const-string/jumbo v12, "getActiveUserId"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1632
    const/4 v10, 0x0

    .line 1634
    .local v10, "userId":I
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v8

    .line 1635
    .restart local v8    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v8, :cond_d

    .line 1637
    :try_start_6
    iget-object v12, v8, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v12}, Lcom/samsung/android/knox/ISemPersonaManager;->getFocusedUser()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v10

    .line 1642
    :cond_d
    :goto_9
    :try_start_7
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "getActiveUserId"

    invoke-virtual {v12, v14, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1645
    .end local v8    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v10    # "userId":I
    :cond_e
    const-string/jumbo v12, "getAllPersonaInfo"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 1646
    const/4 v1, 0x0

    .line 1647
    .restart local v1    # "containerAppIcon":[B
    const/4 v3, 0x0

    .line 1648
    .restart local v3    # "containerName":Ljava/lang/String;
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "getContainerCount"

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1649
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v8

    .line 1650
    .restart local v8    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v8, :cond_17

    .line 1652
    :try_start_8
    iget-object v12, v8, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v12}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonaIds()[I

    move-result-object v6

    .line 1654
    .local v6, "ids":[I
    if-eqz v6, :cond_17

    array-length v12, v6

    if-eqz v12, :cond_17

    .line 1655
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "getContainerCount"

    array-length v15, v6

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1656
    const/4 v5, 0x0

    .end local v1    # "containerAppIcon":[B
    .end local v3    # "containerName":Ljava/lang/String;
    .local v5, "i":I
    :goto_a
    array-length v12, v6

    if-ge v5, v12, :cond_17

    .line 1657
    aget v2, v6, v5

    .line 1658
    .local v2, "containerId":I
    iget-object v12, v8, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v12, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getContainerAppIcon(I)[B

    move-result-object v1

    .line 1659
    .local v1, "containerAppIcon":[B
    iget-object v12, v8, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v12, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getContainerName(I)Ljava/lang/String;

    move-result-object v3

    .line 1661
    .local v3, "containerName":Ljava/lang/String;
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getContainerOrder_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v8, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v15, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getContainerOrder(I)I

    move-result v15

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1662
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getContainerId_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1663
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getContainerLabel_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getContainerAppIcon_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1656
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 1541
    .end local v1    # "containerAppIcon":[B
    .end local v2    # "containerId":I
    .end local v3    # "containerName":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "ids":[I
    .end local v8    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    .restart local v7    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_f
    :try_start_9
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isBlockExternalSD"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 1686
    .end local v7    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v4

    .line 1687
    .local v4, "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_b
    monitor-exit v13

    .line 1690
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v12

    .line 1554
    :cond_11
    :try_start_b
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isKioskModeEnabled"

    const-string/jumbo v15, "false"

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 1520
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    .line 1571
    :cond_12
    :try_start_c
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isKnoxModeActive"

    const-string/jumbo v15, "false"

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1579
    :cond_13
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isKioskModeEnabled"

    const-string/jumbo v15, "false"

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1587
    :cond_14
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isSecureFolderExist"

    const-string/jumbo v15, "false"

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1594
    :cond_15
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isMyknoxExist"

    const-string/jumbo v15, "false"

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1599
    :cond_16
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isSecureFolderExist"

    const-string/jumbo v15, "false"

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1610
    .local v3, "containerName":Ljava/lang/String;
    .restart local v8    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    :catch_1
    move-exception v9

    .line 1611
    .local v9, "re":Landroid/os/RemoteException;
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "failed to container name"

    invoke-static {v12, v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1624
    .end local v3    # "containerName":Ljava/lang/String;
    .end local v9    # "re":Landroid/os/RemoteException;
    .local v1, "containerAppIcon":[B
    :catch_2
    move-exception v9

    .line 1625
    .restart local v9    # "re":Landroid/os/RemoteException;
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "failed to container name"

    invoke-static {v12, v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 1638
    .end local v1    # "containerAppIcon":[B
    .end local v9    # "re":Landroid/os/RemoteException;
    .restart local v10    # "userId":I
    :catch_3
    move-exception v9

    .line 1639
    .restart local v9    # "re":Landroid/os/RemoteException;
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "failed to container name"

    invoke-static {v12, v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 1667
    .end local v9    # "re":Landroid/os/RemoteException;
    .end local v10    # "userId":I
    :catch_4
    move-exception v9

    .line 1668
    .restart local v9    # "re":Landroid/os/RemoteException;
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "failed to get container info:"

    invoke-static {v12, v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1669
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "getContainerCount"

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1674
    .end local v8    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v9    # "re":Landroid/os/RemoteException;
    :cond_17
    const-string/jumbo v12, "isSupportSecureFolder"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 1675
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v8

    .line 1676
    .restart local v8    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v8, :cond_19

    .line 1677
    invoke-virtual {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v12

    if-eqz v12, :cond_18

    .line 1678
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isSupportSecureFolder"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1680
    :cond_18
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isSupportSecureFolder"

    const-string/jumbo v15, "false"

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1683
    :cond_19
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isSupportSecureFolder"

    const-string/jumbo v15, "false"

    invoke-virtual {v12, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_b
.end method

.method public static getPathStrategy(I)Lcom/samsung/android/knox/SemPersonaManager$PathStrategy;
    .locals 2
    .param p0, "userid"    # I

    .prologue
    .line 4038
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->pathstrategy:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager$PathStrategy;

    .line 4039
    .local v0, "ret":Lcom/samsung/android/knox/SemPersonaManager$PathStrategy;
    if-nez v0, :cond_0

    .line 4040
    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$PathStrategy;

    .end local v0    # "ret":Lcom/samsung/android/knox/SemPersonaManager$PathStrategy;
    const-string/jumbo v1, "bbcfileprovider"

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/knox/SemPersonaManager$PathStrategy;-><init>(Ljava/lang/String;I)V

    .line 4041
    .restart local v0    # "ret":Lcom/samsung/android/knox/SemPersonaManager$PathStrategy;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->pathstrategy:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4043
    :cond_0
    return-object v0
.end method

.method public static getPersonaName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "personaId"    # I

    .prologue
    const/4 v6, 0x0

    .line 3520
    const/16 v3, 0x64

    if-lt p1, v3, :cond_4

    .line 3521
    const-string/jumbo v3, "user"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 3522
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3523
    .local v1, "ui":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_3

    .line 3524
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3525
    iget-object v3, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v3

    .line 3527
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3528
    .local v0, "packageName":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPersonaName called from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    const-string/jumbo v3, "com.sec.knox.containeragent2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "com.sec.knox.switcher"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3530
    const-string/jumbo v3, "com.samsung.knox.kss"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 3529
    if-nez v3, :cond_1

    .line 3530
    const-string/jumbo v3, "com.sec.knox.foldercontainer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 3529
    if-nez v3, :cond_1

    .line 3531
    const-string/jumbo v3, "com.android.settings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 3529
    if-eqz v3, :cond_2

    .line 3532
    :cond_1
    const-string/jumbo v3, "KNOX"

    return-object v3

    .line 3534
    :cond_2
    iget-object v3, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v3

    .line 3537
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_3
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "User doesn\'t exist. : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3539
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    .end local v2    # "um":Landroid/os/UserManager;
    :cond_4
    return-object v6
.end method

.method private static getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 3841
    if-eqz p0, :cond_0

    .line 3842
    const-string/jumbo v1, "persona"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 3843
    .local v0, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3844
    return-object v0

    .line 3847
    .end local v0    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_0
    return-object v2
.end method

.method public static getRCPManager(Landroid/content/Context;)Lcom/samsung/android/knox/SemRemoteContentManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1841
    const-class v1, Lcom/samsung/android/knox/SemPersonaManager;

    monitor-enter v1

    .line 1842
    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    if-nez v0, :cond_0

    .line 1843
    const-string/jumbo v0, "rcp"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemRemoteContentManager;

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1846
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    return-object v0

    .line 1841
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSecureFolderId(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3895
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    .line 3896
    .local v0, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-nez v0, :cond_0

    .line 3897
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to get SemPersonaManagerService in getSecureFolderId"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3898
    const/16 v2, -0x514

    return v2

    .line 3902
    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getSecureFolderId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 3903
    :catch_0
    move-exception v1

    .line 3904
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to getSecureFolderId"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3906
    const/16 v2, -0x515

    return v2
.end method

.method public static getSecureFolderName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3856
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    .line 3857
    .local v4, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-nez v4, :cond_0

    .line 3858
    sget-object v5, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Failed to get SemPersonaManagerService in getSecureFolderId"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    const-string/jumbo v5, ""

    return-object v5

    .line 3861
    :cond_0
    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v3

    .line 3862
    .local v3, "pi":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 3863
    :cond_1
    const-string/jumbo v5, ""

    return-object v5

    .line 3865
    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 3866
    .local v1, "i":Lcom/samsung/android/knox/SemPersonaInfo;
    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaInfo;->getType()Ljava/lang/String;

    move-result-object v0

    .line 3867
    .local v0, "curName":Ljava/lang/String;
    sget-object v5, Lcom/samsung/android/knox/SemPersonaManager;->SECURE_FOLDER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3868
    return-object v0

    .line 3871
    .end local v0    # "curName":Ljava/lang/String;
    .end local v1    # "i":Lcom/samsung/android/knox/SemPersonaInfo;
    :cond_4
    const-string/jumbo v5, ""

    return-object v5
.end method

.method public static isBBCContainer(I)Z
    .locals 2
    .param p0, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 3986
    const/16 v1, 0xc3

    if-lt p0, v1, :cond_0

    const/16 v1, 0xc7

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isCACEnabled(I)Z
    .locals 7
    .param p0, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 2675
    const/4 v2, 0x0

    .line 2679
    .local v2, "secure_access":Z
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->mBTSecureManagerSync:Ljava/lang/Object;

    monitor-enter v4

    .line 2686
    const/16 v3, 0x64

    if-lt p0, v3, :cond_1

    const/16 v3, 0xc8

    if-gt p0, v3, :cond_1

    .line 2687
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 2688
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 2689
    invoke-interface {v0, p0}, Landroid/sec/enterprise/IEDMProxy;->isBTSecureAccessAllowedAsUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .end local v2    # "secure_access":Z
    :cond_0
    monitor-exit v4

    .line 2692
    return v6

    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    .restart local v2    # "secure_access":Z
    :cond_1
    monitor-exit v4

    .line 2695
    return v6

    .line 2697
    :catch_0
    move-exception v1

    .line 2698
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_1
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "failed to isCACEnabled"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 2701
    return v6

    .line 2679
    .end local v1    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static isKioskModeEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 1495
    const-string/jumbo v3, "sys.knox.exists"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1497
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1498
    const-string/jumbo v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 1499
    :cond_0
    if-eqz p0, :cond_3

    .line 1500
    const-string/jumbo v3, "persona"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1501
    .local v0, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-nez v3, :cond_2

    .line 1502
    :cond_1
    return v5

    .line 1505
    :cond_2
    :try_start_0
    iget-object v3, v0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v3}, Lcom/samsung/android/knox/ISemPersonaManager;->isKioskContainerExistOnDevice()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1506
    :catch_0
    move-exception v1

    .line 1507
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "failed to isKioskContainerExistOnDevice"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1509
    return v5

    .line 1512
    .end local v0    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_3
    return v5
.end method

.method public static isKnoxAppRunning(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4294
    const/4 v1, 0x0

    .line 4295
    .local v1, "result":Z
    const/4 v2, 0x0

    .line 4301
    .local v2, "userId":I
    const-string/jumbo v3, "persona"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 4302
    .local v0, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-nez v0, :cond_0

    return v1

    .line 4303
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v2

    .line 4306
    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_1

    const/4 v1, 0x1

    .line 4308
    :goto_0
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isKnoxAppRunning userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4310
    return v1

    .line 4306
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKnoxId(I)Z
    .locals 2
    .param p0, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 3812
    const/16 v1, 0x64

    if-lt p0, v1, :cond_0

    const/16 v1, 0xc8

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isKnoxMultiwindowsSupported()Z
    .locals 1

    .prologue
    .line 4362
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v0

    return v0
.end method

.method public static isKnoxSupported()Z
    .locals 6

    .prologue
    .line 1241
    const/4 v1, 0x0

    .line 1243
    .local v1, "result":Z
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v2

    .line 1244
    .local v2, "version":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    if-eqz v2, :cond_1

    .line 1245
    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->getVersionNumber()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 1246
    :goto_0
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Supported Knox Version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    .end local v2    # "version":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :goto_1
    return v1

    .line 1245
    .restart local v2    # "version":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1248
    :cond_1
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Unexpected... failed to get knox version..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1250
    .end local v2    # "version":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :catch_0
    move-exception v0

    .line 1251
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static isKnoxVersionSupported(I)Z
    .locals 3
    .param p0, "version"    # I

    .prologue
    const/4 v2, 0x0

    .line 1219
    if-lez p0, :cond_0

    .line 1220
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v0

    .line 1221
    .local v0, "currentVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->getVersionNumber()I

    move-result v1

    if-lt v1, p0, :cond_0

    .line 1222
    const/4 v1, 0x1

    return v1

    .line 1225
    .end local v0    # "currentVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_0
    return v2
.end method

.method public static isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z
    .locals 3
    .param p0, "version"    # Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .prologue
    const/4 v2, 0x0

    .line 1230
    if-eqz p0, :cond_0

    .line 1231
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v0

    .line 1232
    .local v0, "currentVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1233
    const/4 v1, 0x1

    return v1

    .line 1236
    .end local v0    # "currentVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_0
    return v2
.end method

.method private static isMyknoxExist(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 1694
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    .line 1696
    .local v1, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    :try_start_0
    iget-object v3, v1, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v3}, Lcom/samsung/android/knox/ISemPersonaManager;->getMyknoxId()I

    move-result v0

    .line 1697
    .local v0, "id":I
    if-nez v0, :cond_0

    .line 1698
    return v5

    .line 1699
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 1700
    const/4 v3, 0x1

    return v3

    .line 1702
    .end local v0    # "id":I
    :catch_0
    move-exception v2

    .line 1703
    .local v2, "re":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "failed to isMyknoxExist"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1705
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_1
    return v5
.end method

.method public static isPkgAllowedToListenKnoxNoti(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4858
    const/4 v0, 0x0

    .line 4860
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4861
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    .line 4863
    const-string/jumbo v2, "com.samsung.permission.READ_KNOX_NOTIFICATION"

    .line 4864
    .local v2, "enforcedPermission":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.permission.READ_KNOX_NOTIFICATION"

    invoke-virtual {v3, v4, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 4882
    .end local v2    # "enforcedPermission":Ljava/lang/String;
    :cond_0
    return v5

    .line 4872
    .restart local v2    # "enforcedPermission":Ljava/lang/String;
    :cond_1
    return v6

    .line 4874
    .end local v2    # "enforcedPermission":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_0

    .line 4877
    return v6

    .line 4879
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 4880
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v5
.end method

.method public static isPossibleAddToPersonal(Ljava/lang/String;)Z
    .locals 6
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1855
    if-eqz p0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1856
    :cond_0
    return v2

    .line 1858
    :cond_1
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->SHORTCUT_FILTER:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_3

    aget-object v0, v3, v1

    .line 1859
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1860
    return v2

    .line 1858
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1863
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public static isSecureFolderAppRunning(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4315
    const/4 v1, 0x0

    .line 4316
    .local v1, "result":Z
    const/4 v2, 0x0

    .line 4322
    .local v2, "userId":I
    const-string/jumbo v3, "persona"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 4323
    .local v0, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-nez v0, :cond_0

    return v1

    .line 4324
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v2

    .line 4327
    const/16 v3, 0x96

    if-lt v2, v3, :cond_1

    const/16 v3, 0xa0

    if-gt v2, v3, :cond_1

    const/4 v1, 0x1

    .line 4329
    :goto_0
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSecureFolderAppRunning userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4331
    return v1

    .line 4327
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSecureFolderExist(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3880
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v0

    .line 3882
    .local v0, "currentId":I
    const/16 v1, 0x96

    if-lt v0, v1, :cond_0

    const/16 v1, 0xa0

    if-gt v0, v1, :cond_0

    .line 3883
    const/4 v1, 0x1

    return v1

    .line 3886
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isSecureFolderId()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3822
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3823
    .local v0, "userId":I
    const/16 v2, 0x96

    if-lt v0, v2, :cond_0

    const/16 v2, 0xa0

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSecureFolderId(I)Z
    .locals 2
    .param p0, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 3832
    const/16 v1, 0x96

    if-lt p0, v1, :cond_0

    const/16 v1, 0xa0

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSecureFolderMetaDataEnabled()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 4523
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.knox.securefolder"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4524
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    return v3

    .line 4525
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 4526
    .local v1, "b":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    const-string/jumbo v4, "com.samsung.knox.securefolder.enable"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_1
    return v3

    .line 4527
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "b":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 4528
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4530
    return v3
.end method

.method public static isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1433
    if-eqz p2, :cond_0

    const-string/jumbo v1, "sec_container_1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1434
    return v4

    .line 1437
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 1438
    .local v0, "versionInfo":Landroid/os/Bundle;
    const-string/jumbo v1, "2.0"

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1439
    const-class v2, Lcom/samsung/android/knox/SemPersonaManager;

    monitor-enter v2

    .line 1440
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v1, :cond_1

    .line 1441
    const-string/jumbo v1, "persona"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 1445
    const-class v2, Landroid/os/PersonaPolicyManager;

    monitor-enter v2

    .line 1446
    :try_start_1
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    if-nez v1, :cond_2

    .line 1447
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const-string/jumbo v3, "persona_policy"

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaPolicyManager;

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    monitor-exit v2

    .line 1451
    const/16 v1, 0x64

    if-lt p3, v1, :cond_11

    .line 1452
    const-string/jumbo v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1453
    return v4

    .line 1439
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1445
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1454
    :cond_3
    const-string/jumbo v1, "cameraMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1455
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getCameraModeChangeEnabled(I)Z

    move-result v1

    return v1

    .line 1456
    :cond_4
    const-string/jumbo v1, "dlnaDataTransfer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1457
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowDLNADataTransfer(I)Z

    move-result v1

    return v1

    .line 1458
    :cond_5
    const-string/jumbo v1, "print"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1459
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowPrint(I)Z

    move-result v1

    return v1

    .line 1460
    :cond_6
    const-string/jumbo v1, "allShare"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1461
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowAllShare(I)Z

    move-result v1

    return v1

    .line 1462
    :cond_7
    const-string/jumbo v1, "gearSupport"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1463
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getGearSupportEnabled(I)Z

    move-result v1

    return v1

    .line 1464
    :cond_8
    const-string/jumbo v1, "penWindow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1465
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getPenWindowEnabled(I)Z

    move-result v1

    return v1

    .line 1466
    :cond_9
    const-string/jumbo v1, "airCommand"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1467
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAirCommandEnabled(I)Z

    move-result v1

    return v1

    .line 1468
    :cond_a
    const-string/jumbo v1, "importFiles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1469
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowImportFiles(I)Z

    move-result v1

    return v1

    .line 1470
    :cond_b
    const-string/jumbo v1, "exportFiles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1471
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowExportFiles(I)Z

    move-result v1

    return v1

    .line 1472
    :cond_c
    const-string/jumbo v1, "move-file-to-container"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1473
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->isMoveFilesToContainerAllowed(I)Z

    move-result v1

    return v1

    .line 1474
    :cond_d
    const-string/jumbo v1, "move-file-to-owner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1475
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->isMoveFilesToOwnerAllowed(I)Z

    move-result v1

    return v1

    .line 1476
    :cond_e
    const-string/jumbo v1, "exportAndDeleteFiles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1477
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowExportAndDeleteFiles(I)Z

    move-result v1

    return v1

    .line 1478
    :cond_f
    const-string/jumbo v1, "print"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1479
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowPrint(I)Z

    move-result v1

    return v1

    .line 1480
    :cond_10
    const-string/jumbo v1, "contacts-import-export"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1481
    return v4

    .line 1486
    :cond_11
    const/4 v1, 0x1

    return v1
.end method

.method public static readOMCSalesCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4391
    const-string/jumbo v1, ""

    .line 4393
    .local v1, "sales_code":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "persist.omc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4394
    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_2

    .line 4395
    :cond_0
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4396
    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v1, :cond_2

    .line 4397
    :cond_1
    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4403
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 4404
    const-string/jumbo v2, ""

    return-object v2

    .line 4400
    :catch_0
    move-exception v0

    .line 4401
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "readOMCSalesCode failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4406
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    return-object v1
.end method

.method private static setMoveToKnoxInfo(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "userid"    # I

    .prologue
    .line 1732
    const-string/jumbo v9, "isSupportMoveTo"

    const-string/jumbo v10, "false"

    invoke-virtual {p1, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    if-nez p2, :cond_5

    .line 1735
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1736
    .local v1, "bd1":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 1737
    .local v8, "resp":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 1738
    .local v4, "personaIds":[I
    const/4 v6, 0x0

    .line 1739
    .local v6, "personaTypes":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 1741
    .local v5, "personaNames":[Ljava/lang/String;
    const-string/jumbo v9, "action"

    const-string/jumbo v10, "RequestProxy"

    invoke-virtual {v1, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    const-string/jumbo v9, "cmd"

    const-string/jumbo v10, "queryPersonaInfos"

    invoke-virtual {v1, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    invoke-static {p0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 1746
    .local v8, "resp":Landroid/os/Bundle;
    if-eqz v8, :cond_0

    .line 1747
    const-string/jumbo v9, "personaIds"

    invoke-virtual {v8, v9}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 1748
    .local v4, "personaIds":[I
    const-string/jumbo v9, "personaTypes"

    invoke-virtual {v8, v9}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1749
    .local v6, "personaTypes":[Ljava/lang/String;
    const-string/jumbo v9, "personaNames"

    invoke-virtual {v8, v9}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1751
    .local v5, "personaNames":[Ljava/lang/String;
    sget-object v9, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v10, "personaIds"

    invoke-virtual {v9, v10, v4}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1752
    sget-object v9, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v10, "personaTypes"

    invoke-virtual {v9, v10, v6}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1753
    sget-object v9, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v10, "personaNames"

    invoke-virtual {v9, v10, v5}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1757
    .end local v4    # "personaIds":[I
    .end local v5    # "personaNames":[Ljava/lang/String;
    .end local v6    # "personaTypes":[Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1759
    .local v0, "KnoxIdNamePair":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    array-length v9, v4

    if-lez v9, :cond_2

    .line 1762
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v4

    if-ge v3, v9, :cond_1

    .line 1763
    aget v9, v4, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1764
    aget-object v10, v5, v3

    .line 1763
    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1766
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1767
    .local v7, "pkgName":Ljava/lang/String;
    const-string/jumbo v9, "com.sec.android.app.voicenote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1768
    const-string/jumbo v9, "com.samsung.android.snote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1776
    .end local v3    # "i":I
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string/jumbo v9, "KnoxIdNamePair"

    invoke-virtual {p1, v9, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1730
    .end local v0    # "KnoxIdNamePair":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "bd1":Landroid/os/Bundle;
    .end local v8    # "resp":Landroid/os/Bundle;
    :cond_3
    :goto_2
    return-void

    .line 1769
    .restart local v0    # "KnoxIdNamePair":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v1    # "bd1":Landroid/os/Bundle;
    .restart local v3    # "i":I
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v8    # "resp":Landroid/os/Bundle;
    :cond_4
    const-string/jumbo v9, "isSupportMoveTo"

    const-string/jumbo v10, "true"

    invoke-virtual {p1, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1777
    .end local v0    # "KnoxIdNamePair":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v7    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1778
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 1781
    .end local v1    # "bd1":Landroid/os/Bundle;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "resp":Landroid/os/Bundle;
    :cond_5
    const/16 v9, 0x64

    if-lt p2, v9, :cond_3

    .line 1783
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1784
    .restart local v7    # "pkgName":Ljava/lang/String;
    const-string/jumbo v9, "com.sec.android.app.voicenote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1785
    const-string/jumbo v9, "com.samsung.android.snote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1786
    const-string/jumbo v9, "isSupportMoveTo"

    const-string/jumbo v10, "true"

    invoke-virtual {p1, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1788
    .end local v7    # "pkgName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1789
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public addAppForPersona(Lcom/samsung/android/knox/SemPersonaManager$AppType;Ljava/lang/String;I)V
    .locals 3
    .param p1, "type"    # Lcom/samsung/android/knox/SemPersonaManager$AppType;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "personaId"    # I

    .prologue
    .line 2426
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2428
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->addAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2425
    :cond_0
    :goto_0
    return-void

    .line 2429
    :catch_0
    move-exception v0

    .line 2430
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to addAppForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 1121
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 1123
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1124
    :catch_0
    move-exception v0

    .line 1125
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get addLockOnImage , inside SemPersonaManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1128
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public addPackageToInstallWhiteList(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 2476
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2478
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->addPackageToInstallWhiteList(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2475
    :cond_0
    :goto_0
    return-void

    .line 2479
    :catch_0
    move-exception v0

    .line 2480
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to addPackageToInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addPackageToNonSecureAppList(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4423
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4425
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->addPackageToNonSecureAppList(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4422
    :cond_0
    :goto_0
    return-void

    .line 4426
    :catch_0
    move-exception v0

    .line 4427
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to addPackageToNonSecureAppList from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public adminLockPersona(ILjava/lang/String;)Z
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2369
    const/4 v1, 0x0

    .line 2370
    .local v1, "result":Z
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v2, :cond_0

    .line 2372
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->adminLockPersona(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2377
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    return v1

    .line 2373
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 2374
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to execute adminLockPersona"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public adminUnLockPersona(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 2382
    const/4 v1, 0x0

    .line 2383
    .local v1, "result":Z
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v2, :cond_0

    .line 2385
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->adminUnLockPersona(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2390
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    return v1

    .line 2386
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 2387
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to execute adminUnLockPersona"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public canAccess(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 2989
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2991
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "canAccess for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " personaId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->canAccess(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2993
    :catch_0
    move-exception v0

    .line 2994
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to get access permission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2997
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public clearAppListForPersona(Lcom/samsung/android/knox/SemPersonaManager$AppType;I)V
    .locals 3
    .param p1, "type"    # Lcom/samsung/android/knox/SemPersonaManager$AppType;
    .param p2, "personaId"    # I

    .prologue
    .line 2615
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2617
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->clearAppListForPersona(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2614
    :cond_0
    :goto_0
    return-void

    .line 2618
    :catch_0
    move-exception v0

    .line 2619
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to clearAppListForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearNonSecureAppList()V
    .locals 3

    .prologue
    .line 4446
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4448
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->clearNonSecureAppList()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4445
    :cond_0
    :goto_0
    return-void

    .line 4449
    :catch_0
    move-exception v0

    .line 4450
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to clearNonSecureAppList from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public convertContainerType(II)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "containerType"    # I

    .prologue
    .line 3014
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3016
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "convertContainerType for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->convertContainerType(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3013
    :cond_0
    :goto_0
    return-void

    .line 3018
    :catch_0
    move-exception v0

    .line 3019
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to convertContainerType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public copyFileBNR(ILjava/lang/String;ILjava/lang/String;)I
    .locals 5
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;

    .prologue
    .line 2221
    :try_start_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SemPersonaManager.copyFileBNR() srcContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; srcFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; destContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; destFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 2223
    .local v0, "rcpm":Lcom/samsung/android/knox/SemRemoteContentManager;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/SemRemoteContentManager;->copyFile(ILjava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 2224
    .end local v0    # "rcpm":Lcom/samsung/android/knox/SemRemoteContentManager;
    :catch_0
    move-exception v1

    .line 2225
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "SemPersonaManager.copyFileBNR(), inside persona manager with exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2227
    const/4 v2, -0x1

    return v2
.end method

.method public createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "personaType"    # Ljava/lang/String;
    .param p6, "admin"    # Ljava/lang/String;
    .param p7, "setupWizardApkUri"    # Landroid/net/Uri;
    .param p8, "mdmSecretKey"    # Ljava/lang/String;
    .param p9, "lockType"    # I

    .prologue
    .line 662
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 664
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/samsung/android/knox/ISemPersonaManager;->createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not create a user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 669
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public deleteFile(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 2234
    :try_start_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SemPersonaManager.deleteFile() ContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; FilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 2236
    .local v0, "rcpm":Lcom/samsung/android/knox/SemRemoteContentManager;
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/SemRemoteContentManager;->deleteFile(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 2237
    .end local v0    # "rcpm":Lcom/samsung/android/knox/SemRemoteContentManager;
    :catch_0
    move-exception v1

    .line 2238
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "SemPersonaManager.deleteFile(), inside persona manager with exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2240
    const/4 v2, 0x0

    return v2
.end method

.method public disablePersonaKeyGuard(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 2340
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2342
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disablePersonaKeyGuard  persona "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->disablePersonaKeyGuard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2344
    :catch_0
    move-exception v0

    .line 2345
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to disablePersonaKeyGuard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2348
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public doWhenUnlock(ILcom/samsung/android/knox/SemUnlockAction;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "r"    # Lcom/samsung/android/knox/SemUnlockAction;

    .prologue
    .line 2850
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2852
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-virtual {p2}, Lcom/samsung/android/knox/SemUnlockAction;->getChild()Lcom/samsung/android/knox/SemIUnlockAction;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->doWhenUnlock(ILcom/samsung/android/knox/SemIUnlockAction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2849
    :cond_0
    :goto_0
    return-void

    .line 2853
    :catch_0
    move-exception v0

    .line 2854
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not showKeyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enablePersonaKeyGuard(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 2356
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2358
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enablePersonaKeyGuard  persona "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->enablePersonaKeyGuard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2360
    :catch_0
    move-exception v0

    .line 2361
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to enablePersonaKeyGuard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2364
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public exists(I)Z
    .locals 5
    .param p1, "personaId"    # I

    .prologue
    const/4 v4, 0x0

    .line 997
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v2, :cond_2

    .line 999
    :try_start_0
    const-string/jumbo v2, "sys.knox.exists"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1001
    .local v1, "value":Ljava/lang/String;
    const/16 v2, 0x64

    if-ge p1, v2, :cond_0

    .line 1002
    return v4

    .line 1003
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1004
    invoke-static {v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->containerExists(Ljava/lang/String;I)Z

    move-result v2

    return v2

    .line 1006
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->exists(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1007
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1008
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Could not get user info"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1011
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2
    return v4
.end method

.method public forceRollup(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "metadata"    # Landroid/os/Bundle;

    .prologue
    .line 1049
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "about to force switch to owner!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    return-void
.end method

.method public getAdminUidForPersona(I)I
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 2245
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2247
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in SemPersonaManager, getAdminUidForPersona()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getAdminUidForPersona(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2249
    :catch_0
    move-exception v0

    .line 2250
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to get getAdminUidForPersona id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2253
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getAllKnoxNamesAndIds(Z)Ljava/util/HashMap;
    .locals 7
    .param p1, "onlyActive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4842
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4843
    .local v0, "nameandids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 4844
    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v3

    .line 4846
    .local v3, "pInfos":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 4847
    .local v1, "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    iget v5, v1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4849
    .end local v1    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    :cond_0
    return-object v0
.end method

.method public getAppListForPersona(Lcom/samsung/android/knox/SemPersonaManager$AppType;I)Ljava/util/List;
    .locals 4
    .param p1, "type"    # Lcom/samsung/android/knox/SemPersonaManager$AppType;
    .param p2, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/SemPersonaManager$AppType;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2459
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2461
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->getAppListForPersona(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2462
    :catch_0
    move-exception v0

    .line 2463
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to getAppListForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2466
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getAppPackageNamesAllWhiteLists(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4768
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4770
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getAppPackageNamesAllWhiteLists(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 4771
    :catch_0
    move-exception v0

    .line 4772
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4775
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;
    .locals 8
    .param p1, "contactRefUriAsString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1136
    const/4 v0, 0x0

    .line 1137
    .local v0, "mRCPGlobalContactsDir":Landroid/content/IRCPGlobalContactsDir;
    const/4 v3, 0x0

    .line 1138
    .local v3, "result":Landroid/content/CustomCursor;
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "PM.getCallerInfo()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object v4, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "rcp"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 1141
    .local v1, "rcpm":Lcom/samsung/android/knox/SemRemoteContentManager;
    if-nez v1, :cond_0

    .line 1142
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Received mRCPGlobalContactsDir as null from bridge manager: rcpm == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    return-object v7

    .line 1146
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/knox/SemRemoteContentManager;->getRCPProxy()Landroid/content/IRCPGlobalContactsDir;

    move-result-object v0

    .line 1147
    .local v0, "mRCPGlobalContactsDir":Landroid/content/IRCPGlobalContactsDir;
    if-nez v0, :cond_1

    .line 1148
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Received result as null from bridge manager for getCallerInfo: mRCPGlobalContactsDir == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    return-object v7

    .line 1153
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/content/IRCPGlobalContactsDir;->getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v3

    .line 1154
    .local v3, "result":Landroid/content/CustomCursor;
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PM.getCallerInfo(): Received result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1155
    return-object v3

    .line 1156
    .end local v3    # "result":Landroid/content/CustomCursor;
    :catch_0
    move-exception v2

    .line 1157
    .local v2, "re":Landroid/os/RemoteException;
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Couldn\'t complete call to getCallerInfo , inside SemPersonaManager with exception:"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1159
    return-object v7
.end method

.method public getContainerHideUsageStatsApps()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4411
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4413
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->getContainerHideUsageStatsApps()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 4414
    :catch_0
    move-exception v0

    .line 4415
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to get usage stats app hide list "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4418
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1
.end method

.method public getContainerIcon(I)[B
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 4597
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4599
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getContainerAppIcon(I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 4600
    :catch_0
    move-exception v0

    .line 4601
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4604
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getContainerName(ILandroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 4610
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v2, :cond_2

    .line 4612
    :try_start_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4613
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getContainerName(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4615
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4616
    .local v0, "packageName":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPersonaName called from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4617
    const-string/jumbo v2, "com.sec.knox.containeragent2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "com.sec.knox.switcher"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4618
    const-string/jumbo v2, "com.samsung.knox.kss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4617
    if-nez v2, :cond_1

    .line 4618
    const-string/jumbo v2, "com.sec.knox.foldercontainer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4617
    if-nez v2, :cond_1

    .line 4619
    const-string/jumbo v2, "com.android.settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4617
    if-eqz v2, :cond_2

    .line 4620
    :cond_1
    const-string/jumbo v2, "KNOX"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 4622
    .end local v0    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 4623
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to call Persona service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4626
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_2
    return-object v5
.end method

.method public getCustomBadgedIconifRequired(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "originalIcon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "mUser"    # Landroid/os/UserHandle;

    .prologue
    .line 4336
    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomBadgedIconifRequired(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCustomBadgedIconifRequired(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "originalIcon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "mUser"    # Landroid/os/UserHandle;
    .param p5, "position"    # I

    .prologue
    .line 4341
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 4342
    .local v2, "userId":I
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4343
    return-object p2

    .line 4345
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4346
    return-object p2

    .line 4349
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v3, p3, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getCustomBadgedResourceIdIconifRequired(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4350
    .local v0, "badgeResourceId":I
    if-nez v0, :cond_2

    .line 4351
    return-object p2

    .line 4353
    :cond_2
    return-object p2

    .line 4355
    .end local v0    # "badgeResourceId":I
    :catch_0
    move-exception v1

    .line 4356
    .local v1, "re":Landroid/os/RemoteException;
    return-object p2
.end method

.method public getDefaultQuickSettings()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4367
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4369
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->getDefaultQuickSettings()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 4370
    :catch_0
    move-exception v0

    .line 4371
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to getDefaultQuickSettings from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4374
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getDisabledHomeLaunchers(IZ)Ljava/util/List;
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "clearList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2599
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2601
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->getDisabledHomeLaunchers(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2602
    :catch_0
    move-exception v0

    .line 2603
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to getDisabledHomeLaunchers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2606
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getECBadge(I)[B
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 4547
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4549
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getECBadge(I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 4550
    :catch_0
    move-exception v0

    .line 4551
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4554
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getECIcon(I)[B
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 4559
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4561
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getECIcon(I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 4562
    :catch_0
    move-exception v0

    .line 4563
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4566
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getECName(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 4535
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4537
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getECName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 4538
    :catch_0
    move-exception v0

    .line 4539
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4542
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getFidoRpContext(I)Ljava/lang/String;
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 3290
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3292
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getFidoRpContext"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getFidoRpContext(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 3294
    :catch_0
    move-exception v0

    .line 3295
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read getFidoRpContext from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3298
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getFingerCount()I
    .locals 3

    .prologue
    .line 3389
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3391
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getFingerCount"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getFingerCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3393
    :catch_0
    move-exception v0

    .line 3394
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read getFingerCount from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3397
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getFingerprintHash(I)Ljava/util/List;
    .locals 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4251
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4253
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getFingerprintHash"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getFingerprintHash(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 4255
    :catch_0
    move-exception v0

    .line 4256
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to getFingerprintHash from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4259
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getFingerprintIndex(I)[I
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    const/4 v3, 0x0

    .line 4224
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4226
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getFingerprintIndex"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4227
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getFingerprintIndex(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 4228
    :catch_0
    move-exception v0

    .line 4229
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to getFingerprintIndex from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4232
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getFocusedKnoxId()I
    .locals 2

    .prologue
    .line 3437
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v0

    .line 3438
    .local v0, "knoxId":I
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3439
    return v0

    .line 3441
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getFocusedUser()I
    .locals 3

    .prologue
    .line 3449
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3452
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->getFocusedUser()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3453
    :catch_0
    move-exception v0

    .line 3454
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getFocusedUser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3457
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getForegroundUser()I
    .locals 3

    .prologue
    .line 3420
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3422
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getForegroundUser"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3423
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->getForegroundUser()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3424
    :catch_0
    move-exception v0

    .line 3425
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getForegroundUser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3428
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getIsAdminLockedJustBefore()Z
    .locals 3

    .prologue
    .line 3324
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3326
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getIsAdminLockedJustBefore"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getIsAdminLockedJustBefore(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3328
    :catch_0
    move-exception v0

    .line 3329
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read getIsAdminLockedJustBefore from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3332
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getIsFingerAsSupplement()Z
    .locals 3

    .prologue
    .line 3031
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3033
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getIsFingerAsSupplement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getIsFingerAsSupplement(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3035
    :catch_0
    move-exception v0

    .line 3036
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read getIsFingerAsSupplement from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3039
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getIsFingerIdentifyFailed()Z
    .locals 3

    .prologue
    .line 3357
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3359
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getIsFingerIdentifyFailed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3360
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getIsFingerIdentifyFailed(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3361
    :catch_0
    move-exception v0

    .line 3362
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read getIsFingerIdentifyFailed from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3365
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getIsFingerReset()Z
    .locals 3

    .prologue
    .line 3225
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3227
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getIsFingerReset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getIsFingerReset(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3229
    :catch_0
    move-exception v0

    .line 3230
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read getIsFingerReset from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3233
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getIsFingerTimeout()Z
    .locals 3

    .prologue
    .line 3161
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3163
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getIsFingerTimeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getIsFingerTimeout(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3165
    :catch_0
    move-exception v0

    .line 3166
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read getIsFingerTimeout from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3169
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getIsIrisReset()Z
    .locals 3

    .prologue
    .line 3257
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3259
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getIsBioReset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getIsIrisReset(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3261
    :catch_0
    move-exception v0

    .line 3262
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read getIsBioReset from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3265
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getIsIrisTimeout()Z
    .locals 3

    .prologue
    .line 3193
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3195
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getIsBioTimeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getIsIrisTimeout(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3197
    :catch_0
    move-exception v0

    .line 3198
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read getIsBioTimeout from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3201
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getIsQuickAccessUIEnabled()Z
    .locals 3

    .prologue
    .line 3128
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3130
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getIsQuickAccessUIEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3131
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getIsQuickAccessUIEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3132
    :catch_0
    move-exception v0

    .line 3133
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read getIsQuickAccessUIEnabled from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3136
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getIsUnlockedAfterTurnOn()Z
    .locals 3

    .prologue
    .line 3095
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3097
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getIsUnlockedAfterTurnOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getIsUnlockedAfterTurnOn(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3099
    :catch_0
    move-exception v0

    .line 3100
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read getIsUnlockedAfterTurnOn from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3103
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getKeyguardShowState()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2912
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v2

    .line 2913
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 2914
    :cond_0
    return v4

    .line 2916
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 2917
    .local v0, "i":Lcom/samsung/android/knox/SemPersonaInfo;
    iget v3, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2918
    const/4 v3, 0x1

    return v3

    .line 2921
    .end local v0    # "i":Lcom/samsung/android/knox/SemPersonaInfo;
    :cond_3
    return v4
.end method

.method public getKeyguardShowState(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 2900
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2902
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getKeyguardShowState(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2903
    :catch_0
    move-exception v0

    .line 2904
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to getKeyguardShowState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2907
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getKioskId()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4496
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v0

    .line 4497
    .local v0, "personaId":[I
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 4498
    aget v1, v0, v2

    return v1

    .line 4500
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getKnoxIconChanged(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    const/4 v3, 0x0

    .line 3920
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3922
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getKnoxIconChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3923
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->getKnoxIconChanged(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 3924
    :catch_0
    move-exception v0

    .line 3925
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to getKnoxIconChanged from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3928
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getKnoxIconChangedAsUser(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    const/4 v3, 0x0

    .line 3939
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3941
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getKnoxIconChangedAsUser"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3942
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getKnoxIconChangedAsUser(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 3943
    :catch_0
    move-exception v0

    .line 3944
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to getKnoxIconChangedAsUser from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3947
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getKnoxId(IZ)I
    .locals 5
    .param p1, "containerType"    # I
    .param p2, "onlyActive"    # Z

    .prologue
    .line 4817
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v2

    .line 4818
    .local v2, "pInfos":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 4819
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 4820
    .local v0, "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaInfo;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "centrify-pb-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaInfo;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "myknox-type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4821
    :cond_1
    iget v3, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    return v3

    .line 4825
    .end local v0    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v1    # "pInfo$iterator":Ljava/util/Iterator;
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 4826
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "pInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 4827
    .restart local v0    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    iget-boolean v3, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    if-eqz v3, :cond_3

    .line 4828
    iget v3, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    return v3

    .line 4832
    .end local v0    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v1    # "pInfo$iterator":Ljava/util/Iterator;
    :cond_4
    const/4 v3, -0x1

    return v3
.end method

.method public getKnoxIds(Z)Ljava/util/List;
    .locals 7
    .param p1, "onlyActiveList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 837
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 838
    .local v2, "personaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v5, :cond_0

    .line 840
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v5, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v3

    .line 841
    .local v3, "personaInfos":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 842
    .local v0, "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 844
    .end local v0    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v1    # "pInfo$iterator":Ljava/util/Iterator;
    .end local v3    # "personaInfos":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :catch_0
    move-exception v4

    .line 845
    .local v4, "re":Landroid/os/RemoteException;
    sget-object v5, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Could not get persona info"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 848
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getKnoxNameChanged(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 3776
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3778
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getKnoxNameChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3779
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->getKnoxNameChanged(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 3780
    :catch_0
    move-exception v0

    .line 3781
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to getKnoxNameChanged from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3784
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getKnoxNameChangedAsUser(I)Ljava/lang/String;
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 3795
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3797
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getKnoxNameChangedAsUser"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3798
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getKnoxNameChangedAsUser(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 3799
    :catch_0
    move-exception v0

    .line 3800
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to getKnoxNameChangedAsUser from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3803
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getKnoxSecurityTimeout()I
    .locals 3

    .prologue
    .line 3645
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3647
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getKnoxSecurityTimeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getKnoxSecurityTimeout(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3649
    :catch_0
    move-exception v0

    .line 3650
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read getKnoxSecurityTimeout from PMS. return default value"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3653
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const v1, 0x927c0

    return v1
.end method

.method public getLastKeyguardUnlockTime()J
    .locals 4

    .prologue
    .line 3063
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3065
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getLastKeyguadUnlockTime"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getLastKeyguardUnlockTime(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 3067
    :catch_0
    move-exception v0

    .line 3068
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read getLastKeyguardUnlockTime from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3071
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4651
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 4652
    .local v9, "returnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    .line 4654
    .local v3, "isAllowMoveTo":Ljava/lang/String;
    const/16 v10, 0xe6

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 4655
    return-object v9

    .line 4658
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "emergency_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 4659
    return-object v9

    .line 4661
    :cond_1
    const-string/jumbo v10, "persona"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/SemPersonaManager;

    .line 4663
    .local v6, "mPersonaManager":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-virtual {v6}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v7

    .line 4664
    .local v7, "personaIds":[I
    if-eqz v7, :cond_2

    array-length v10, v7

    if-nez v10, :cond_3

    .line 4665
    :cond_2
    return-object v9

    .line 4666
    :cond_3
    array-length v10, v7

    if-lez v10, :cond_e

    .line 4668
    const/4 v4, 0x0

    .line 4670
    .local v4, "isKnoxAdded":Z
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v10

    if-nez v10, :cond_d

    .line 4671
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 4672
    return-object v9

    .line 4674
    :cond_4
    const/4 v2, 0x0

    .end local v3    # "isAllowMoveTo":Ljava/lang/String;
    .local v2, "i":I
    :goto_0
    array-length v10, v7

    if-ge v2, v10, :cond_e

    .line 4675
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 4678
    .local v5, "item":Landroid/os/Bundle;
    const-string/jumbo v10, "move-file-to-container"

    aget v11, v7, v2

    const/4 v12, 0x0

    invoke-static {p1, v10, v12, v11}, Lcom/samsung/android/knox/SemPersonaManager;->isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 4679
    const-string/jumbo v3, "true"

    .line 4683
    .local v3, "isAllowMoveTo":Ljava/lang/String;
    :goto_1
    aget v10, v7, v2

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 4686
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 4687
    .local v8, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v10, "com.sec.knox.switcher"

    const-string/jumbo v11, "com.sec.knox.switcher.SwitchSfActivity"

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4688
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v10, "com.samsung.knox.securefolder"

    const-string/jumbo v11, "com.samsung.knox.securefolder.switcher.SwitchSfActivity"

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4689
    .local v1, "cn2":Landroid/content/ComponentName;
    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    .line 4690
    :cond_5
    sget-object v10, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "is secure folder"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4691
    const-string/jumbo v10, "com.sec.knox.moveto.name"

    aget v11, v7, v2

    invoke-virtual {v6, v11, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4692
    const-string/jumbo v10, "com.sec.knox.moveto.containerType"

    const/16 v11, 0x3ea

    invoke-virtual {v5, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 4693
    const-string/jumbo v10, "com.sec.knox.moveto.containerId"

    aget v11, v7, v2

    invoke-virtual {v5, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 4716
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "cn2":Landroid/content/ComponentName;
    .end local v5    # "item":Landroid/os/Bundle;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :goto_2
    if-eqz v5, :cond_6

    .line 4717
    const-string/jumbo v10, "com.sec.knox.moveto.isSupportMoveTo"

    invoke-virtual {v5, v10, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4718
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4674
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4681
    .end local v3    # "isAllowMoveTo":Ljava/lang/String;
    .restart local v5    # "item":Landroid/os/Bundle;
    :cond_7
    const-string/jumbo v3, "false"

    .restart local v3    # "isAllowMoveTo":Ljava/lang/String;
    goto :goto_1

    .line 4695
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v1    # "cn2":Landroid/content/ComponentName;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_8
    const/4 v5, 0x0

    .local v5, "item":Landroid/os/Bundle;
    goto :goto_2

    .line 4697
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "cn2":Landroid/content/ComponentName;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .local v5, "item":Landroid/os/Bundle;
    :cond_9
    aget v10, v7, v2

    invoke-virtual {p0, v10}, Lcom/samsung/android/knox/SemPersonaManager;->isECContainer(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 4698
    sget-object v10, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "is enterprise contianer"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4699
    const-string/jumbo v10, "com.sec.knox.moveto.name"

    aget v11, v7, v2

    invoke-virtual {p0, v11}, Lcom/samsung/android/knox/SemPersonaManager;->getECName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4700
    const-string/jumbo v10, "com.sec.knox.moveto.containerType"

    const/16 v11, 0x3e8

    invoke-virtual {v5, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 4701
    const-string/jumbo v10, "com.sec.knox.moveto.containerId"

    aget v11, v7, v2

    invoke-virtual {v5, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 4702
    :cond_a
    aget v10, v7, v2

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 4703
    sget-object v10, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "is BBCContainer"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4706
    :cond_b
    sget-object v10, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "is knox"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4707
    if-nez v4, :cond_c

    .line 4708
    const/4 v4, 0x1

    .line 4709
    const-string/jumbo v10, "com.sec.knox.moveto.name"

    const-string/jumbo v11, "Knox"

    invoke-virtual {v5, v10, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4710
    const-string/jumbo v10, "com.sec.knox.moveto.containerType"

    const/16 v11, 0x3e9

    invoke-virtual {v5, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 4711
    const-string/jumbo v10, "com.sec.knox.moveto.containerId"

    const/4 v11, -0x1

    invoke-virtual {v5, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 4713
    :cond_c
    const/4 v5, 0x0

    .local v5, "item":Landroid/os/Bundle;
    goto :goto_2

    .line 4721
    .end local v2    # "i":I
    .end local v5    # "item":Landroid/os/Bundle;
    .local v3, "isAllowMoveTo":Ljava/lang/String;
    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v10

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 4724
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 4726
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 4727
    .local v5, "item":Landroid/os/Bundle;
    const-string/jumbo v10, "com.sec.knox.moveto.name"

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v11

    invoke-virtual {v6, v11, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4728
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v10

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 4729
    const-string/jumbo v10, "com.sec.knox.moveto.containerType"

    const/16 v11, 0x3eb

    invoke-virtual {v5, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 4734
    :goto_4
    const-string/jumbo v10, "com.sec.knox.moveto.containerId"

    const/4 v11, -0x1

    invoke-virtual {v5, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 4736
    const-string/jumbo v10, "move-file-to-owner"

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v11

    const/4 v12, 0x0

    invoke-static {p1, v10, v12, v11}, Lcom/samsung/android/knox/SemPersonaManager;->isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 4737
    const-string/jumbo v3, "true"

    .line 4741
    .local v3, "isAllowMoveTo":Ljava/lang/String;
    :goto_5
    const-string/jumbo v10, "com.sec.knox.moveto.isSupportMoveTo"

    invoke-virtual {v5, v10, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4742
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4747
    .end local v3    # "isAllowMoveTo":Ljava/lang/String;
    .end local v4    # "isKnoxAdded":Z
    .end local v5    # "item":Landroid/os/Bundle;
    :cond_e
    return-object v9

    .line 4732
    .local v3, "isAllowMoveTo":Ljava/lang/String;
    .restart local v4    # "isKnoxAdded":Z
    .restart local v5    # "item":Landroid/os/Bundle;
    :cond_f
    const-string/jumbo v10, "com.sec.knox.moveto.containerType"

    const/16 v11, 0x3ec

    invoke-virtual {v5, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    .line 4739
    :cond_10
    const-string/jumbo v3, "false"

    .local v3, "isAllowMoveTo":Ljava/lang/String;
    goto :goto_5
.end method

.method public getMoveToKnoxStatus()Z
    .locals 3

    .prologue
    .line 866
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 868
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->getMoveToKnoxStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get move to knox status"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 873
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getNonSecureAppList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4434
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4436
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->getNonSecureAppList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 4437
    :catch_0
    move-exception v0

    .line 4438
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to getNonSecureAppList from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4441
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getNormalizedState(I)I
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 1059
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 1061
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getNormalizedState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1062
    :catch_0
    move-exception v0

    .line 1063
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get user info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1066
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 4379
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4381
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 4382
    :catch_0
    move-exception v0

    .line 4383
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to getPackageInfo from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4386
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getPackagesFromInstallWhiteList(I)Ljava/util/List;
    .locals 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2647
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2649
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getPackagesFromInstallWhiteList(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2650
    :catch_0
    move-exception v0

    .line 2651
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to getPackagesFromInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2654
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getParentId(I)I
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 853
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 855
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getParentId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 856
    :catch_0
    move-exception v0

    .line 857
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get parent id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 860
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getParentUserForCurrentPersona()I
    .locals 3

    .prologue
    .line 787
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 789
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->getParentUserForCurrentPersona()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get parent of persona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 794
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getPasswordHint()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2659
    const/4 v1, 0x0

    .line 2660
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v2, :cond_0

    .line 2662
    :try_start_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getPasswordHint"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getPasswordHint()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2668
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 2664
    .restart local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2665
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to getPasswordHint"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPersonaBackgroundTime(I)J
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 2187
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2189
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonaBackgroundTime(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 2190
    :catch_0
    move-exception v0

    .line 2191
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get getPersonaBackgroundTime , inside SemPersonaManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2194
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public getPersonaIcon(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "personaHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 963
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 965
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonaIcon(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 966
    :catch_0
    move-exception v0

    .line 967
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get the persona icon "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 970
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getPersonaIdentification(I)Ljava/lang/String;
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    const/4 v3, 0x0

    .line 2206
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2208
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in SemPersonaManager, getPersonaIdentification()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonaIdentification(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2210
    :catch_0
    move-exception v0

    .line 2211
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to get getPersonaIdentification id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2214
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getPersonaIds()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2395
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2397
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonaIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2398
    :catch_0
    move-exception v0

    .line 2399
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to getPersonaIds"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2402
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 817
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 819
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 820
    :catch_0
    move-exception v0

    .line 821
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get persona info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 824
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getPersonaSamsungAccount(I)Ljava/lang/String;
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 924
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonaSamsungAccount(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 925
    :catch_0
    move-exception v0

    .line 926
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not retrieve persona SamsungAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 927
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getPersonaService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1109
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPersonaService() name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    .line 1112
    const-string/jumbo v0, "persona_policy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    new-instance v0, Landroid/os/PersonaPolicyManager;

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/PersonaPolicyManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPersonaPolicyManager;)V

    return-object v0

    .line 1116
    :cond_0
    return-object v3
.end method

.method public getPersonaType(I)Ljava/lang/String;
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 900
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 902
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonaType(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 903
    :catch_0
    move-exception v0

    .line 904
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not retrieve persona Type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 907
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getPersonas()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/SemPersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 761
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 763
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonas(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get persona list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 768
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getPersonas(Z)Ljava/util/List;
    .locals 4
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/SemPersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 802
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 804
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonas(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get persona list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 809
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getPersonasForCreator(IZ)Ljava/util/List;
    .locals 4
    .param p1, "creatorUid"    # I
    .param p2, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/SemPersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 980
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 982
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonasForCreator(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 983
    :catch_0
    move-exception v0

    .line 984
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get the personas for a creator uid "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 987
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getPersonasForUser(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/SemPersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 775
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 777
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonasForUser(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get persona list for user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 782
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getRCPInterface()Landroid/content/IRCPInterface;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1165
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in getRCPInterface"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 1167
    .local v1, "rcpm":Lcom/samsung/android/knox/SemRemoteContentManager;
    const/4 v0, 0x0

    .line 1168
    .local v0, "rcpInterface":Landroid/content/IRCPInterface;
    if-eqz v1, :cond_0

    .line 1169
    invoke-virtual {v1}, Lcom/samsung/android/knox/SemRemoteContentManager;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v0

    .line 1170
    .local v0, "rcpInterface":Landroid/content/IRCPInterface;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "in getRCPInterface rcpInterface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    return-object v0

    .line 1173
    .local v0, "rcpInterface":Landroid/content/IRCPInterface;
    :cond_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Received getRCPInterface as null from bridge manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    return-object v4
.end method

.method public getScreenOffTime(I)J
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    .line 2548
    const-wide/16 v2, 0x1388

    .line 2549
    .local v2, "screenOffTime":J
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2551
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getScreenOffTime(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2556
    :cond_0
    :goto_0
    return-wide v2

    .line 2552
    :catch_0
    move-exception v0

    .line 2553
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "failed to screenOffTime"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 3545
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getStateManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3546
    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ISemPersonaManager;ILcom/samsung/android/knox/SemPersonaManager$StateManager;)V

    return-object v0
.end method

.method public getUserManagedPersonas(Z)Ljava/util/List;
    .locals 5
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/SemPersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2284
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2286
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUserManagedPersonas() excludeDying is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getUserManagedPersonas(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2288
    :catch_0
    move-exception v0

    .line 2289
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed getUserManagedPersonas()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2292
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v4
.end method

.method public handleHomeShow()Z
    .locals 3

    .prologue
    .line 2327
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in SemPersonaManager, handleHomeShow()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->handleHomeShow()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2329
    :catch_0
    move-exception v0

    .line 2330
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to get handleHomeShow "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2332
    const/4 v1, 0x1

    return v1
.end method

.method public handleNotificationWhenUnlock(ILandroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "activityOptions"    # Landroid/os/Bundle;
    .param p4, "notificationKey"    # Ljava/lang/String;

    .prologue
    .line 4910
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4912
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/knox/ISemPersonaManager;->handleNotificationWhenUnlock(ILandroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4909
    :cond_0
    :goto_0
    return-void

    .line 4913
    :catch_0
    move-exception v0

    .line 4914
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not call handleNotificationWhenUnlock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public hideScrim()V
    .locals 3

    .prologue
    .line 2937
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2939
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->hideScrim()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2936
    :cond_0
    :goto_0
    return-void

    .line 2940
    :catch_0
    move-exception v0

    .line 2941
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to hideScrim()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public installApplications(ILjava/util/List;)Z
    .locals 3
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1083
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 1085
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in SemPersonaManager, installDefaultApplications(), calling service API"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->installApplications(ILjava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1087
    :catch_0
    move-exception v0

    .line 1088
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not install default apps into persona with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1091
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isBootCompleted()Z
    .locals 3

    .prologue
    .line 4583
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4585
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->isBootCompleted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 4586
    :catch_0
    move-exception v0

    .line 4587
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4590
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isECContainer(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 4571
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4573
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->isECContainer(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 4574
    :catch_0
    move-exception v0

    .line 4575
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4578
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isEnabledFingerprintIndex(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 4210
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4212
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isEnabledFingerprintIndex"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4213
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->isEnabledFingerprintIndex(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 4214
    :catch_0
    move-exception v0

    .line 4215
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to isEnabledFingerprintIndex from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4218
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isExternalStorageEnabled(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 4754
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4756
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->isExternalStorageEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 4757
    :catch_0
    move-exception v0

    .line 4758
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4761
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isFOTAUpgrade()Z
    .locals 3

    .prologue
    .line 735
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 737
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->isFOTAUpgrade()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get FOTAUpgrade"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 742
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isFingerLockscreenActivated()Z
    .locals 4

    .prologue
    .line 3500
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3502
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFingerLockscreenActivated, pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3503
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->isFingerLockscreenActivated(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3504
    :catch_0
    move-exception v0

    .line 3505
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read finger activated value from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3508
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isFingerSupplementActivated()Z
    .locals 4

    .prologue
    .line 3483
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3485
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFingerSupplementActivated, pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3486
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->isFingerSupplementActivated(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3487
    :catch_0
    move-exception v0

    .line 3488
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read finger activated value from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3491
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isFotaUpgradeVersionChanged()Z
    .locals 3

    .prologue
    .line 4456
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4458
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->isFotaUpgradeVersionChanged()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 4459
    :catch_0
    move-exception v0

    .line 4460
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get isFotaUpgradeVersionChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4463
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isInstallableAppInContainer(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 19
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "containerId"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2068
    const/4 v8, 0x0

    .line 2070
    .local v8, "isApprovedPackages":Z
    if-eqz p3, :cond_0

    const-string/jumbo v15, ""

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string/jumbo v15, "null"

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2071
    :cond_0
    const/4 v15, 0x0

    return v15

    .line 2074
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v15

    if-nez v15, :cond_2

    .line 2075
    const/4 v15, 0x0

    return v15

    .line 2079
    :cond_2
    sget-object v16, Lcom/samsung/android/knox/SemPersonaManager;->excludedPackages:[Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    :goto_0
    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    aget-object v11, v16, v15

    .line 2080
    .local v11, "pkg":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 2081
    const/4 v15, 0x0

    return v15

    .line 2079
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 2086
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_4
    :try_start_0
    sget-object v15, Lcom/samsung/android/knox/SemPersonaManager;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v15, :cond_5

    .line 2087
    const-string/jumbo v15, "persona"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/knox/SemPersonaManager;

    sput-object v15, Lcom/samsung/android/knox/SemPersonaManager;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 2090
    :cond_5
    sget-object v15, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    if-nez v15, :cond_6

    .line 2091
    sget-object v15, Lcom/samsung/android/knox/SemPersonaManager;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const-string/jumbo v16, "persona_policy"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PersonaPolicyManager;

    sput-object v15, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    .line 2094
    :cond_6
    const-string/jumbo v10, "DisallowPackage"

    .line 2095
    .local v10, "key":Ljava/lang/String;
    sget-object v15, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    move/from16 v0, p2

    invoke-virtual {v15, v10, v0}, Landroid/os/PersonaPolicyManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 2097
    .local v5, "disallowPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "pkg$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2098
    .restart local v11    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-eqz v15, :cond_7

    .line 2099
    const/4 v15, 0x0

    return v15

    .line 2102
    .end local v5    # "disallowPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v12    # "pkg$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v7

    .line 2103
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2106
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_8
    sget-object v16, Lcom/samsung/android/knox/SemPersonaManager;->mdmPackages:[Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_a

    aget-object v11, v16, v15

    .line 2107
    .restart local v11    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 2108
    const/4 v15, 0x0

    return v15

    .line 2106
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2113
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_a
    sget-object v16, Lcom/samsung/android/knox/SemPersonaManager;->approvedPackages:[Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    :goto_2
    move/from16 v0, v17

    if-ge v15, v0, :cond_c

    aget-object v11, v16, v15

    .line 2114
    .restart local v11    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 2115
    const/4 v8, 0x1

    .line 2113
    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 2121
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_c
    :try_start_1
    sget-object v15, Lcom/samsung/android/knox/SemPersonaManager;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v15, :cond_d

    .line 2122
    const-string/jumbo v15, "persona"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/knox/SemPersonaManager;

    sput-object v15, Lcom/samsung/android/knox/SemPersonaManager;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 2125
    :cond_d
    sget-object v15, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    if-nez v15, :cond_e

    .line 2126
    sget-object v15, Lcom/samsung/android/knox/SemPersonaManager;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const-string/jumbo v16, "persona_policy"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PersonaPolicyManager;

    sput-object v15, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    .line 2129
    :cond_e
    if-nez v8, :cond_10

    .line 2130
    const-string/jumbo v10, "AllowPackage"

    .line 2131
    .restart local v10    # "key":Ljava/lang/String;
    sget-object v15, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    move/from16 v0, p2

    invoke-virtual {v15, v10, v0}, Landroid/os/PersonaPolicyManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 2133
    .local v2, "allowPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "pkg$iterator":Ljava/util/Iterator;
    :cond_f
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2134
    .restart local v11    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    if-eqz v15, :cond_f

    .line 2135
    const/4 v8, 0x1

    goto :goto_3

    .line 2139
    .end local v2    # "allowPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v12    # "pkg$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v7

    .line 2140
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2144
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_10
    if-nez v8, :cond_18

    .line 2145
    const/4 v3, 0x0

    .line 2147
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x80

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 2148
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v3, :cond_11

    .line 2149
    const/4 v15, 0x0

    return v15

    .line 2150
    :cond_11
    iget-object v4, v3, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 2151
    .local v4, "b":Landroid/os/Bundle;
    if-eqz v4, :cond_12

    const-string/jumbo v15, "com.samsung.android.multiuser.install_only_owner"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 2152
    :goto_4
    if-eqz v4, :cond_13

    if-eqz v9, :cond_13

    .line 2153
    sget-object v15, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "isOnlyForOwner() true - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    const/4 v15, 0x0

    return v15

    .line 2151
    :cond_12
    const/4 v9, 0x0

    .local v9, "isOnlyForOwner":Z
    goto :goto_4

    .line 2157
    .end local v9    # "isOnlyForOwner":Z
    :cond_13
    if-eqz v4, :cond_15

    const-string/jumbo v15, "com.samsung.android.vr.application.mode"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2158
    .local v14, "vrApplicationMode":Ljava/lang/String;
    :goto_5
    if-eqz v14, :cond_16

    .line 2159
    const-string/jumbo v15, "vr_only"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    const-string/jumbo v15, "dual"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 2160
    :cond_14
    sget-object v15, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "isVrApp true - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2161
    const/4 v15, 0x0

    return v15

    .line 2157
    .end local v14    # "vrApplicationMode":Ljava/lang/String;
    :cond_15
    const/4 v14, 0x0

    goto :goto_5

    .line 2165
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "b":Landroid/os/Bundle;
    :catch_2
    move-exception v6

    .line 2166
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v15, 0x0

    return v15

    .line 2169
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "b":Landroid/os/Bundle;
    .restart local v14    # "vrApplicationMode":Ljava/lang/String;
    :cond_16
    iget v15, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v15, v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_17

    .line 2170
    iget v15, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v15, v15, 0x80

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ne v15, v0, :cond_18

    .line 2171
    :cond_17
    const/4 v15, 0x0

    return v15

    .line 2175
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "b":Landroid/os/Bundle;
    .end local v14    # "vrApplicationMode":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v15, :cond_19

    .line 2177
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v15, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager;->isPossibleAddAppsToContainer(Ljava/lang/String;I)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v15

    return v15

    .line 2178
    :catch_3
    move-exception v13

    .line 2179
    .local v13, "re":Landroid/os/RemoteException;
    sget-object v15, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "Could not get isPossibleAddAppsToContainer , inside SemPersonaManager with exception:"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2182
    .end local v13    # "re":Landroid/os/RemoteException;
    :cond_19
    const/4 v15, 0x0

    return v15
.end method

.method public isKioskContainerExistOnDevice()Z
    .locals 6

    .prologue
    .line 2731
    const/4 v2, 0x0

    .line 2732
    .local v2, "result":Z
    iget-object v4, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v4, :cond_0

    .line 2734
    :try_start_0
    const-string/jumbo v4, "sys.knox.exists"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2735
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v0, "5"

    .line 2736
    .local v0, "FLAG_KIOSK":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 2737
    const-string/jumbo v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 2744
    .end local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .end local v2    # "result":Z
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 2739
    .restart local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .restart local v2    # "result":Z
    .restart local v3    # "value":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v4}, Lcom/samsung/android/knox/ISemPersonaManager;->isKioskContainerExistOnDevice()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, "result":Z
    goto :goto_0

    .line 2740
    .end local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .local v2, "result":Z
    :catch_0
    move-exception v1

    .line 2741
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "failed to isKioskContainerExistOnDevice"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isKioskModeEnabled(I)Z
    .locals 7
    .param p1, "personaId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2711
    const/4 v2, 0x0

    .line 2712
    .local v2, "result":Z
    iget-object v5, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v5, :cond_0

    .line 2714
    :try_start_0
    const-string/jumbo v5, "sys.knox.exists"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2715
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v0, "5"

    .line 2716
    .local v0, "FLAG_KIOSK":Ljava/lang/String;
    sget-object v5, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "isKioskModeEnabled  persona "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 2718
    const-string/jumbo v5, "5"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3, p1}, Lcom/samsung/android/knox/SemPersonaManager;->containerExists(Ljava/lang/String;I)Z

    move-result v2

    .line 2725
    .end local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .end local v2    # "result":Z
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .restart local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .restart local v2    # "result":Z
    .restart local v3    # "value":Ljava/lang/String;
    :cond_1
    move v2, v4

    .line 2718
    goto :goto_0

    .line 2720
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v4, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->isKioskModeEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, "result":Z
    goto :goto_0

    .line 2721
    .end local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .local v2, "result":Z
    :catch_0
    move-exception v1

    .line 2722
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "failed to isKioskModeEnabled"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isKnoxActivated()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4508
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isKnoxKeyguardShown()Z
    .locals 1

    .prologue
    .line 2932
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState()Z

    move-result v0

    return v0
.end method

.method public isKnoxKeyguardShown(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 2883
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2885
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->isKnoxKeyguardShown(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2886
    :catch_0
    move-exception v0

    .line 2887
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to isKnoxKeyguardShown"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2890
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isKnoxMultiWindowExist()Z
    .locals 3

    .prologue
    .line 4631
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4633
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->isKnoxMultiWindowExist()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 4634
    :catch_0
    move-exception v0

    .line 4635
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4638
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isKnoxReachedToMax()Z
    .locals 9

    .prologue
    .line 4784
    const/4 v1, 0x0

    .line 4785
    .local v1, "isReached":Z
    iget-object v7, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v7, :cond_2

    .line 4787
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v5

    .line 4788
    .local v5, "pi":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    const/4 v2, 0x0

    .line 4789
    .local v2, "knoxSize":I
    const/4 v0, 0x0

    .line 4790
    .local v0, "BBCSize":I
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 4791
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "p$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 4792
    .local v3, "p":Lcom/samsung/android/knox/SemPersonaInfo;
    add-int/lit8 v2, v2, 0x1

    .line 4793
    iget v7, v3, Lcom/samsung/android/knox/SemPersonaInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v8, 0xc3

    if-lt v7, v8, :cond_0

    .line 4794
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4797
    .end local v3    # "p":Lcom/samsung/android/knox/SemPersonaInfo;
    :cond_1
    sub-int v7, v2, v0

    const/4 v8, 0x2

    if-lt v7, v8, :cond_2

    .line 4798
    const/4 v1, 0x1

    .line 4805
    .end local v0    # "BBCSize":I
    .end local v2    # "knoxSize":I
    .end local v4    # "p$iterator":Ljava/util/Iterator;
    .end local v5    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :cond_2
    :goto_1
    return v1

    .line 4801
    :catch_0
    move-exception v6

    .line 4802
    .local v6, "re":Landroid/os/RemoteException;
    sget-object v7, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Failed to call isKnoxReachedtoMax"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public isLightWeightContainer(I)Z
    .locals 2
    .param p1, "knoxId"    # I

    .prologue
    .line 4484
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v0

    .line 4485
    .local v0, "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    if-nez v0, :cond_0

    .line 4486
    const/4 v1, 0x0

    return v1

    .line 4488
    :cond_0
    iget-boolean v1, v0, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    return v1
.end method

.method public isNFCAllowed(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 4158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->isNFCAllowed(ILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public isNFCAllowed(ILandroid/content/Intent;)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 4171
    if-eqz p2, :cond_1

    .line 4172
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 4173
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 4174
    iget-object v5, p0, Lcom/samsung/android/knox/SemPersonaManager;->NFCblackList:[Ljava/lang/String;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v1, v5, v3

    .line 4175
    .local v1, "intentData":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4176
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "NFC action is in blacklist. return false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4177
    return v4

    .line 4174
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4182
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "intentData":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v3, :cond_2

    .line 4184
    :try_start_0
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isNFCAllowed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4185
    iget-object v3, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v3, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->isNFCAllowed(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4186
    :catch_0
    move-exception v2

    .line 4187
    .local v2, "re":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "failed to isNFCAllowed from PMS"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4190
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method public isPackageInInstallWhiteList(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 2631
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2633
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->isPackageInInstallWhiteList(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2634
    :catch_0
    move-exception v0

    .line 2635
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to isPackageInInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2638
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isPersonaActivated()Z
    .locals 7

    .prologue
    .line 1016
    const/4 v0, 0x0

    .line 1018
    .local v0, "isKnoxActive":Z
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v2

    .line 1020
    .local v2, "personaIds":[I
    if-eqz v2, :cond_1

    .line 1021
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v2, v3

    .line 1023
    .local v1, "personaId":I
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->inState(Lcom/samsung/android/knox/SemPersonaState;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1024
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->inState(Lcom/samsung/android/knox/SemPersonaState;)Z

    move-result v5

    .line 1023
    if-nez v5, :cond_0

    .line 1025
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v5

    sget-object v6, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->isAttribute(Landroid/content/pm/PersonaAttribute;)Z

    move-result v5

    .line 1023
    if-eqz v5, :cond_2

    .line 1026
    :cond_0
    const/4 v0, 0x1

    .line 1032
    .end local v1    # "personaId":I
    :cond_1
    return v0

    .line 1021
    .restart local v1    # "personaId":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public isResetPersonaOnRebootEnabled(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 2814
    const/4 v1, 0x0

    .line 2815
    .local v1, "result":Z
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v2, :cond_0

    .line 2817
    :try_start_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isResetPersonaOnRebootEnabled  persona "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->isResetPersonaOnRebootEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2823
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    return v1

    .line 2819
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 2820
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to isResetPersonaOnRebootEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isSessionExpired(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 2309
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2311
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSessionExpired() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->isSessionExpired(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2313
    :catch_0
    move-exception v0

    .line 2314
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to execute lockPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2317
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public isUserManaged()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4513
    const-string/jumbo v0, "2"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 4514
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shopdemo"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 4516
    :cond_0
    return v3

    .line 4515
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderMetaDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4517
    return v2
.end method

.method public launchPersonaHome(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 711
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 713
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->launchPersonaHome(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not switch to profile user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 718
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public lockPersona(I)V
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 2297
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2299
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lockPersona() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->lockPersona(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2296
    :cond_0
    :goto_0
    return-void

    .line 2301
    :catch_0
    move-exception v0

    .line 2302
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to execute lockPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public markForRemoval(ILandroid/content/ComponentName;)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "removalActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 2258
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2260
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "markForRemoval() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->markForRemoval(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2257
    :cond_0
    :goto_0
    return-void

    .line 2262
    :catch_0
    move-exception v0

    .line 2263
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "markForRemoval()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mountOldContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "srcPath"    # Ljava/lang/String;
    .param p3, "dstPath"    # Ljava/lang/String;
    .param p4, "excludeMediaTypes"    # I
    .param p5, "containerId"    # I

    .prologue
    .line 3704
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    .line 3706
    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mountOldContainer, pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3707
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/ISemPersonaManager;->mountOldContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 3708
    :catch_0
    move-exception v6

    .line 3709
    .local v6, "re":Landroid/os/RemoteException;
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "can\'t mount Knox 1.0 partition from PMS"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3712
    .end local v6    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public needToSkipResetOnReboot()Z
    .locals 3

    .prologue
    .line 747
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 749
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->needToSkipResetOnReboot()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get needToSkipResetOnReboot"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 754
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public notifyKeyguardShow(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "isShown"    # Z

    .prologue
    .line 2866
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2868
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyKeyguardShow for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is shown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->notifyKeyguardShow(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2865
    :cond_0
    :goto_0
    return-void

    .line 2870
    :catch_0
    move-exception v0

    .line 2871
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to notifyKeyguardShow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onKeyguardBackPressed(I)V
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 3688
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3690
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onKeyguardBackPressed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3691
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->onKeyguardBackPressed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3687
    :cond_0
    :goto_0
    return-void

    .line 3692
    :catch_0
    move-exception v0

    .line 3693
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to onKeyguardBackPressed from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onWakeLockChange(ZIIILjava/lang/String;)V
    .locals 7
    .param p1, "isAcquired"    # Z
    .param p2, "flags"    # I
    .param p3, "ownerUid"    # I
    .param p4, "ownerPid"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    .line 2585
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/ISemPersonaManager;->onWakeLockChange(ZIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2582
    :cond_0
    :goto_0
    return-void

    .line 2586
    :catch_0
    move-exception v6

    .line 2587
    .local v6, "re":Landroid/os/RemoteException;
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "failed to onWakeLockChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshTimer(I)V
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 2561
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2563
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->refreshTimer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2560
    :cond_0
    :goto_0
    return-void

    .line 2564
    :catch_0
    move-exception v0

    .line 2565
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to refreshTimer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerKnoxModeChangeObserver(Landroid/content/pm/IKnoxModeChangeObserver;)Z
    .locals 3
    .param p1, "mKnoxModeChangeObserver"    # Landroid/content/pm/IKnoxModeChangeObserver;

    .prologue
    .line 687
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 689
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->registerKnoxModeChangeObserver(Landroid/content/pm/IKnoxModeChangeObserver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 690
    :catch_0
    move-exception v0

    .line 691
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not registerKnoxModeChangeObserver a callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 694
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    .locals 3
    .param p1, "mSystemPersonaObserver"    # Landroid/content/pm/ISystemPersonaObserver;

    .prologue
    .line 675
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 677
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not registerSystemPersonaObserver a callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 682
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public registerUser(Landroid/content/pm/IPersonaCallback;)Z
    .locals 3
    .param p1, "client"    # Landroid/content/pm/IPersonaCallback;

    .prologue
    .line 637
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 639
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in SemPersonaManager, registerUser(), calling service API"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->registerUser(Landroid/content/pm/IPersonaCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not create a user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 645
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public removeAppForPersona(Lcom/samsung/android/knox/SemPersonaManager$AppType;Ljava/lang/String;I)V
    .locals 3
    .param p1, "type"    # Lcom/samsung/android/knox/SemPersonaManager$AppType;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "personaId"    # I

    .prologue
    .line 2443
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2445
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->removeAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2442
    :cond_0
    :goto_0
    return-void

    .line 2446
    :catch_0
    move-exception v0

    .line 2447
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to removeAppForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeKnoxAppsinFota(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 4468
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4470
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->removeKnoxAppsinFota(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4467
    :cond_0
    :goto_0
    return-void

    .line 4471
    :catch_0
    move-exception v0

    .line 4472
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not removeKnoxAppsinFota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removePackageFromInstallWhiteList(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 2492
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2494
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->removePackageFromInstallWhiteList(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2491
    :cond_0
    :goto_0
    return-void

    .line 2495
    :catch_0
    move-exception v0

    .line 2496
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to removePackageFromInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removePersona(I)I
    .locals 3
    .param p1, "personaHandle"    # I

    .prologue
    .line 723
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 725
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->removePersona(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not remove Persona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 730
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/16 v1, -0x4b1

    return v1
.end method

.method public resetPassword(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 2506
    const/4 v1, 0x0

    .line 2507
    .local v1, "result":Z
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v2, :cond_0

    .line 2509
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->resetPassword(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2514
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    return v1

    .line 2510
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 2511
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to resetPassword"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetPersona(I)I
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 1071
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 1073
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->resetPersona(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1074
    :catch_0
    move-exception v0

    .line 1075
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not reset the persona "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1078
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public resetPersonaOnReboot(IZ)Z
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 2770
    const/4 v1, 0x0

    .line 2771
    .local v1, "result":Z
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v2, :cond_0

    .line 2773
    :try_start_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "resetPersonaOnReboot  persona "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->resetPersonaOnReboot(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2779
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    return v1

    .line 2775
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 2776
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to resetPersonaOnReboot"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetPersonaPassword(ILjava/lang/String;I)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "pwdResetToken"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .prologue
    .line 4269
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4271
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetPersonaPassword for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->resetPersonaPassword(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4267
    :cond_0
    :goto_0
    return-void

    .line 4273
    :catch_0
    move-exception v0

    .line 4274
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to resetPersonaPassword from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public savePasswordInTima(ILjava/lang/String;)Z
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 2524
    const/4 v1, 0x0

    .line 2525
    .local v1, "result":Z
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v2, :cond_0

    .line 2527
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->savePasswordInTima(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2532
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    return v1

    .line 2528
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 2529
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to savePasswordInTima"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAccessPermission(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .param p3, "canAccess"    # Z

    .prologue
    .line 2971
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2973
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAccessPermission for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " personaId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " canAccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->setAccessPermission(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2970
    :cond_0
    :goto_0
    return-void

    .line 2975
    :catch_0
    move-exception v0

    .line 2976
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to setAccessPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBackPressed(IZ)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "isBackPressed"    # Z

    .prologue
    .line 2755
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2757
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setBackPressed(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2754
    :cond_0
    :goto_0
    return-void

    .line 2758
    :catch_0
    move-exception v0

    .line 2759
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not set back pressed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFidoRpContext(ILjava/lang/String;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "rpContext"    # Ljava/lang/String;

    .prologue
    .line 3308
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3310
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsBioReset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setFidoRpContext(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3307
    :cond_0
    :goto_0
    return-void

    .line 3312
    :catch_0
    move-exception v0

    .line 3313
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read setFidoRpContext from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFingerCount(I)V
    .locals 3
    .param p1, "setFingerCount"    # I

    .prologue
    .line 3405
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3407
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFingerCount"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->setFingerCount(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3404
    :cond_0
    :goto_0
    return-void

    .line 3409
    :catch_0
    move-exception v0

    .line 3410
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read setFingerCount from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFingerprintHash(ILjava/util/List;)V
    .locals 3
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4238
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4240
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFingerprintHash"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4241
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setFingerprintHash(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4237
    :cond_0
    :goto_0
    return-void

    .line 4242
    :catch_0
    move-exception v0

    .line 4243
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to setFingerprintHash from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFingerprintIndex(IZ[I)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "enable"    # Z
    .param p3, "list"    # [I

    .prologue
    .line 4197
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4199
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFingerprintIndex"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4200
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->setFingerprintIndex(IZ[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4196
    :cond_0
    :goto_0
    return-void

    .line 4201
    :catch_0
    move-exception v0

    .line 4202
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to setFingerprintIndex from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFocusedUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 3466
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3468
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFocusedUser"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->setFocusedUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3465
    :cond_0
    :goto_0
    return-void

    .line 3470
    :catch_0
    move-exception v0

    .line 3471
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFocusedUser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFsMountState(IZ)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "mountState"    # Z

    .prologue
    .line 1037
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 1039
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setFsMountState(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    :cond_0
    :goto_0
    return-void

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not setFsMountState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIsAdminLockedJustBefore(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "isAdminLockedJustBefore"    # Z

    .prologue
    .line 3340
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3342
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsAdminLockedJustBefore"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setIsAdminLockedJustBefore(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3339
    :cond_0
    :goto_0
    return-void

    .line 3344
    :catch_0
    move-exception v0

    .line 3345
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read setIsAdminLockedJustBefore from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIsFingerAsSupplement(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "isFingerprintAsSupplement"    # Z

    .prologue
    .line 3047
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3049
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsFingerAsSupplement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setIsFingerAsSupplement(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3046
    :cond_0
    :goto_0
    return-void

    .line 3051
    :catch_0
    move-exception v0

    .line 3052
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read setIsFingerAsSupplement from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIsFingerIdentifyFailed(Z)V
    .locals 3
    .param p1, "isFingerIdentifyFailed"    # Z

    .prologue
    .line 3373
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3375
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsFingerIdentifyFailed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->setIsFingerIdentifyFailed(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3372
    :cond_0
    :goto_0
    return-void

    .line 3377
    :catch_0
    move-exception v0

    .line 3378
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read setIsFingerIdentifyFailed from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIsFingerReset(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "isFingerReset"    # Z

    .prologue
    .line 3241
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3243
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsFingerReset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setIsFingerReset(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3240
    :cond_0
    :goto_0
    return-void

    .line 3245
    :catch_0
    move-exception v0

    .line 3246
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read setIsFingerReset from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIsFingerTimeout(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "isFingerTimeout"    # Z

    .prologue
    .line 3177
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3179
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsFingerTimeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setIsFingerTimeout(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3176
    :cond_0
    :goto_0
    return-void

    .line 3181
    :catch_0
    move-exception v0

    .line 3182
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read setIsFingerTimeout from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIsIrisReset(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "isIrisReset"    # Z

    .prologue
    .line 3273
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3275
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsBioReset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setIsIrisReset(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3272
    :cond_0
    :goto_0
    return-void

    .line 3277
    :catch_0
    move-exception v0

    .line 3278
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read setIsBioReset from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIsIrisTimeout(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "isIrisTimeout"    # Z

    .prologue
    .line 3209
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3211
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsBioTimeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3212
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setIsIrisTimeout(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3208
    :cond_0
    :goto_0
    return-void

    .line 3213
    :catch_0
    move-exception v0

    .line 3214
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read setIsBioTimeout from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIsQuickAccessUIEnabled(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "isUnlockBefore"    # Z

    .prologue
    .line 3144
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3146
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsQuickAccessUIEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setIsQuickAccessUIEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3143
    :cond_0
    :goto_0
    return-void

    .line 3148
    :catch_0
    move-exception v0

    .line 3149
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read setIsQuickAccessUIEnabled from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIsUnlockedAfterTurnOn(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "isUnlockBefore"    # Z

    .prologue
    .line 3111
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3113
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsUnlockedAfterTurnOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setIsUnlockedAfterTurnOn(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3110
    :cond_0
    :goto_0
    return-void

    .line 3115
    :catch_0
    move-exception v0

    .line 3116
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read setIsUnlockedAfterTurnOn from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setKnoxBackupPin(ILjava/lang/String;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "backupPin"    # Ljava/lang/String;

    .prologue
    .line 3757
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3759
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setKnoxBackupPin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3760
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setKnoxBackupPin(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3756
    :cond_0
    :goto_0
    return-void

    .line 3761
    :catch_0
    move-exception v0

    .line 3762
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to verifyKnoxBackupPin from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setKnoxSecurityTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 3662
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->setKnoxSecurityTimeout(II)V

    .line 3661
    return-void
.end method

.method public setKnoxSecurityTimeout(II)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 3672
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3674
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setKnoxSecurityTimeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3675
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setKnoxSecurityTimeout(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3671
    :cond_0
    :goto_0
    return-void

    .line 3676
    :catch_0
    move-exception v0

    .line 3677
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to setKnoxSecurityTimeout from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLastKeyguardUnlockTime(IJ)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "lastKeyguardUnlockTime"    # J

    .prologue
    .line 3079
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3081
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setLastKeyguardUnlockTime"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->setLastKeyguardUnlockTime(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3078
    :cond_0
    :goto_0
    return-void

    .line 3083
    :catch_0
    move-exception v0

    .line 3084
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read setLastKeyguardUnlockTime from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V
    .locals 5
    .param p1, "timeMs"    # J
    .param p3, "personaId"    # I

    .prologue
    .line 2537
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2539
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2536
    :cond_0
    :goto_0
    return-void

    .line 2540
    :catch_0
    move-exception v0

    .line 2541
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to setMaximumScreenOffTimeoutFromDeviceAdmin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMoveToKnoxStatus(Z)V
    .locals 3
    .param p1, "isProgressing"    # Z

    .prologue
    .line 878
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 880
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->setMoveToKnoxStatus(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :cond_0
    :goto_0
    return-void

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not set move to knox status"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPersonaIcon(ILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "personaHandle"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 947
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 949
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setPersonaIcon(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    :cond_0
    :goto_0
    return-void

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not set the persona icon "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPersonaName(ILjava/lang/String;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 889
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 891
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setPersonaName(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not set persona name"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPersonaSamsungAccount(ILjava/lang/String;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "samsungAccount"    # Ljava/lang/String;

    .prologue
    .line 934
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setPersonaSamsungAccount(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    :goto_0
    return-void

    .line 935
    :catch_0
    move-exception v0

    .line 936
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not set persona SamsungAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPersonaType(ILjava/lang/String;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "personaType"    # Ljava/lang/String;

    .prologue
    .line 912
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 914
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setPersonaType(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 915
    :catch_0
    move-exception v0

    .line 916
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not set persona Type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setShownHelp(IIZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "containerType"    # I
    .param p3, "value"    # Z

    .prologue
    .line 3002
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3004
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setShownHelp for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->setShownHelp(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3001
    :cond_0
    :goto_0
    return-void

    .line 3006
    :catch_0
    move-exception v0

    .line 3007
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to setShownHelp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public settingSyncAllowed(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 2407
    const/4 v1, 0x0

    .line 2408
    .local v1, "result":Z
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v2, :cond_0

    .line 2410
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->settingSyncAllowed(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2415
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    return v1

    .line 2411
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 2412
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to execute settingSyncAllowed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setupComplete(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 4282
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4284
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setupComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4285
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->setupComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4281
    :cond_0
    :goto_0
    return-void

    .line 4286
    :catch_0
    move-exception v0

    .line 4287
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to setupComplete"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showKeyguard(II)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "flags"    # I

    .prologue
    .line 2834
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2836
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->showKeyguard(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2833
    :cond_0
    :goto_0
    return-void

    .line 2837
    :catch_0
    move-exception v0

    .line 2838
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not showKeyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startActivityThroughPersona(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4891
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 4893
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->startActivityThroughPersona(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 4894
    :catch_0
    move-exception v0

    .line 4895
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not startActivityThroughPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4898
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public switchPersonaAndLaunch(ILandroid/content/Intent;)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 699
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 701
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not switch to persona and launch"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 706
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public unInstallSystemApplications(ILjava/util/List;)I
    .locals 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1095
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 1096
    .local v1, "result":I
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v2, :cond_0

    .line 1098
    :try_start_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in SemPersonaManager, unInstallSystemApplications(), calling service API"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->unInstallSystemApplications(ILjava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1104
    :cond_0
    :goto_0
    return v1

    .line 1100
    :catch_0
    move-exception v0

    .line 1101
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Could not uninstall system package into persona with exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unmarkForRemoval(I)V
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 2271
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2273
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unmarkForRemoval() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->unmarkForRemoval(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2270
    :cond_0
    :goto_0
    return-void

    .line 2275
    :catch_0
    move-exception v0

    .line 2276
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed unmarkForRemoval()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unmountOldContainer(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dstPath"    # Ljava/lang/String;

    .prologue
    .line 3721
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3723
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unmountOldContainer, pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3724
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->unmountOldContainer(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3725
    :catch_0
    move-exception v0

    .line 3726
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t unmount Knox 1.0 partition from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3729
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public updatePersonaInfo(ILjava/lang/String;II)Z
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "adminUid"    # I
    .param p4, "creatorUid"    # I

    .prologue
    .line 2796
    const/4 v1, 0x0

    .line 2797
    .local v1, "result":Z
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v2, :cond_0

    .line 2799
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/knox/ISemPersonaManager;->updatePersonaInfo(ILjava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2805
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSemPersonaInfo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    return v1

    .line 2801
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 2802
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to updatePersonaInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public userActivity(I)V
    .locals 4
    .param p1, "event"    # I

    .prologue
    .line 2572
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 2574
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->userActivity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2571
    :cond_0
    :goto_0
    return-void

    .line 2575
    :catch_0
    move-exception v0

    .line 2576
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to userActivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public verifyKnoxBackupPin(ILjava/lang/String;)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "backupPin"    # Ljava/lang/String;

    .prologue
    .line 3740
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3742
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "verifyKnoxBackupPin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3743
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->verifyKnoxBackupPin(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3744
    :catch_0
    move-exception v0

    .line 3745
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t verify Knox Backup Pin from PMS. return default value"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3748
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
