.class public Lcom/samsung/android/knox/SemPersonaManager;
.super Ljava/lang/Object;
.source "SemPersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/SemPersonaManager$AppType;,
        Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;,
        Lcom/samsung/android/knox/SemPersonaManager$PathStrategy;
    }
.end annotation


# static fields
.field public static final ACCESS_TYPE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final ACCESS_TYPE_SDCARD:Ljava/lang/String; = "sdcard"

.field public static final ACTION_CHANGE_CREDENTIAL_SCREEN:Ljava/lang/String; = "com.samsung.android.knox.CHANGE_CREDENTIAL_SCREEN"

.field private static final ACTION_CONFIRM_PROFILE_CREDENTIAL_WITH_USER:Ljava/lang/String; = "com.samsung.android.knox.COMFIRM_CREDENTIAL"

.field public static final ACTION_LOCKDOWN_SCREEN:Ljava/lang/String; = "com.samsung.android.knox.LOCKDOWN_SCREEN"

.field public static final ACTION_LOCK_SCREEN_STATE_CHANGED:Ljava/lang/String; = "com.sec.knox.keyguard.show"

.field private static final ACTION_SWITCH_PROFILE:Ljava/lang/String; = "com.samsung.android.knox.ACTION_SWITCH_PROFILE"

.field private static final ADAPT_SOUND_PACKAGE_NAME:Ljava/lang/String; = "com.sec.hearingadjust"

.field public static final B2C_FILE_SHARE:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.fileshare.B2CShareViaActivity"

.field private static final BBC_METADATA:Ljava/lang/String; = "com.samsung.android.knoxenabled"

.field public static final BRIDGE_COMPONENT1:Ljava/lang/String; = "com.sec.knox.bridge/com.sec.knox.bridge.activity.SwitchB2BActivity"

.field public static final BRIDGE_COMPONENT2:Ljava/lang/String; = "com.sec.knox.bridge/com.sec.knox.bridge.activity.SwitchB2BActivity2"

.field public static final BRIDGE_PKG:Ljava/lang/String; = "com.sec.knox.bridge"

.field public static final CALLER_DISPLAY_NAME:Ljava/lang/String; = "caller_display_name"

.field public static final CALLER_PHONE_NUMBER:Ljava/lang/String; = "caller_phone_number"

.field public static final CALLER_PHOTO:Ljava/lang/String; = "caller_photo"

.field public static final CONTACT_OWNER_ID:Ljava/lang/String; = "contact_owner_id"

.field public static final CONTAINER_AGENT_ADMIN_RECEIVER:Ljava/lang/String; = "com.samsung.android.knox.containeragent.KnoxDeviceAdminReceiver"

.field public static final CONTAINER_AGENT_PACKAGE:Ljava/lang/String; = "com.samsung.android.knox.containeragent"

.field public static final CONTAINER_COM_TYPE:I = 0x3

.field public static final CONTAINER_CORE_ADMIN_RECEIVER:Ljava/lang/String; = "com.samsung.android.knox.containercore.KnoxAdminCommandReceiver"

.field public static final CONTAINER_CORE_PACKAGE:Ljava/lang/String; = "com.samsung.android.knox.containercore"

.field public static final CONTAINER_DEFAULT_TYPE:I = 0x1

.field public static final CONTAINER_LWC_TYPE:I = 0x2

.field public static final CONTAINER_TYPE_CONTAINER_ONLY:I = 0x6

.field public static final CONTAINER_TYPE_LEGACY:I = 0x5

.field public static final CONTAINER_TYPE_MY_KNOX:I = 0x1

.field public static final CONTAINER_TYPE_NONE:I = 0x0

.field public static final CONTAINER_TYPE_PREMIUM:I = 0x4

.field public static final CONTAINER_TYPE_PRIME:I = 0x3

.field public static final CONTAINER_TYPE_SECURE_FOLDER:I = 0x2

.field public static final CUSTOM_BADGE_ICON:Ljava/lang/String; = "custom-badge-icon"

.field public static final CUSTOM_CONTAINER_ICON:Ljava/lang/String; = "custom-container-icon"

.field public static final CUSTOM_NAME_ICON:Ljava/lang/String; = "custom-name-icon"

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

.field private static final EXTRA_UNLAUNCHABLE_REASON:Ljava/lang/String; = "unlaunchable_reason"

.field private static final FLAG_BASE:I = 0x1

.field public static final FLAG_EC_ENABLED:I = 0x10000

.field public static final FLAG_RESET_KNOX_KEYGUARD:I = 0x1

.field public static final FLAG_SECURE_FOLDER_CONTAINER:I = 0x2000

.field public static final FLAG_SHOW_KNOX_KEYGUARD:I = 0x0

.field public static final FOLDERCONTAINER_PKG_NAME:Ljava/lang/String; = "com.sec.knox.foldercontainer"

.field public static final FRAMEWORK_PACKAGE:Ljava/lang/String; = "android"

.field public static final HOME_SCREEN_WALLPAPER:Ljava/lang/String; = "custom-home-screen-wallpaper"

.field public static final ICON_CLASS_FOR_INTENT_FORWARD_TO_PROFILE:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToManagedProfile"

.field public static final ICON_CLASS_FOR_INTENT_FORWARD_TO_PROFILE1:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToManagedProfile1"

.field public static final ICON_CLASS_FOR_INTENT_FORWARD_TO_PROFILE2:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToManagedProfile2"

.field public static final ICON_CLASS_FOR_INTENT_FORWARD_TO_PROFILE3:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToManagedProfile3"

.field public static final ICON_CLASS_FOR_SECUREFOLDER_FORWARD_TO_PROFILE:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToManagedProfile4"

.field public static final ICON_CLASS_KNOX_SETTINGS_I:Ljava/lang/String; = "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivityIconI"

.field public static final ICON_CLASS_KNOX_SETTINGS_II:Ljava/lang/String; = "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivityIconII"

.field public static final ICON_CLASS_KNOX_SETTINGS_III:Ljava/lang/String; = "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivityIconIII"

.field public static final ICON_CLASS_PHONE:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.PhoneIcon"

.field public static final ICON_CLASS_SMS:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.SMSIcon"

.field public static final ICON_CLASS_SWITCH_TO_HOME:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.SwitchToPersonalIcon"

.field public static final ICON_CLASS_SWITCH_TO_KIOSK:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.SwitchToKiosk"

.field public static final ICON_CLASS_SWITCH_TO_KNOX_I:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconI"

.field public static final ICON_CLASS_SWITCH_TO_KNOX_II:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconII"

.field public static final ICON_CLASS_SWITCH_TO_KNOX_III:Ljava/lang/String; = "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconIII"

.field public static final IMMEDIATELY_LOCK_TIMEOUT:I = -0x2

.field public static final INTENT_ACCESS_EXT_SDCARD:Ljava/lang/String; = "com.sec.knox.container.access.extsdcard"

.field public static final INTENT_ACTION_CONTAINER_REMOVAL_STARTED:Ljava/lang/String; = "com.sec.knox.container.action.containerremovalstarted"

.field public static final INTENT_ACTION_CREATE_BBC_CONTAINER:Ljava/lang/String; = "com.sec.knox.action.CREATE_BBC_CONTAINER"

.field public static final INTENT_ACTION_CREATE_SECURE_FOLDER:Ljava/lang/String; = "com.sec.knox.action.CREATE_SECURE_FOLDER"

.field public static final INTENT_ACTION_LAUNCH_INFO:Ljava/lang/String; = "com.sec.knox.container.action.launchinfo"

.field public static final INTENT_ACTION_NFC_POLICY:Ljava/lang/String; = "com.samsung.android.knox.nfc.policy"

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

.field public static final KNOX_KEYGUARD_EVENT_FLAG:Ljava/lang/String; = "KnoxKeyguardEventFlag"

.field public static final KNOX_SETTINGS_CLASS:Ljava/lang/String; = "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivity"

.field public static final KNOX_SETTINGS_SYNC_PREFIX:Ljava/lang/String; = "knox_container_sync_"

.field public static final KNOX_SWITCH1_PKG:Ljava/lang/String; = "com.sec.knox.switchknoxI"

.field public static final KNOX_SWITCH2_PKG:Ljava/lang/String; = "com.sec.knox.switchknoxII"

.field public static final KNOX_SWITCHER_PKG:Ljava/lang/String; = "com.samsung.android.knox.containeragent"

.field public static final KNOX_SWITCH_1_PKG:Ljava/lang/String; = "com.sec.knox.switchknoxI"

.field public static final KNOX_SWITCH_2_PKG:Ljava/lang/String; = "com.sec.knox.switchknoxII"

.field public static final KNOX_SWITCH_COMPONENT1:Ljava/lang/String; = "com.samsung.android.knox.containeragent/com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconI"

.field public static final KNOX_SWITCH_COMPONENT2:Ljava/lang/String; = "com.samsung.android.knox.containeragent/com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconII"

.field public static final LOCK_SCREEN_WALLPAPER:Ljava/lang/String; = "custom-lock-screen-wallpaper"

.field public static final MANAGED_PROVISIONING_PACKAGE:Ljava/lang/String; = "com.android.managedprovisioning"

.field public static final MAX_ACTIVE_BUTTONS_ZERO_FOR_KIOSK:I = 0xa

.field public static final MAX_BBC_ID:I = 0xc7

.field public static final MAX_PERSONA_ALLOWED:I = 0x2

.field public static final MAX_PERSONA_ALLOWED_SECURE_FOLDER:I = 0x1

.field public static final MAX_PERSONA_ID:I = 0xc8

.field public static final MAX_SECURE_FOLDER_ID:I = 0xa0

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

.field public static final NOTIFICATION_LIST_FOR_KIOSK_M:Ljava/lang/String; = "Wifi,Location,SoundMode,RotationLock,Bluetooth,MobileData,PowerSaving,AirplaneMode,Flashlight,WifiHotspot,SmartStay,Nfc,custom(com.android.nfc/com.samsung.android.nfc.quicktile.NfcTile),custom(com.android.settings/com.samsung.android.settings.qstile.PowerSavingTile),BlueLightFilter"

.field public static final PERMISSION_KEYGUARD_ACCESS:Ljava/lang/String; = "com.sec.knox.container.keyguard.ACCESS"

.field public static final PERMISSION_PERIPHERAL_POLICY_UPDATE:Ljava/lang/String; = "com.sec.knox.container.peripheral.POLICY_UPDATE"

.field public static final PERSONA_CACHE_RESET_ON_REBOOT:Ljava/lang/String; = "knoxid.reset_on_reboot"

.field public static final PERSONA_ID:Ljava/lang/String; = "persona_id"

.field public static final PERSONA_POLICY_SERVICE:Ljava/lang/String; = "persona_policy"

.field public static final PERSONA_TIMA_ECRPTFS_INDEX1:I = 0x64

.field public static final PERSONA_TIMA_ECRPTFS_INDEX2:I = 0x66

.field public static final PERSONA_TIMA_PASSWORDHINT_INDEX:I = 0x68

.field public static final PERSONA_TIMA_PASSWORD_INDEX1:I = 0x65

.field public static final PERSONA_TIMA_PASSWORD_INDEX2:I = 0x67

.field public static final PERSONA_VALIDATOR_HANDLER:Ljava/lang/String; = "persona_validator"

.field public static final PROPERTY_DEVICE_OWNER_EXISTS:Ljava/lang/String; = "persist.sys.knox.device_owner"

.field private static final PROPERTY_KNOX_CONTAINER_INFO:Ljava/lang/String; = "persist.sys.knox.userinfo"

.field public static final REMOVE_OP_SUCCESS:I = 0x0

.field public static SECOND_KNOX_NAME:Ljava/lang/String; = null

.field public static final SECUREFOLDER_ICON_CLASS_SWITCH_TO_HOME:Ljava/lang/String; = "com.samsung.knox.securefolder.switcher.SwitchToPersonalIcon"

.field public static final SECUREFOLDER_PACKAGE:Ljava/lang/String; = "com.samsung.knox.securefolder"

.field public static SECURE_FOLDER_NAME:Ljava/lang/String; = null

.field public static final SETUP_WIZARD_PKG_NAME:Ljava/lang/String; = "com.sec.knox.setup"

.field static final SHORTCUT_FILTER:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String; = null

.field public static final TIMA_COMPROMISED_TYPE1:I = 0x1000c

.field public static final TIMA_COMPROMISED_TYPE2:I = 0x1000d

.field public static final TIMA_COMPROMISED_TYPE3:I = 0x1000e

.field public static final TIMA_COMPROMISED_TYPE4:I = 0x1000f

.field public static final TIMA_VALIDATION_SUCCESS:I = 0x0

.field private static final UNLAUNCHABLE_REASON_PWD_EXPIRED:I = 0x1

.field public static final WHEN_PHONE_RESTART_LOCK_TIMEOUT:I = -0x1

.field public static final WHEN_SCREEN_TURNS_OFF_LOCK_TIMEOUT:I

.field private static _instance:Lcom/samsung/android/knox/ISemPersonaManager;

.field public static final approvedPackages:[Ljava/lang/String;

.field public static final chinaStorePackages:[Ljava/lang/String;

.field public static final excludedPackages:[Ljava/lang/String;

.field public static final excludedPackagesForMyKnox:[Ljava/lang/String;

.field private static mKeyguardManager:Landroid/app/KeyguardManager;

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
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/samsung/android/knox/ISemPersonaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "KNOX"

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->DEFAULT_KNOX_NAME:Ljava/lang/String;

    const-string/jumbo v0, "KNOX II"

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->SECOND_KNOX_NAME:Ljava/lang/String;

    const-string/jumbo v0, "secure-folder"

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->SECURE_FOLDER_NAME:Ljava/lang/String;

    const-string/jumbo v0, "SemPersonaManager"

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    sput-object v5, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    sput-object v5, Lcom/samsung/android/knox/SemPersonaManager;->mMoveToInfo:Ljava/util/ArrayList;

    sput-object v5, Lcom/samsung/android/knox/SemPersonaManager;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    sput-object v5, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    sput-object v5, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.knox.containeragent"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.sec.hearingadjust"

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->SHORTCUT_FILTER:[Ljava/lang/String;

    sput-boolean v3, Lcom/samsung/android/knox/SemPersonaManager;->m_bIsKnoxInfoInitialized:Z

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.voc"

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->excludedPackagesForMyKnox:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.baidu.appsearch"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.qihoo.appstore"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.tencent.android.qqdownloader"

    aput-object v1, v0, v6

    const-string/jumbo v1, "com.wandoujia.phoenix2"

    aput-object v1, v0, v7

    const-string/jumbo v1, "com.dragon.android.pandaspace"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->chinaStorePackages:[Ljava/lang/String;

    const/16 v0, 0x75

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    const-string/jumbo v2, "com.android.mms"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getFloatingPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.android.settings"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.sec.knox.knoxsetupwizardclient"

    aput-object v1, v0, v6

    const-string/jumbo v1, "com.sec.chaton"

    aput-object v1, v0, v7

    const-string/jumbo v1, "com.sec.pcw"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.knox.containeragent"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.knox.containercore"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.watchon.phone"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.automotive.drivelink"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.app.lifetimes"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.shealth"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.voicenote"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.kidshome"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.knox.app.container"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.knox.containeragent"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.samsungapps"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "tv.peel.smartremote"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.skt.prod.phonebook"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.enterprise.knox.express"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.apps.walletnfcrel"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.voc"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.skt.tservice"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sktelecom.minit"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.skt.prod.dialer"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.skt.skaf.A000VODBOX"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.skt.skaf.OA00050017"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.skt.skaf.A000Z00040"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.skt.skaf.OA00026910"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.skt.skaf.l001mtm091"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.skt.prod.phonebook"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.skt.smartbill"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.skt.tbagplus"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sktelecom.tguard"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.skt.tdatacoupon"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.skb.btvmobile"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.iloen.melon"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.nate.android.portalmini"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.tms"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.skmc.okcashbag.home_google"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.elevenst"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.elevenst.deals"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.moent.vas"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.skmnc.gifticon"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.skt.tmaphot"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.skplanet.mbuzzer"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.skt.tgift"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sktelecom.tsmartpay"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.cyworld.camera"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.kt.android.showtouch"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.kt.wificm"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.ktshow.cs"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.kt.olleh.storefront"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.kth.kshop"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.show.greenbill"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.estsoft.alyac"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.kt.accessory"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string/jumbo v1, "kt.navi"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.olleh.android.oc2"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.kt.ollehfamilybox"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.kt.otv"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.olleh.webtoon"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.kt.shodoc"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.ktmusic.geniemusic"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.ktcs.whowho"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.kt.apptong"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.mtelo.ktAPP"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.kt.bellringolleh"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.kt.mpay"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.kt.aljjapackplus"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.lguplus.appstore"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.uplus.onphone"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.lguplus.mobile.cs"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string/jumbo v1, "lg.uplusbox"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.lgu.app.appbundle"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string/jumbo v1, "lgt.call"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.mnet.app"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.lguplus.usimsvcm"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.lguplus.navi"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.lguplus.paynow"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.uplus.movielte"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.estsoft.alyac"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.lguplus.ltealive"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.uplus.ipagent"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.lguplus.homeiot"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.uplus.baseballhdtv"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.lgu"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.lgt.tmoney"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.lguplus.smartotp"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string/jumbo v1, "net.daum.android.map"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sds.mms.ui"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.navitime.local.naviwalk"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string/jumbo v1, "jp.id_credit_sp.android"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string/jumbo v1, "jp.id_credit_sp.android.devappli"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.nttdocomo.android.dpoint"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.nttdocomo.android.voicetranslation"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.nttdocomo.android.moneyrecord"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.kddi.android.videopass"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.nttdocomo.android.photocollection"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.systemui"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.sprint.wfcstub"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.sprint.wfc"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.oculus.horizon"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.app.watchmanager"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.spay"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.easyMover"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.wms"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.gear360manager"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.samsunggear360manager"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.video360"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.app.vrsetupwizard"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.oculus.horizon"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.game.gamehome"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.globalroaming"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.visionintelligence"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.oneconnect"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.app.sreminder"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.app.sprotect"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->excludedPackages:[Ljava/lang/String;

    const/16 v0, 0x27

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.chrome"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.google.android.apps"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.google.android.apps.plus"

    aput-object v1, v0, v6

    const-string/jumbo v1, "com.google.android.apps.docs"

    aput-object v1, v0, v7

    const-string/jumbo v1, "com.google.android.gm"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.talk"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.apps.maps"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.apps.books"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.play.games"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.music"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.videos"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.apps.magazines"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.youtube"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.app.memo"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.keystringscreen"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.infraware.polarisoffice5"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.microsoft.office.excel"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.microsoft.office.powerpoint"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.microsoft.office.word"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.hancom.androidpc.viewer.launcher"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.hancom.office.editor"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.whatsapp"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.tencent.mm"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.facebook.katana"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.facebook.orca"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.instagram.android"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.skype.raider"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.microsoft.office.onenote"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.microsoft.skydrive"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.contacts"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.myfiles"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.gallery3d"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.app.notes"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.calendar"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.email.provider"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.camera"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.sbrowser"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.popupcalculator"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->approvedPackages:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.mdmtest1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.samsung.mdmtest2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.samsung.edmtest"

    aput-object v1, v0, v6

    const-string/jumbo v1, "com.samsung.edmtest1"

    aput-object v1, v0, v7

    const-string/jumbo v1, "com.samsung.edmtest2"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.containertool"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mdmPackages:[Ljava/lang/String;

    sput-object v5, Lcom/samsung/android/knox/SemPersonaManager;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->pathstrategy:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ISemPersonaManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static checkContainerType(I)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string/jumbo v1, ":"

    const-string/jumbo v0, ","

    const-string/jumbo v7, "persist.sys.knox.userinfo"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    array-length v7, v2

    if-ge v4, v7, :cond_1

    aget-object v7, v2, v4

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v7, v5

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    aget-object v7, v5, v10

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    and-int v7, p0, v3

    if-lez v7, :cond_0

    return v10

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v9
.end method

.method private static checkContainerType(II)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string/jumbo v1, ":"

    const-string/jumbo v0, ","

    const-string/jumbo v8, "persist.sys.knox.userinfo"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    array-length v8, v2

    if-ge v4, v8, :cond_1

    aget-object v8, v2, v4

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v8, v6

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    aget-object v8, v6, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v8, v6, v11

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v5, p0, :cond_0

    and-int v8, p1, v3

    if-lez v8, :cond_0

    return v11

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v10
.end method

.method public static clearAttributes(II)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->clearAttributes(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "clearAttributes failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static createChangeCredentialIntent(ILandroid/content/IntentSender;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.CHANGE_CREDENTIAL_SCREEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "unlaunchable_reason"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxCorePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createConfirmProfileCredentialIntent(I)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "KnoxKeyguardEventFlag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.knox.securefolder"

    const-string/jumbo v3, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.knox.containeragent"

    const-string/jumbo v3, "com.samsung.android.knox.containeragent.knoxkeyguard.KeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static createLockdownIntent(I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.LOCKDOWN_SCREEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.containeragent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createSwitchProfileIntent(I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.ACTION_SWITCH_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.containeragent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10804000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-object v4

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v4, "RequestProxy"

    const-string/jumbo v5, "action"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getRCPManager(Landroid/content/Context;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v4, p1}, Lcom/samsung/android/knox/SemRemoteContentManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    const-string/jumbo v4, "MoveTo"

    const-string/jumbo v5, "action"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v4, "action"

    const-string/jumbo v5, "moveToContactPreProcess"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "modifying the action in bundle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "action"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getRCPManager(Landroid/content/Context;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v1, p0, v4, p1}, Lcom/samsung/android/knox/SemRemoteContentManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    :cond_3
    const-string/jumbo v4, "result"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "please add proper log here"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method public static getAdminComponentName(I)Landroid/content/ComponentName;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getAdminComponentName failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v3
.end method

.method public static getAgentAdminReceiver()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.samsung.android.knox.containeragent"

    const-string/jumbo v2, "com.samsung.android.knox.containeragent.KnoxDeviceAdminReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAttributes(I)I
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->getAttributes(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getAttributes failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public static getBBCBadgeIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 10

    const/4 v1, 0x0

    iget-object v7, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    const-string/jumbo v7, "com.samsung.android.knoxenabled"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v0

    iget-object v7, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationIconFromDb(Ljava/lang/String;I)[B

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    const/4 v7, 0x0

    iput v7, v6, Landroid/util/TypedValue;->density:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v7, v6, v4, v8}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v7, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "EDM:ApplicationIcon got from EDM database "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

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

    :cond_1
    return-object v1
.end method

.method public static getBbcEnabled()I
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v3, "sys.knox.bbcid"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v1, -0x2710

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "get value of id failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getContainerInfo()Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x0

    const-string/jumbo v1, ":"

    const-string/jumbo v0, ","

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v9, "persist.sys.knox.userinfo"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "API test"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getContainerInfo: value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    :goto_0
    array-length v9, v2

    if-ge v5, v9, :cond_1

    aget-object v9, v2, v5

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v9, v6

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    aget-object v9, v6, v12

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public static getContainerName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v8

    :cond_0
    if-eqz v1, :cond_e

    :try_start_0
    const-string/jumbo v6, "com.samsung.android.knox.containeragent"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v5, 0x0

    const-string/jumbo v6, "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivityIconI"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivityIconII"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivityIconIII"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivity"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    invoke-interface {v1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->getKnoxSettingsCustomName(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_2
    const-string/jumbo v6, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconI"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/high16 v5, 0x100000

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v6, v2, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_3

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v1, v6}, Lcom/samsung/android/knox/ISemPersonaManager;->getContainerName(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_4
    const-string/jumbo v6, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconII"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/high16 v5, 0x200000

    goto :goto_0

    :cond_5
    const-string/jumbo v6, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconIII"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/high16 v5, 0x800000

    goto :goto_0

    :cond_6
    return-object v8

    :cond_7
    const-string/jumbo v6, "android"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v5, 0x0

    const-string/jumbo v6, "com.android.internal.app.ForwardIntentToManagedProfile1"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/high16 v5, 0x100000

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v6, v2, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_8

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v1, v6}, Lcom/samsung/android/knox/ISemPersonaManager;->getContainerName(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_9
    const-string/jumbo v6, "com.android.internal.app.ForwardIntentToManagedProfile2"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/high16 v5, 0x200000

    goto :goto_1

    :cond_a
    const-string/jumbo v6, "com.android.internal.app.ForwardIntentToManagedProfile3"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/high16 v5, 0x800000

    goto :goto_1

    :cond_b
    const-string/jumbo v6, "com.android.internal.app.ForwardIntentToManagedProfile4"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/high16 v5, 0x20000

    goto :goto_1

    :cond_c
    return-object v8

    :cond_d
    invoke-interface {v1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->getContainerName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v0

    sget-object v6, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failed to call Persona service"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    return-object v8
.end method

.method public static getCustomResource(ILjava/lang/String;)[B
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v3

    invoke-interface {v3, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getCustomResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-object v5

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->readECFile(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getCustomResource failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-object v5

    :catch_1
    move-exception v0

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getCustomResource failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getFloatingPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v1, p1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getFloatingPackageName failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method public static getKnoxAdminReceiver()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.samsung.android.knox.containercore"

    const-string/jumbo v2, "com.samsung.android.knox.containercore.KnoxAdminCommandReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getKnoxBadge(I)[B
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->getKnoxBadge(I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getKnoxBadge failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v3
.end method

.method public static getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const-string/jumbo v2, "2.0"

    const-string/jumbo v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string/jumbo v2, "17"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v2, "17"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_1_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "17"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "17"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "17"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "17"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "17"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    :cond_7
    const-string/jumbo v2, "17"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    :cond_8
    const-string/jumbo v2, "17"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_9

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    :cond_9
    const-string/jumbo v2, "17"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_a

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_2:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto :goto_0

    :cond_a
    const-string/jumbo v2, "17"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_b

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v2, "17"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_c

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v2, "17"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_d

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v2, "17"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_e

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v2, "17"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_f

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_8_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v2, "17"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_10

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_9_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v2, "17"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_11

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v2, "17"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_12

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_1_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v2, "17"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v2, "1.0"

    const-string/jumbo v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mKnoxInfo returns 1.0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_1_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    :cond_14
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mKnoxInfo is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_NONE:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    goto/16 :goto_0
.end method

.method public static getKnoxCorePackageName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.samsung.android.knox.containercore"

    return-object v0
.end method

.method public static getKnoxIcon(I)[B
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v5

    if-nez v5, :cond_0

    return-object v8

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, p0, :cond_1

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v5, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Could not getUserInfo"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    if-nez v3, :cond_3

    return-object v8

    :cond_3
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-nez v5, :cond_4

    return-object v8

    :cond_4
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "com.samsung.knox.securefolder"

    invoke-static {v5, v8, p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v5

    return-object v5

    :cond_5
    const-string/jumbo v5, "com.samsung.android.knox.containeragent"

    invoke-static {v5, v8, p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v5

    return-object v5
.end method

.method public static getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getKnoxIcon failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v3
.end method

.method public static getKnoxInfo()Landroid/os/Bundle;
    .locals 6

    const-class v3, Lcom/samsung/android/knox/SemPersonaManager;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sput-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v2, "ro.config.knox"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    const-string/jumbo v2, "v30"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v1, "2.0"

    :cond_0
    :goto_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isSupportCallerInfo"

    const-string/jumbo v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_2
    monitor-exit v3

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v2

    :cond_2
    :try_start_2
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "1.0"

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "failed to putString to mKnoxInfo"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    :cond_0
    :try_start_0
    const-string/jumbo v1, "2.0"

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "version"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "isSupportMoveTo"

    invoke-static {p0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to get knox info for APP"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 16

    const-class v13, Lcom/samsung/android/knox/SemPersonaManager;

    monitor-enter v13

    const/4 v11, 0x0

    :try_start_0
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v12, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    :try_start_1
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "userId"

    invoke-virtual {v12, v14, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-boolean v12, Lcom/samsung/android/knox/SemPersonaManager;->m_bIsKnoxInfoInitialized:Z

    if-nez v12, :cond_3

    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v12

    if-eqz v12, :cond_1

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isKnoxMode"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-interface {v7, v11, v12}, Landroid/sec/enterprise/IEDMProxy;->isPackageAllowedToAccessExternalSdcard(II)Z

    move-result v12

    if-eqz v12, :cond_e

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isBlockExternalSD"

    const-string/jumbo v15, "false"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isBlockBluetoothMenu"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isSamsungAccountBlocked"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v12

    if-eqz v12, :cond_2

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isBlockExternalSD"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_11

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isKioskModeEnabled"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v12, 0x1

    sput-boolean v12, Lcom/samsung/android/knox/SemPersonaManager;->m_bIsKnoxInfoInitialized:Z

    :cond_3
    const-string/jumbo v12, "true"

    sget-object v14, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v15, "isKioskModeEnabled"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string/jumbo v12, "isSupportMoveTo"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    move-object/from16 v0, p0

    invoke-static {v0, v12, v11}, Lcom/samsung/android/knox/SemPersonaManager;->setMoveToKnoxInfo(Landroid/content/Context;Landroid/os/Bundle;I)V

    :cond_4
    const-string/jumbo v12, "isKnoxModeActive"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v12

    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v12

    if-eqz v12, :cond_12

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isKnoxModeActive"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    const-string/jumbo v12, "isKioskModeEnabled"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_13

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isKioskModeEnabled"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    const-string/jumbo v12, "isSecureFolderExist"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v12

    if-lez v12, :cond_14

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isSecureFolderExist"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    const-string/jumbo v12, "isSmartSwitchBnRAvailable"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/high16 v12, 0x2000000

    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(I)Z

    move-result v12

    if-eqz v12, :cond_15

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isMyknoxExist"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v12

    if-lez v12, :cond_16

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isSecureFolderExist"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_6
    const-string/jumbo v12, "getContainerLabel"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "getContainerLabel"

    invoke-virtual {v12, v14, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string/jumbo v12, "getContainerAppIcon"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(I)[B

    move-result-object v1

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "getContainerAppIcon"

    invoke-virtual {v12, v14, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_a
    const-string/jumbo v12, "getActiveUserId"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/4 v10, 0x0

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    if-eqz v8, :cond_b

    :try_start_2
    invoke-virtual {v8}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    :cond_b
    :goto_7
    :try_start_3
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "getActiveUserId"

    invoke-virtual {v12, v14, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_c
    const-string/jumbo v12, "getAllPersonaInfo"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    const/4 v1, 0x0

    const/4 v3, 0x0

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "getContainerCount"

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    if-eqz v8, :cond_18

    const/4 v12, 0x0

    :try_start_4
    invoke-virtual {v8, v12}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_18

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_18

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "getContainerCount"

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v5, 0x0

    :goto_8
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_18

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(I)[B

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    if-eqz v9, :cond_1b

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v12

    if-eqz v12, :cond_17

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

    const/4 v15, 0x1

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_d
    :goto_9
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

    invoke-virtual {v12, v14, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

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

    invoke-virtual {v12, v14, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

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

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "isPremiumContainer_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v15

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "isSecureFolder_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v15

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "isLegacyClId_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v15

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    :cond_e
    :try_start_5
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isBlockExternalSD"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    :try_start_6
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "failed to get mKnoxInfo"

    invoke-static {v12, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_f
    :goto_a
    monitor-exit v13

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v12

    :cond_10
    :try_start_7
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "getService() returns null, set isBlockExternalSD to true"

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isBlockExternalSD"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_11
    :try_start_8
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isKioskModeEnabled"

    const-string/jumbo v15, "false"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isKnoxModeActive"

    const-string/jumbo v15, "false"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_13
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isKioskModeEnabled"

    const-string/jumbo v15, "false"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_14
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isSecureFolderExist"

    const-string/jumbo v15, "false"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_15
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isMyknoxExist"

    const-string/jumbo v15, "false"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_16
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isSecureFolderExist"

    const-string/jumbo v15, "false"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_1
    move-exception v4

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "failed to get focused Knox id"

    invoke-static {v12, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_7

    :cond_17
    :try_start_9
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v12

    if-eqz v12, :cond_1a

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

    const/4 v15, 0x2

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_9

    :catch_2
    move-exception v4

    :try_start_a
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "failed to get container info:"

    invoke-static {v12, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "getContainerCount"

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_18
    const-string/jumbo v12, "isSupportSecureFolder"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v8

    if-eqz v8, :cond_1d

    invoke-virtual {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v12

    if-eqz v12, :cond_1c

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isSupportSecureFolder"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    :goto_b
    const-string/jumbo v12, "isSupportImpKeyguard"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isSupportImpKeyguard"

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_a

    :cond_1a
    :try_start_b
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isThirdContainer()Z

    move-result v12

    if-eqz v12, :cond_d

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

    const/4 v15, 0x3

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_9

    :cond_1b
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "getUserInfo returns null"

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_9

    :cond_1c
    :try_start_c
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isSupportSecureFolder"

    const-string/jumbo v15, "false"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_1d
    sget-object v12, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v14, "isSupportSecureFolder"

    const-string/jumbo v15, "false"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_b
.end method

.method public static getPathStrategy(I)Lcom/samsung/android/knox/SemPersonaManager$PathStrategy;
    .locals 2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->pathstrategy:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager$PathStrategy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$PathStrategy;

    const-string/jumbo v1, "bbcfileprovider"

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/knox/SemPersonaManager$PathStrategy;-><init>(Ljava/lang/String;I)V

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->pathstrategy:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getPersonaCacheValue failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v3
.end method

.method public static getPersonaName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    return-object v0
.end method

.method private static getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;
    .locals 3

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v1, "persona"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    return-object v2
.end method

.method private static getRCPManager(Landroid/content/Context;)Lcom/samsung/android/knox/SemRemoteContentManager;
    .locals 2

    const-class v1, Lcom/samsung/android/knox/SemPersonaManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "rcp"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemRemoteContentManager;

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager;->rcpManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSecureFolderId(Landroid/content/Context;)I
    .locals 7

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Failed to get SemPersonaManagerService in getSecureFolderId"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x514

    return v4

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SecureFolder personaId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/high16 v5, 0x20000

    invoke-static {v4, v5}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    return v4

    :cond_2
    const/16 v4, -0x515

    return v4
.end method

.method private static getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v4

    if-nez v4, :cond_0

    return-object v7

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, p0, :cond_1

    return-object v1

    :catch_0
    move-exception v0

    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Could not getUserInfo"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v7
.end method

.method public static hideMultiWindows(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->hideMultiWindows(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hideMultiWindows failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static hideScrim()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->hideScrim()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hideScrim failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isBBCContainer(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xc3

    if-lt p0, v1, :cond_0

    const/16 v1, 0xc7

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isContainerService(Landroid/content/ComponentName;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxAdminReceiver()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getAgentAdminReceiver()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isContainerService(Landroid/content/Context;I)Z
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxAdminReceiver()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getAgentAdminReceiver()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static isDeviceOrProfileOwnerEnabled()Z
    .locals 3

    const-string/jumbo v1, "persist.sys.knox.device_owner"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isDoEnabled(I)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "persist.sys.knox.device_owner"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageEnabled(I)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->isExternalStorageEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isExternalStorageEnabled failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isKioskModeEnabled(Landroid/content/Context;)Z
    .locals 1

    const/high16 v0, 0x8000000

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(I)Z

    move-result v0

    return v0
.end method

.method public static isKnoxIcon(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "com.samsung.android.knox.containeragent"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v1, "android"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const-string/jumbo v1, "com.android.internal.app.ForwardIntentToManagedProfile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "com.android.internal.app.ForwardIntentToManagedProfile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method public static isKnoxId(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v0

    return v0
.end method

.method public static isKnoxVersionSupported(I)Z
    .locals 3

    const/4 v2, 0x0

    if-lez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->getVersionNumber()I

    move-result v1

    if-lt v1, p0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v2
.end method

.method public static isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v2
.end method

.method public static isKnoxWindowExist(III)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->isKnoxWindowExist(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isKnoxWindowExist failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isLegacyClId(I)Z
    .locals 1

    const/high16 v0, 0x400000

    invoke-static {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v0

    return v0
.end method

.method public static isPkgAllowedToListenKnoxNoti(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    const-string/jumbo v2, "com.samsung.permission.READ_KNOX_NOTIFICATION"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.permission.READ_KNOX_NOTIFICATION"

    invoke-virtual {v3, v4, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return v5

    :cond_1
    return v6

    :cond_2
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_0

    return v6

    :catch_0
    move-exception v1

    return v5
.end method

.method public static isPossibleAddToPersonal(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v2

    :cond_1
    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->SHORTCUT_FILTER:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_3

    aget-object v0, v3, v1

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public static isPremiumContainer(I)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSamsungWorkspace(I)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/high16 v0, 0x8000000

    invoke-static {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public static isSecureFolderId()Z
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v1

    return v1
.end method

.method public static isSecureFolderId(I)Z
    .locals 1

    const/high16 v0, 0x20000

    invoke-static {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v0

    return v0
.end method

.method private isSecureFolderMetaDataEnabled()Z
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.knox.securefolder"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    const-string/jumbo v4, "com.samsung.knox.securefolder.enable"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_1
    return v3

    :catch_0
    move-exception v2

    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "please add proper log here"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public static isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    const-string/jumbo v1, "sec_container_1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v4

    :cond_1
    const-string/jumbo v1, "2.0"

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-class v2, Landroid/os/PersonaPolicyManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/PersonaPolicyManager;

    const-string/jumbo v3, "persona_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPersonaPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyManager;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Landroid/os/PersonaPolicyManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPersonaPolicyManager;)V

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v2

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v4

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_3
    const-string/jumbo v1, "move-file-to-container"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->isMoveFilesToContainerAllowed(I)Z

    move-result v1

    return v1

    :cond_4
    const-string/jumbo v1, "move-file-to-owner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->isMoveFilesToOwnerAllowed(I)Z

    move-result v1

    return v1

    :cond_5
    const-string/jumbo v1, "contacts-import-export"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v4

    :cond_6
    const/4 v1, 0x1

    return v1
.end method

.method public static notifyKeyguardShow(IZ)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->notifyKeyguardShow(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "notifyKeyguardShow failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static processProfileNameChange(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "caller_id_to_show_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processProfileNameChange isCallerToShow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "caller_id_to_show_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "processProfileNameChange update is done..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processProfileNameChange ignoring for userId- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static readECFile(Ljava/lang/String;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v8, 0x7fffffff

    cmp-long v7, v4, v8

    if-lez v7, :cond_2

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "The file is too big"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    long-to-int v7, v4

    new-array v0, v7, [B

    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_3

    array-length v7, v0

    sub-int/2addr v7, v6

    invoke-virtual {v2, v0, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_3

    add-int/2addr v6, v3

    goto :goto_0

    :cond_3
    array-length v7, v0

    if-ge v6, v7, :cond_4

    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "The file was not completely read: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_5
    return-object v0
.end method

.method public static refreshLockTimer(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->refreshLockTimer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "refreshLockTimer failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static removePartialContainer()V
    .locals 0

    return-void
.end method

.method public static sendContainerEvent(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void
.end method

.method public static sendContainerEvent(Landroid/content/Context;IILandroid/os/Bundle;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/os/ContainerStateReceiver;->ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x9

    if-ne p2, v1, :cond_1

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_0
    sget-object v1, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_EVENT_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_1
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static setAttributes(II)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->setAttributes(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAttributes failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static setFocusedLauncherId(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->setFocusedLauncherId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFocusedLauncherId failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static setMoveToKnoxInfo(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 11

    const-string/jumbo v9, "isSupportMoveTo"

    const-string/jumbo v10, "false"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string/jumbo v9, "action"

    const-string/jumbo v10, "RequestProxy"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "cmd"

    const-string/jumbo v10, "queryPersonaInfos"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string/jumbo v9, "personaIds"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    const-string/jumbo v9, "personaTypes"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "personaNames"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    sget-object v9, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v10, "personaIds"

    invoke-virtual {v9, v10, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v9, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v10, "personaTypes"

    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v9, Lcom/samsung/android/knox/SemPersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v10, "personaNames"

    invoke-virtual {v9, v10, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz v4, :cond_2

    array-length v9, v4

    if-lez v9, :cond_2

    const/4 v3, 0x0

    :goto_0
    array-length v9, v4

    if-ge v3, v9, :cond_1

    aget v9, v4, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget-object v10, v5, v3

    invoke-virtual {v0, v9, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "com.sec.android.app.voicenote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "com.samsung.android.snote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_2

    const-string/jumbo v9, "isSupportMoveTo"

    const-string/jumbo v10, "true"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v9, "KnoxIdNamePair"

    invoke-virtual {p1, v9, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v2

    sget-object v9, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Please add proper log here"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v9

    if-eqz v9, :cond_3

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "com.sec.android.app.voicenote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "com.samsung.android.snote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_3

    const-string/jumbo v9, "isSupportMoveTo"

    const-string/jumbo v10, "true"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    sget-object v9, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "please add proper log here"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static setPackageSettingInstalled(Ljava/lang/String;ZI)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setPackageSettingInstalled failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static shouldBlockUsbInterface(ILandroid/hardware/usb/UsbInterface;)Z
    .locals 8

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    sget-object v5, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Knox:: claimInterface : request for user -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " and interface reuqest -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xdc

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    sget-object v5, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Knox:: claimInterface : calling isPackageAllowedToAccessExternalSdcard for user- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " and callingUid-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, p0, v1}, Landroid/sec/enterprise/IEDMProxy;->isPackageAllowedToAccessExternalSdcard(II)Z

    move-result v0

    sget-object v5, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Knox:: claimInterface : calling isPackageAllowedToAccessExternalSdcard allowed-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    :try_start_2
    sget-object v5, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Knox:: claimInterface : blocking claim interface request"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    return v5

    :catch_0
    move-exception v4

    sget-object v5, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "doBind(): isPackageAllowedToAccessExternalSdcard on EDMProxy failed! "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v5, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "claimInterface exception "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v5, 0x0

    return v5
.end method

.method public static showScrim(Z)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->showScrim(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showScrim failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updatePersonaCache failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public bindCoreServiceAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 9

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p3, v1, p4}, Landroid/content/Context;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;I)Landroid/app/IServiceConnection;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object v1, p1

    move-object v4, p2

    move v6, p4

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/knox/ISemPersonaManager;->bindCoreServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public broadcastIntentThroughPersona(Landroid/content/Intent;I)Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->broadcastIntentThroughPersona(Landroid/content/Intent;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not broadcastIntentThroughPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public exists(I)Z
    .locals 1

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->checkContainerType(II)Z

    move-result v0

    return v0
.end method

.method public getAdminUidForPersona(I)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getAllKnoxNamesAndIds(Z)Ljava/util/HashMap;
    .locals 7
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaInfo;

    iget v5, v1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getContainerName(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getContainerName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v3
.end method

.method public getCurrentContainerType()I
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v2, 0x6

    return v2

    :cond_0
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    return v2

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    return v2

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    return v2

    :cond_3
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    return v2

    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method public getECBadge(I)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getECIcon(I)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getECName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFidoRpContext(I)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getFidoRpContext"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getFidoRpContext(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read getFidoRpContext from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getFocusedKnoxId()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v0

    return v0
.end method

.method public getFocusedLauncherId()I
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->getFocusedLauncherId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getFocusedLauncherId failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getFocusedUser()I
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->getFocusedUser()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getFocusedUser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    return v1
.end method

.method public getKeyguardShowState()Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return v4

    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaInfo;

    iget v3, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    return v3

    :cond_3
    return v4
.end method

.method public getKeyguardShowState(I)Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getKeyguardShowState(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to getKeyguardShowState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getKioskId()I
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerInfo()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v5, 0x8000000

    and-int/2addr v5, v2

    if-lez v5, :cond_0

    return v4

    :cond_1
    const/4 v5, -0x1

    return v5
.end method

.method public getKnoxIconChangedAsUser(I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKnoxId(IZ)I
    .locals 8

    const/4 v7, -0x1

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return v7

    :cond_1
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getKnoxIds not null "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_2
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "isMyKnoxContainer false, return -1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :pswitch_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isMyKnox()Z

    move-result v4

    if-eqz v4, :cond_3

    return v0

    :pswitch_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_4

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getKnoxIds(Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v5, :cond_2

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v5, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Could not getKnoxIds"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v0
.end method

.method public getKnoxNameChanged(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxNameChangedAsUser(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKnoxNameChangedAsUser(I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "We will never get null from ui.name"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v4

    :cond_0
    iget-object v0, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const-string/jumbo v2, "KNOX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "KNOX II"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return-object v4

    :cond_2
    return-object v0
.end method

.method public getKnoxUserHandles()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    new-instance v3, Landroid/os/UserHandle;

    aget v4, v2, v0

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
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

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0xe6

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v3, v0}, Lcom/samsung/android/knox/ISemPersonaManager;->getMoveToKnoxMenuList(I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed to call Persona service:getMoveToKnoxMenuList"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v2
.end method

.method public getParentId(I)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getPersonaIds()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPersonaService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

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

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "persona_policy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/PersonaPolicyManager;

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/PersonaPolicyManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPersonaPolicyManager;)V

    return-object v0

    :cond_0
    return-object v3
.end method

.method public getPersonas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/SemPersonaInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPersonas(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/SemPersonaInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPersonasForUser(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/SemPersonaInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRCPInterface()Landroid/content/IRCPInterface;
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in getRCPInterface"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemRemoteContentManager;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemRemoteContentManager;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v0

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

    return-object v0

    :cond_0
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Received getRCPInterface as null from bridge manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public isFOTAUpgrade()Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->isFOTAUpgrade()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get FOTAUpgrade"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isFotaUpgradeVersionChanged()Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemPersonaManager;->isFotaUpgradeVersionChanged()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not get isFotaUpgradeVersionChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isInstallableAppInContainer(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 18

    const/4 v8, 0x0

    if-eqz p3, :cond_0

    const-string/jumbo v14, ""

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string/jumbo v14, "null"

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    const/4 v14, 0x0

    return v14

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v14

    if-nez v14, :cond_2

    const/4 v14, 0x0

    return v14

    :cond_2
    sget-object v15, Lcom/samsung/android/knox/SemPersonaManager;->excludedPackages:[Ljava/lang/String;

    const/4 v14, 0x0

    array-length v0, v15

    move/from16 v16, v0

    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_4

    aget-object v11, v15, v14

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    const/4 v14, 0x0

    return v14

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_4
    sget-object v15, Lcom/samsung/android/knox/SemPersonaManager;->mdmPackages:[Ljava/lang/String;

    const/4 v14, 0x0

    array-length v0, v15

    move/from16 v16, v0

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_6

    aget-object v11, v15, v14

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    const/4 v14, 0x0

    return v14

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_6
    sget-object v15, Lcom/samsung/android/knox/SemPersonaManager;->approvedPackages:[Ljava/lang/String;

    const/4 v14, 0x0

    array-length v0, v15

    move/from16 v16, v0

    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_8

    aget-object v11, v15, v14

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/4 v8, 0x1

    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_8
    const-class v15, Landroid/os/PersonaPolicyManager;

    monitor-enter v15

    :try_start_0
    sget-object v14, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    if-nez v14, :cond_9

    new-instance v14, Landroid/os/PersonaPolicyManager;

    const-string/jumbo v16, "persona_policy"

    invoke-static/range {v16 .. v16}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/content/pm/IPersonaPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyManager;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v1}, Landroid/os/PersonaPolicyManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPersonaPolicyManager;)V

    sput-object v14, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    monitor-exit v15

    :try_start_1
    const-string/jumbo v10, "DisallowPackage"

    sget-object v14, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    move/from16 v0, p2

    invoke-virtual {v14, v10, v0}, Landroid/os/PersonaPolicyManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v14

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    return v14

    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14

    :cond_b
    if-nez v8, :cond_d

    :try_start_2
    const-string/jumbo v10, "AllowPackage"

    sget-object v14, Lcom/samsung/android/knox/SemPersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    move/from16 v0, p2

    invoke-virtual {v14, v10, v0}, Landroid/os/PersonaPolicyManager;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_c
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v14

    if-eqz v14, :cond_c

    const/4 v8, 0x1

    goto :goto_3

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    if-nez v8, :cond_12

    const/4 v3, 0x0

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/16 v15, 0x80

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_e

    const/4 v14, 0x0

    return v14

    :cond_e
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_f

    const-string/jumbo v14, "com.samsung.android.multiuser.install_only_owner"

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    :goto_4
    if-eqz v4, :cond_10

    if-eqz v9, :cond_10

    sget-object v14, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "isOnlyForOwner() true - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v14, 0x0

    return v14

    :cond_f
    const/4 v9, 0x0

    goto :goto_4

    :catch_1
    move-exception v6

    const/4 v14, 0x0

    return v14

    :cond_10
    iget v14, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v14, v14, 0x1

    const/4 v15, 0x1

    if-eq v14, v15, :cond_11

    iget v14, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v14, v14, 0x80

    const/16 v15, 0x80

    if-ne v14, v15, :cond_12

    :cond_11
    sget-object v14, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "has System flag() true - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    return v14

    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v14, :cond_13

    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v14, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager;->isPossibleAddAppsToContainer(Ljava/lang/String;I)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v14

    return v14

    :catch_2
    move-exception v13

    sget-object v14, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "Could not get isPossibleAddAppsToContainer , inside SemPersonaManager with exception:"

    invoke-static {v14, v15, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    const/4 v14, 0x0

    return v14
.end method

.method public isInstallableAppInContainer(Landroid/content/Context;ILjava/lang/String;I)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz p4, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/SemPersonaManager;->isInstallableAppInContainer(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isKioskContainerExistOnDevice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isKioskModeEnabled(I)Z
    .locals 5

    const/high16 v4, 0x8000000

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerInfo()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int v2, v0, v4

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return v3
.end method

.method public isKnoxActivated()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isKnoxKeyguardShown()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getKeyguardShowState(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getknoxKeyguardShowingState failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isKnoxReachedToMax()Z
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-nez v7, :cond_0

    return v10

    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Lcom/samsung/android/knox/ISemPersonaManager;->getProfiles(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v11, :cond_2

    :cond_1
    return v10

    :catch_0
    move-exception v1

    sget-object v7, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "getProfiles failed"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v10

    :cond_2
    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    add-int/lit8 v3, v3, 0x1

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    sub-int v7, v3, v0

    if-lt v7, v11, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2
.end method

.method public isLightWeightContainer(I)Z
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isLightWeightContainer()Z

    move-result v1

    return v1
.end method

.method public isSecureFolderKeyguardShown()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    const/4 v2, -0x2

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getKeyguardShowState(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSecureFolderKeyguardShowingState failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isUserManaged()Z
    .locals 2

    const-string/jumbo v0, "2"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderMetaDataEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchPersonaHome(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public launchPersonaHome(IZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lockPersona(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "knox.container.proxy.COMMAND_LOCK_PROFILE"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not registerSystemPersonaObserver a callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public sendRequestKeyStatus(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->sendRequestKeyStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendRequestKeyStatus failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setComponentEnabledSettingForKnox(Landroid/content/ComponentName;III)V
    .locals 4

    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "knoxId is not for knox user."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setFidoRpContext(ILjava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsBioReset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->setFidoRpContext(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "can\'t read setFidoRpContext from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showKeyguard(II)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Unknown userId"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->showKeyguard(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not showKeyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_1
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Knox Keyguard is unlocked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public startActivityThroughPersona(Landroid/content/Intent;)Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->startActivityThroughPersona(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not startActivityThroughPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
