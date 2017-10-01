.class public Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
.super Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;
.source "KnoxCustomManagerService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;
    }
.end annotation


# static fields
.field private static final ACTION_BIND_WIDGET:Ljava/lang/String; = "com.sec.android.launcher.action.BIND_WIDGET"

.field private static final ACTION_BIND_WIDGET_LEGACY:Ljava/lang/String; = "com.android.launcher.action.BIND_WIDGET"

.field private static final ACTION_KEYGUARD_REFRESH:Ljava/lang/String; = "com.sec.android.keyguard.REFRESH"

.field private static final ACTION_QUICKSETTING_REFRESH:Ljava/lang/String; = "com.sec.android.quicksetting.REFRESH"

.field private static final APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field private static final AUTHORITY:Ljava/lang/String; = "com.sec.android.app.launcher.settings"

.field private static final AUTHORITY_ZERO:Ljava/lang/String; = "com.sec.android.app.launcher.providers.LauncherProvider"

.field private static final CELLX:Ljava/lang/String; = "cellX"

.field private static final CELLY:Ljava/lang/String; = "cellY"

.field private static final CONTAINER:Ljava/lang/String; = "container"

.field private static final CONTAINER_DESKTOP:I = -0x64

.field private static final CONTAINER_DESKTOP_ZERO:I = 0x0

.field private static final CONTAINER_ID_ZERO:Ljava/lang/String; = "containerId"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final CONTENT_URI_ZERO:Landroid/net/Uri;

.field public static final DB_UID:I = 0x3e8

.field private static final DOCK_SHORTCUT_CONTAINER_ID:I = -0x65

.field private static final DOCK_SHORTCUT_CONTAINER_ID_ZERO:I = 0x1

.field private static final ETH_STATE_DISABLED:I = 0x1

.field private static final ETH_STATE_ENABLED:I = 0x2

.field private static final ETH_STATE_ENABLING:I = 0x3

.field private static final EXTRA_COMPONENT:Ljava/lang/String; = "componentName"

.field private static final HEX_CHARS:[C

.field private static final HIDE_SEALED:I = 0x4

.field private static final ICON:Ljava/lang/String; = "icon"

.field private static final ICON_TYPE:Ljava/lang/String; = "iconType"

.field private static final ID:Ljava/lang/String; = "_id"

.field private static final INTENT:Ljava/lang/String; = "intent"

.field private static final INVALID_STATUS_BAR_VALUE:I = -0x1

.field private static final ITEM_TYPE:Ljava/lang/String; = "itemType"

.field private static final ITEM_TYPE_APPLICATION:I = 0x0

.field private static final ITEM_TYPE_APPLICATION_ZERO:I = 0x1

.field private static final ITEM_TYPE_FILE:I = 0x1

.field private static final ITEM_TYPE_FILE_ZERO:I = 0x2

.field private static final ITEM_TYPE_FOLDER:I = 0x2

.field private static final ITEM_TYPE_FOLDER_ZERO:I = 0x3

.field private static final KNOX_CUSTOM_FORCE_OTG_CHARGING_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/knox_custom_force_otg_charging"

.field private static final KNOX_CUSTOM_FORCE_USB_CHARGING_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/knox_custom_force_usb_charging"

.field private static final KNOX_CUSTOM_PROKIOSK_PERMISSION_LEGACY:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CUSTOM_PROKIOSK"

.field private static final KNOX_CUSTOM_PROKIOSK_PERMISSION_ONESDK:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CUSTOM_PROKIOSK"

.field private static final KNOX_CUSTOM_SEALEDMODE_PERMISSION_LEGACY:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CUSTOM_SEALEDMODE"

.field private static final KNOX_CUSTOM_SEALEDMODE_PERMISSION_ONESDK:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CUSTOM_SEALEDMODE"

.field private static final KNOX_CUSTOM_SETTING_PERMISSION_LEGACY:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CUSTOM_SETTING"

.field private static final KNOX_CUSTOM_SETTING_PERMISSION_ONESDK:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CUSTOM_SETTING"

.field private static final KNOX_CUSTOM_SYSTEM_PERMISSION_LEGACY:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"

.field private static final KNOX_CUSTOM_SYSTEM_PERMISSION_ONESDK:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

.field private static final KNOX_ID:J = 0xc8L

.field private static final LAUNCHER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.launcher"

.field private static final PARAMETER_NOTIFY:Ljava/lang/String; = "Notify"

.field private static final PROVIDER:Ljava/lang/String; = "content://com.sec.android.app.launcher.settings/favorites"

.field private static final PROVIDER_ZERO:Ljava/lang/String; = "content://com.sec.android.app.launcher.settings/favorites"

.field private static final SCREEN:Ljava/lang/String; = "screen"

.field private static final SEALED_STATUS_BAR_CLOCK_STATE:Ljava/lang/String; = "sealedStatusBarClockState"

.field private static final SEALED_STATUS_BAR_ICONS_STATE:Ljava/lang/String; = "sealedStatusBarIconsState"

.field private static final SEALED_STATUS_BAR_STATE:Ljava/lang/String; = "sealedStatusBarMode"

.field private static final SHORTCUT_INFOLDER:I = 0x0

.field private static final SHORTCUT_TITLE:Ljava/lang/String; = "title"

.field private static final SHOW:Ljava/lang/String; = "show"

.field private static final SPANX:Ljava/lang/String; = "spanX"

.field private static final SPANY:Ljava/lang/String; = "spanY"

.field private static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG:Ljava/lang/String; = "KnoxCustomManagerService"

.field static final edgePackages:[Ljava/lang/String;

.field private static mBootReceiver:Landroid/content/BroadcastReceiver;

.field private static mForceLcdBacklightOffEnabled:Z

.field private static mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

.field private static mLockScreenOverrideMode:I

.field private static mSetupCompleted:Z

.field private static mWifiConfigure:Z

.field private static mWifiEap:Z

.field private static mWifiPassword:Ljava/lang/String;

.field private static mWifiSSID:Ljava/lang/String;

.field private static mWifiUsername:Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field private final KNOX_INITIALISE_SYSTEM_UI_MESSAGE:I

.field private final KNOX_UPDATE_FLIGHT_MODE:I

.field private final KNOX_UPDATE_HOME_SCREEN_MESSAGE:I

.field private final customBootDirectory:Ljava/lang/String;

.field private final efsPropertyPath:Ljava/lang/String;

.field private final isNotSupported:Z

.field private mAmericanoUI:Z

.field private mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFlag:I

.field private mGraceUI:Z

.field private mGraceUIGraceView:Z

.field private mGraceUIHeroView:Z

.field private final mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIsTablet:Z

.field private mKey:Ljava/lang/String;

.field private mKnoxCustomCurtainModeIsRunning:Z

.field private mPhoneStatusBarInit:Z

.field private mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

.field private mTempContext:Landroid/content/Context;

.field private mToken:Landroid/os/IBinder;

.field private final maxDelay:I

.field private final salesCode:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1

    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mGraceUIGraceView:Z

    return v0
.end method

.method static synthetic -get3(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mPhoneStatusBarInit:Z

    return v0
.end method

.method static synthetic -get4(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mTempContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5()Z
    .locals 1

    sget-boolean v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    return v0
.end method

.method static synthetic -get6()Z
    .locals 1

    sget-boolean v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiEap:Z

    return v0
.end method

.method static synthetic -get7()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mPhoneStatusBarInit:Z

    return p1
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->closeLauncherApp()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->initialiseSystemUi()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startStopUsbNet(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    sput-boolean v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    sput-boolean v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiEap:Z

    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiSSID:Ljava/lang/String;

    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiUsername:Ljava/lang/String;

    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiPassword:Ljava/lang/String;

    sput v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mLockScreenOverrideMode:I

    sput-boolean v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mForceLcdBacklightOffEnabled:Z

    sput-boolean v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSetupCompleted:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.app.cocktailbarservice"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.app.appsedge"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.samsung.android.app.taskedge"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.service.peoplestripe"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->edgePackages:[Ljava/lang/String;

    const-string/jumbo v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->HEX_CHARS:[C

    const-string/jumbo v0, "content://com.sec.android.app.launcher.settings/favorites?Notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.sec.android.app.launcher.settings/favorites?Notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->CONTENT_URI_ZERO:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    const/16 v13, 0x7e0

    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;-><init>()V

    iput-boolean v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->DEBUG:Z

    iput v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->KNOX_UPDATE_HOME_SCREEN_MESSAGE:I

    const/4 v8, 0x2

    iput v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->KNOX_UPDATE_FLIGHT_MODE:I

    const/4 v8, 0x3

    iput v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->KNOX_INITIALISE_SYSTEM_UI_MESSAGE:I

    iput-object v12, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v12, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    iput-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mToken:Landroid/os/IBinder;

    iput v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mFlag:I

    const-string/jumbo v8, "key_knoxcustommanagerservice"

    iput-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKey:Ljava/lang/String;

    iput-boolean v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mPhoneStatusBarInit:Z

    const-string/jumbo v8, "/data/b2b"

    iput-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->customBootDirectory:Ljava/lang/String;

    const-string/jumbo v8, "/efs/knoxcustom"

    iput-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->efsPropertyPath:Ljava/lang/String;

    const v8, 0x7fffffff

    iput v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->maxDelay:I

    const-string/jumbo v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->salesCode:Ljava/lang/String;

    const-string/jumbo v8, "ATT/VZW/TMB/TMK/USC/SPR"

    iget-object v11, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->salesCode:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v8, v9

    :goto_0
    iput-boolean v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->isNotSupported:Z

    iput-object v12, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-boolean v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mIsTablet:Z

    iput-boolean v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    iput-boolean v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mGraceUI:Z

    iput-boolean v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mGraceUIGraceView:Z

    iput-boolean v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mGraceUIHeroView:Z

    iput-boolean v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    iput-object v12, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    iput-object p1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v11, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v8, Landroid/os/HandlerThread;

    const-string/jumbo v11, "KnoxCustomManagerService"

    invoke-direct {v8, v11}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    new-instance v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    iget-object v11, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v8, p0, v11}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    const-string/jumbo v8, "ro.build.characteristics"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string/jumbo v8, "tablet"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    :goto_1
    iput-boolean v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mIsTablet:Z

    const-string/jumbo v8, "ro.build.scafe"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "americano"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "mocha"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    iput-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    :cond_1
    iget-boolean v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-nez v8, :cond_4

    const-string/jumbo v8, "ro.build.scafe.version"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v11, 0x4

    :try_start_0
    invoke-virtual {v5, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    if-ne v7, v13, :cond_2

    const-string/jumbo v8, "A"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    if-le v7, v13, :cond_4

    :cond_3
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mGraceUI:Z

    const-string/jumbo v8, "VZW"

    iget-object v11, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->salesCode:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mGraceUIHeroView:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mGraceUIGraceView:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->registerBootReceiver()V

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v11, "user_setup_complete"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_a

    move v8, v9

    :goto_3
    sput-boolean v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSetupCompleted:Z

    sget-boolean v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSetupCompleted:Z

    if-nez v8, :cond_6

    new-instance v2, Ljava/io/File;

    const-string/jumbo v8, "/efs/knoxcustom"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string/jumbo v8, "/efs/knoxcustom/KnoxCustomBootEnable.txt"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v2, v9, v9}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_5
    invoke-virtual {p0, v10}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setForceAutoStartUpState(I)I

    :cond_6
    return-void

    :cond_7
    move v8, v10

    goto/16 :goto_0

    :cond_8
    move v8, v10

    goto/16 :goto_1

    :cond_9
    const/4 v8, 0x1

    :try_start_1
    iput-boolean v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mGraceUIGraceView:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mGraceUIHeroView:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_a
    move v8, v10

    goto :goto_3
.end method

.method private Executer(Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Executer() failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private asHex([B)Ljava/lang/String;
    .locals 5

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [C

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    sget-object v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->HEX_CHARS:[C

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->HEX_CHARS:[C

    aget-byte v4, p1, v1

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private checkDotString(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return v1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private checkFileConditionForBootAnim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    const/16 v9, 0x80

    const/16 v10, -0x28

    const/4 v5, 0x0

    iget-boolean v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->isNotSupported:Z

    if-eqz v8, :cond_0

    const/4 v8, -0x6

    return v8

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    return v10

    :cond_2
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v9, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_4

    :cond_3
    const/16 v8, -0x33

    return v8

    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v9, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v9, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    :try_start_0
    const-string/jumbo v8, "."

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "."

    invoke-virtual {p2, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "."

    invoke-virtual {p3, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, ".qmg"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string/jumbo v8, ".mp4"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_5
    const-string/jumbo v8, ".qmg"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string/jumbo v8, ".mp4"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_6
    const-string/jumbo v8, ".ogg"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string/jumbo v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "Custom startup and shutdown sound: file must be a OGG"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_7
    return v10

    :cond_8
    const-string/jumbo v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "Custom startup and shutdown animation: file must be a QMG or MP4"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_9
    const-string/jumbo v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "Custom startup and shutdown animation: file must be a QMG or MP4"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v10

    :catch_0
    move-exception v2

    const-string/jumbo v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "IndexOutOfBoundException occured as substring method"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_a
    return v5
.end method

.method private checkIpAddressString(Ljava/lang/String;)Z
    .locals 9

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return v5

    :cond_0
    const-string/jumbo v4, "\\."

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    return v5

    :cond_1
    const-string/jumbo v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v5

    :cond_2
    array-length v6, v3

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_6

    aget-object v2, v3, v4

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_3

    return v5

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ltz v1, :cond_4

    const/16 v7, 0xff

    if-le v1, v7, :cond_5

    :cond_4
    return v5

    :catch_0
    move-exception v0

    return v5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    const/4 v4, 0x1

    return v4
.end method

.method private closeLauncherApp()V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-string/jumbo v1, "com.sec.android.app.launcher"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private closeSettingsApp()V
    .locals 8

    const/4 v7, -0x2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "activity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-string/jumbo v3, "com.android.settings"

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.quicksetting.REFRESH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.QUICKSETTING_REFRESH_INTERNAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private compareAutoCallNumbers(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return v1

    :cond_3
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    const-string/jumbo v11, "wifi"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    const/4 v8, 0x0

    const/4 v1, 0x1

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget v11, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v8, v11, :cond_1

    iget v8, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    :cond_1
    iget-object v11, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v11, :cond_0

    iget-object v11, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_5

    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v11, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    :goto_1
    add-int/lit8 v11, v8, 0x1

    iput v11, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v10, v4}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v9

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->disconnect()Z

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->reconnect()Z

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v11, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    const-string/jumbo v11, "KnoxCustomManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Warning: could not configureWifi: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    :try_start_1
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v11, :cond_6

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    add-int/lit8 v11, v8, 0x1

    iput v11, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v10, v2}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->disconnect()Z

    iget v11, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->reconnect()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    const-string/jumbo v12, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    const/4 v9, 0x0

    const/4 v1, 0x1

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget v12, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v9, v12, :cond_1

    iget v9, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    :cond_1
    iget-object v12, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v12, :cond_0

    iget-object v12, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    new-instance v8, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v8}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    move-object/from16 v0, p2

    iput-object v0, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v12, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/BitSet;->set(I)V

    iget-object v12, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Ljava/util/BitSet;->set(I)V

    iput-object v8, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    add-int/lit8 v12, v9, 0x1

    iput v12, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v11, v4}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v10

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->disconnect()Z

    const/4 v12, 0x1

    invoke-virtual {v11, v10, v12}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->reconnect()Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget-object v12, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v12, :cond_5

    iget-object v12, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    add-int/lit8 v12, v9, 0x1

    iput v12, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v11, v2}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->disconnect()Z

    iget v12, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->reconnect()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    const-string/jumbo v12, "KnoxCustomManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Warning: could not configureWifi: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private deleteExistingFile(Ljava/io/File;)V
    .locals 8

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    if-nez v6, :cond_4

    if-eqz v5, :cond_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    move-object v4, v5

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_3
    return-void

    :cond_4
    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v5

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_2

    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_5
    :goto_6
    throw v7

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v1

    move-object v4, v5

    goto :goto_4
.end method

.method private deleteFolderItems(Landroid/net/Uri;JZ)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    const/16 v16, -0x1

    const/4 v13, 0x0

    if-eqz v10, :cond_5

    const-string/jumbo v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    const/4 v9, 0x0

    if-eqz p4, :cond_1

    const-string/jumbo v2, "containerId"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v2, v8

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    if-eqz p4, :cond_2

    const-string/jumbo v17, "content://com.sec.android.app.launcher.settings/favorites"

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Notify"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v12, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "container"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    goto :goto_0

    :cond_2
    const-string/jumbo v17, "content://com.sec.android.app.launcher.settings/favorites"

    goto :goto_1

    :cond_3
    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void
.end method

.method private deleteShortcutAtPosition(Landroid/net/Uri;IIIZ)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    const-string/jumbo v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    const-string/jumbo v2, "container"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    if-eqz p5, :cond_3

    const-string/jumbo v2, "containerId"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    :goto_0
    const-string/jumbo v2, "cellX"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v2, "cellY"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string/jumbo v2, "spanX"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    const-string/jumbo v2, "spanY"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    const/16 v24, 0x0

    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-nez p5, :cond_4

    const/16 v2, -0x64

    if-ne v10, v2, :cond_4

    :goto_1
    move/from16 v0, p4

    if-ne v11, v0, :cond_0

    move/from16 v0, p2

    if-lt v0, v8, :cond_0

    add-int v2, v8, v22

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p2

    if-gt v0, v2, :cond_0

    move/from16 v0, p3

    if-lt v0, v9, :cond_0

    add-int v2, v9, v23

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p3

    if-gt v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v21

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v2, "screen"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    goto/16 :goto_0

    :cond_4
    if-eqz p5, :cond_0

    if-nez v10, :cond_0

    goto :goto_1
.end method

.method private deserializeObject([B)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/knox/custom/PowerItem;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_0
    array-length v6, p1

    const/4 v7, 0x0

    invoke-virtual {v3, p1, v7, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v6, Lcom/samsung/android/knox/custom/PowerItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/samsung/android/knox/custom/PowerItem;

    const/4 v1, 0x0

    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_0

    aget-object v2, v5, v1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-object v4

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v6, "deserializeObject"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-object v4

    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v6
.end method

.method private deserializeStatusbarIconItem([B)Lcom/samsung/android/knox/custom/StatusbarIconItem;
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    array-length v3, p1

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    const-class v3, Lcom/samsung/android/knox/custom/StatusbarIconItem;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/custom/StatusbarIconItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v3, "deserializeStatusbarIconItem"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method private enforceProKioskOrSystemPermission()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_CUSTOM_PROKIOSK"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "com.sec.enterprise.knox.permission.CUSTOM_PROKIOSK"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 v1, 0x3e8

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    aput-object v4, v3, v6

    const-string/jumbo v4, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"

    aput-object v4, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/util/List;)V

    goto :goto_0
.end method

.method private enforceProKioskPermission()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_CUSTOM_PROKIOSK"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "com.sec.enterprise.knox.permission.CUSTOM_PROKIOSK"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 v1, 0x3e8

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_CUSTOM_SEALEDMODE"

    aput-object v4, v3, v6

    const-string/jumbo v4, "com.sec.enterprise.knox.permission.CUSTOM_SEALEDMODE"

    aput-object v4, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/util/List;)V

    goto :goto_0
.end method

.method private enforceSettingPermission()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_CUSTOM_SETTING"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "com.sec.enterprise.knox.permission.CUSTOM_SETTING"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/util/List;)V

    const/16 v0, 0x3e8

    return v0
.end method

.method private enforceSystemPermission()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/util/List;)V

    const/16 v0, 0x3e8

    return v0
.end method

.method private fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z
    .locals 13

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v6, :cond_0

    :try_start_2
    const-string/jumbo v10, "KnoxCustomManagerService"

    const-string/jumbo v11, "originFD is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    return v12

    :catch_0
    move-exception v1

    const-string/jumbo v10, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_2

    const/4 v7, 0x0

    const/16 v10, 0x400

    :try_start_4
    new-array v0, v10, [B

    :goto_1
    array-length v10, v0

    const/4 v11, 0x0

    invoke-virtual {v3, v0, v11, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    const/4 v10, -0x1

    if-eq v7, v10, :cond_1

    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v4, v5

    move-object v2, v3

    :goto_2
    :try_start_5
    const-string/jumbo v10, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_3
    return v8

    :cond_1
    const/4 v8, 0x1

    :try_start_7
    invoke-direct {p0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :goto_5
    move-object v4, v5

    move-object v2, v3

    goto :goto_3

    :cond_2
    :try_start_9
    const-string/jumbo v10, "KnoxCustomManagerService"

    const-string/jumbo v11, "fail to open inputstream from FileDescriptor"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v10

    move-object v4, v5

    move-object v2, v3

    :goto_6
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :goto_7
    throw v10

    :catch_2
    move-exception v1

    const-string/jumbo v10, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_3
    move-exception v1

    const-string/jumbo v10, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_4
    move-exception v1

    const-string/jumbo v11, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catchall_1
    move-exception v10

    goto :goto_6

    :catchall_2
    move-exception v10

    move-object v2, v3

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    move-object v2, v3

    goto :goto_2
.end method

.method private fileCopy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    const/16 v11, 0x400

    const/4 v8, 0x0

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-array v0, v11, [B

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x400

    new-array v0, v11, [B

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v7, 0x0

    :goto_0
    :try_start_2
    array-length v11, v0

    const/4 v12, 0x0

    invoke-virtual {v4, v0, v12, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    const/4 v11, -0x1

    if-eq v7, v11, :cond_2

    const/4 v11, 0x0

    invoke-virtual {v6, v0, v11, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v5, v6

    move-object v3, v4

    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    :cond_1
    :goto_3
    return v8

    :cond_2
    :try_start_6
    invoke-direct {p0, v10}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v8, 0x1

    move-object v5, v6

    move-object v3, v4

    :cond_3
    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_4
    :goto_4
    if-eqz v5, :cond_1

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v1

    :goto_5
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v3, :cond_5

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :cond_5
    :goto_6
    if-eqz v5, :cond_1

    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_3

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v11

    :goto_7
    if-eqz v3, :cond_6

    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    :cond_6
    :goto_8
    if-eqz v5, :cond_7

    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :cond_7
    :goto_9
    throw v11

    :catch_8
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :catch_9
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :catchall_1
    move-exception v11

    move-object v3, v4

    goto :goto_7

    :catchall_2
    move-exception v11

    move-object v5, v6

    move-object v3, v4

    goto :goto_7

    :catch_a
    move-exception v2

    goto :goto_1

    :catch_b
    move-exception v2

    move-object v3, v4

    goto :goto_1

    :catch_c
    move-exception v1

    move-object v3, v4

    goto :goto_5

    :catch_d
    move-exception v1

    move-object v5, v6

    move-object v3, v4

    goto :goto_5
.end method

.method private filePathSplit(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    const-string/jumbo v2, "\\/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    move-object v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getAutoCallNumberRecord(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "autoCallNumberList"

    const/16 v9, 0x3e8

    invoke-virtual {v6, v9, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-object v10

    :cond_1
    const-string/jumbo v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v3, v1, v5

    const-string/jumbo v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-direct {p0, v7, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->compareAutoCallNumbers(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getDefaultActivity(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, ""

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getLockScreenHideOwnerInfo()I
    .locals 8

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "ownerInfoHide"

    const/16 v7, 0x3e8

    invoke-virtual {v4, v7, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getLockScreenHideOwnerInfo() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return v4
.end method

.method private getMaxId(Landroid/net/Uri;)J
    .locals 12

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const-wide/16 v10, -0x1

    const/4 v7, -0x1

    if-eqz v6, :cond_2

    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v0, v8, v10

    if-lez v0, :cond_0

    move-wide v10, v8

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-wide v10
.end method

.method private getMaxWidgetId(Landroid/net/Uri;)I
    .locals 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v7, -0x1

    if-eqz v8, :cond_2

    const-string/jumbo v0, "appWidgetId"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-le v6, v9, :cond_0

    move v9, v6

    goto :goto_0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    return v9
.end method

.method private getParentScreenNumber(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    const-string/jumbo v2, "CDM_SCREEN_NUMBER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private getQuickPanelItemId(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "Wifi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "Location"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "SilentMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "RotationLock"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "AutoRotate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "Bluetooth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "MobileData"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x6

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "PowerSaving"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x7

    goto :goto_0

    :cond_8
    const-string/jumbo v1, "AirplaneMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v0, 0x8

    goto :goto_0

    :cond_9
    const-string/jumbo v1, "DormantMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v0, 0x9

    goto :goto_0

    :cond_a
    const-string/jumbo v1, "Flashlight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string/jumbo v1, "TorchLight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    const/16 v0, 0xa

    goto :goto_0

    :cond_c
    const-string/jumbo v1, "UltraPowerSaving"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v0, 0xb

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v1, "WiFiHotspot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string/jumbo v1, "WifiHotspot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    const/16 v0, 0xc

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v1, "SmartStay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v0, 0xd

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v1, "PersonalMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v0, 0xe

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v1, "AllShareCast"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v0, 0xf

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v1, "Nfc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v0, 0x10

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v1, "Sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v0, 0x11

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v1, "MultiWindow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v0, 0x12

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v1, "SFinder"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v0, 0x13

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v1, "DeviceVisibility"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v0, 0x14

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v1, "BlueLightFilter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/16 v0, 0x15

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v1, "Aod"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_0
.end method

.method private getQuickPanelItemString(I)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "Wifi"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "Location"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "SilentMode"

    goto :goto_0

    :pswitch_3
    iget-boolean v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v1, :cond_0

    const-string/jumbo v0, "AutoRotate"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "RotationLock"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "Bluetooth"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "MobileData"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "PowerSaving"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "AirplaneMode"

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "DormantMode"

    goto :goto_0

    :pswitch_9
    iget-boolean v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v1, :cond_1

    const-string/jumbo v0, "TorchLight"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Flashlight"

    goto :goto_0

    :pswitch_a
    const-string/jumbo v0, "UltraPowerSaving"

    goto :goto_0

    :pswitch_b
    iget-boolean v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v1, :cond_2

    const-string/jumbo v0, "WiFiHotspot"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "WifiHotspot"

    goto :goto_0

    :pswitch_c
    const-string/jumbo v0, "SmartStay"

    goto :goto_0

    :pswitch_d
    const-string/jumbo v0, "PersonalMode"

    goto :goto_0

    :pswitch_e
    const-string/jumbo v0, "AllShareCast"

    goto :goto_0

    :pswitch_f
    const-string/jumbo v0, "Nfc"

    goto :goto_0

    :pswitch_10
    const-string/jumbo v0, "Sync"

    goto :goto_0

    :pswitch_11
    const-string/jumbo v0, "MultiWindow"

    goto :goto_0

    :pswitch_12
    const-string/jumbo v0, "SFinder"

    goto :goto_0

    :pswitch_13
    const-string/jumbo v0, "DeviceVisibility"

    goto :goto_0

    :pswitch_14
    const-string/jumbo v0, "BlueLightFilter"

    goto :goto_0

    :pswitch_15
    const-string/jumbo v0, "Aod"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private getQuickPanelRemovedItems()Ljava/lang/String;
    .locals 5

    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "KNOX_CUSTOM"

    const-string/jumbo v3, "quickPanelTileList"

    const/16 v4, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialiseSystemUi()V
    .locals 10

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    if-eqz v3, :cond_4

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getProKioskState()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startProKioskMode()V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSettingsHiddenState()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    const/16 v6, 0x80

    if-ne v3, v6, :cond_0

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelButtonUsers(Z)V

    :cond_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarTextStyle()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarTextSize()I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarTextScrollWidth()I

    move-result v9

    invoke-interface {v3, v6, v7, v8, v9}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarTextInfo(Ljava/lang/String;III)V

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getLockScreenHiddenItems()I

    move-result v6

    invoke-interface {v3, v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setLockScreenHiddenItems(I)V

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getLockScreenOverrideMode()I

    move-result v6

    invoke-interface {v3, v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setLockScreenOverrideMode(I)V

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getQuickPanelButtons()I

    move-result v6

    invoke-interface {v3, v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelButtons(I)V

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getQuickPanelEditMode()I

    move-result v6

    invoke-interface {v3, v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelEditMode(I)V

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getQuickPanelRemovedItems()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelItems(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getScreenOffOnStatusBarDoubleTapState()Z

    move-result v6

    invoke-interface {v3, v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setScreenOffOnStatusBarDoubleTapState(Z)V

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setBatteryLevelColourItem(Lcom/samsung/android/knox/custom/StatusbarIconItem;)V

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getHideNotificationMessages()I

    move-result v6

    invoke-interface {v3, v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setHideNotificationMessages(I)V

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUnlockSimOnBootState()Z

    move-result v6

    invoke-interface {v3, v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setUnlockSimOnBootState(Z)V

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUnlockSimPin()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setUnlockSimPin(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getVolumePanelEnabledState()Z

    move-result v6

    invoke-interface {v3, v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setVolumePanelEnabledState(Z)V

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const-string/jumbo v3, "statusbar"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    iget v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mFlag:I

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarClockState()Z

    move-result v3

    if-nez v3, :cond_2

    const/high16 v3, 0x800000

    or-int/2addr v1, v3

    :cond_2
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarNotificationsState()Z

    move-result v3

    if-nez v3, :cond_3

    const/high16 v3, 0x1030000

    or-int/2addr v1, v3

    :cond_3
    iput v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mFlag:I

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mToken:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKey:Ljava/lang/String;

    invoke-interface {v2, v1, v3, v6}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarNotificationsState()Z

    move-result v6

    invoke-interface {v3, v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarNotificationsState(Z)V

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarIconsState()Z

    move-result v6

    invoke-interface {v3, v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarIconsState(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "initialiseSystemUi() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "KnoxCustomManagerService"

    const-string/jumbo v6, "mSystemUiCallback is not available in initialiseSystemUi"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private registerBootReceiver()V
    .locals 6

    :try_start_0
    sget-object v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;

    invoke-direct {v2, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    sput-object v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private registerKnoxCustomReceiver()V
    .locals 6

    :try_start_0
    sget-object v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.systemui.statusbar.STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;

    invoke-direct {v2, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    sput-object v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private serializeObject(Ljava/util/ArrayList;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/knox/custom/PowerItem;",
            ">;)[B"
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v3, "serializeObject"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method private serializeStatusbarIconItem(Lcom/samsung/android/knox/custom/StatusbarIconItem;)[B
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v3, "serializeStatusbarIconItem"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method private setKnoxSysFsIntValue(Ljava/lang/String;I)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-string/jumbo v5, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setKnoxSysFsIntValue Path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " IntValue "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v5, 0x1

    return v5

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v8

    :catch_1
    move-exception v1

    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    return v8

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v3, v4

    goto :goto_0
.end method

.method private setLockscreenWeatherHiddenForLegacy(Z)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string/jumbo v8, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v2, "LOCKSCREEN_AND_S_VIEW_COVER"

    const/4 v3, 0x0

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v9, "LOCKSCREEN_AND_S_VIEW_COVER"

    if-eqz p1, :cond_1

    move v8, v7

    :goto_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v4, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_0
    :goto_1
    if-lez v3, :cond_2

    :goto_2
    return v6

    :cond_1
    move v8, v6

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private setPermission(Ljava/io/File;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    return-void
.end method

.method private setPermissionWorldExecutable(Ljava/io/File;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {p1, v1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    return-void
.end method

.method private setPermissionWorldReadable(Ljava/io/File;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {p1, v1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    return-void
.end method

.method private setPowerDialogCustomItemsLocal(Ljava/util/List;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/custom/PowerItem;",
            ">;I)I"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->serializeObject(Ljava/util/ArrayList;)[B

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "powerCustomItems"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->updateBlob(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    if-nez v2, :cond_3

    return v6

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_2

    const/16 v2, -0x33

    return v2

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->serializeObject(Ljava/util/ArrayList;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    return v7
.end method

.method private setPowerDialogCustomItemsStateLocal(ZI)I
    .locals 8

    const/4 v2, 0x0

    const/4 v7, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "powerCustomItemsState"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/16 v6, 0x3e8

    invoke-virtual {v3, v6, v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    return v7

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "KnoxCustomManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPowerDialogCustomItemsState() failed - persistence problem"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1
    return v2
.end method

.method private setScreenCurtainDirect()V
    .locals 14

    const/4 v13, -0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    iget-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    if-eqz v9, :cond_0

    move v9, v10

    :goto_0
    iput-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "mDNIe"

    invoke-virtual {v9, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iget-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    invoke-virtual {v6, v9}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeScreenCurtain(Z)Z

    :goto_1
    return-void

    :cond_0
    move v9, v11

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v12, "high_contrast"

    invoke-static {v9, v12, v10, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v11, :cond_2

    const/4 v7, 0x1

    :goto_2
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v12, "color_blind"

    invoke-static {v9, v12, v10, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v11, :cond_3

    const/4 v3, 0x1

    :goto_3
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v12, "greyscale_mode"

    invoke-static {v9, v12, v10, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v11, :cond_4

    const/4 v4, 0x1

    :goto_4
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v12, "powersaving_switch"

    invoke-static {v9, v12, v10, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v11, :cond_5

    const/4 v8, 0x1

    :goto_5
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v12, "blackgrey_powersaving_mode"

    invoke-static {v9, v12, v10, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v11, :cond_6

    const/4 v5, 0x1

    :goto_6
    if-eqz v7, :cond_7

    if-eqz v4, :cond_7

    const/4 v9, 0x5

    invoke-virtual {v6, v9, v11}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    :cond_7
    if-eqz v5, :cond_8

    if-eqz v8, :cond_8

    const/16 v9, 0x9

    :try_start_0
    new-array v0, v9, [I

    fill-array-data v0, :array_0

    const/4 v9, 0x1

    invoke-virtual {v6, v9, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_8
    if-eqz v4, :cond_9

    const/4 v9, 0x4

    invoke-virtual {v6, v9, v11}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto/16 :goto_1

    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v6, v11}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeNegative(Z)Z

    goto/16 :goto_1

    :cond_a
    if-eqz v3, :cond_b

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v9, "com.samsung.android.app.colorblind.ACTION_COLORBLIND_SWITCH_ON"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v2, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    :cond_b
    iget-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    invoke-virtual {v6, v9}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeScreenCurtain(Z)Z

    goto/16 :goto_1

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

.method private setStatusBarModeLocal(II)I
    .locals 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/knox/kiosk/KioskMode;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/kiosk/KioskMode;->isStatusBarHidden()Z

    move-result v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_0

    const-string/jumbo v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setStatusBarMode() - eSDK status bar already hidden"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x7

    return v6

    :cond_0
    const/4 v3, -0x6

    const/4 v6, 0x2

    if-eq p1, v6, :cond_1

    const/4 v6, 0x3

    if-eq p1, v6, :cond_1

    const/4 v6, 0x4

    if-ne p1, v6, :cond_2

    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "statusBarMode"

    invoke-virtual {v6, p2, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateStatusBarLocal()V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_2
    const/16 v3, -0x2b

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setStatusBarMode() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0
.end method

.method private setUsbMassStorageStateLocal(ZI)I
    .locals 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isUsbMediaPlayerAvailable(Z)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_1

    const-string/jumbo v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setUsbMassStorageState() - eSDK USB media player disabled"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x7

    return v6

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x6

    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "usbMassStorageStateIndependentSealed"

    invoke-virtual {v6, p2, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :goto_1
    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setUsbMassStorageState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_1
.end method

.method private setUsbNetAddressesLocal(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    const/4 v1, -0x6

    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkIpAddressString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkIpAddressString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "usbNetSource"

    invoke-virtual {v2, p3, v3, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "usbNetDest"

    invoke-virtual {v2, p3, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/16 v2, -0x24

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUsbNetAddresses() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method private setUsbNetStateLocal(ZI)I
    .locals 8

    const/4 v7, 0x1

    const/4 v1, -0x6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/16 v4, 0x14b

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const/16 v4, 0x14c

    invoke-virtual {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v4, "KnoxCustomManagerService"

    const-string/jumbo v5, "setUsbNetState() failed - invalid IP addresses "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, -0x24

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "adb_enabled"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_2

    if-eqz p1, :cond_2

    const-string/jumbo v4, "KnoxCustomManagerService"

    const-string/jumbo v5, "setUsbNetState() failed - USB debugging mode"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x2b

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "usbNetState"

    invoke-virtual {v4, p2, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startStopUsbNet(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUsbNetState() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method private startProKioskMode()V
    .locals 15

    const/4 v13, 0x4

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    const-string/jumbo v8, "statusbar"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v5

    if-eqz v5, :cond_1

    iget v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mFlag:I

    const/high16 v10, 0x1030000

    or-int v3, v8, v10

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "KNOX_CUSTOM"

    const-string/jumbo v11, "statusBarClockState"

    const/16 v12, 0x3e8

    invoke-virtual {v8, v12, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ne v8, v13, :cond_0

    const/high16 v8, 0x800000

    or-int/2addr v3, v8

    :cond_0
    iput v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mFlag:I

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mToken:Landroid/os/IBinder;

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKey:Ljava/lang/String;

    invoke-interface {v5, v3, v8, v10}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    :cond_1
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarNotificationsState(Z)V

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "KNOX_CUSTOM"

    const-string/jumbo v11, "statusBarIconsState"

    const/16 v12, 0x3e8

    invoke-virtual {v8, v12, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ne v8, v13, :cond_2

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarIconsState(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateStatusBarLocal()V

    sget-object v10, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->edgePackages:[Ljava/lang/String;

    array-length v11, v10

    move v8, v9

    :goto_1
    if-ge v8, v11, :cond_5

    aget-object v0, v10, v8

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v12

    invoke-virtual {v12, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    :try_start_1
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v12

    invoke-virtual {v12, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setDisableApplication(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    :try_start_2
    const-string/jumbo v8, "KnoxCustomManagerService"

    const-string/jumbo v10, "mSystemUiCallback is not available in startProKioskMode"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v8, "KnoxCustomManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "startProKioskMode() failed - persistence problem "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v12, "KnoxCustomManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Warning: could not disable "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v10, "people_stripe"

    invoke-static {v8, v10, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v10, "task_edge"

    invoke-static {v8, v10, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbMassStorageState(Z)I

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->allowSafeMode(Z)Z

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private startStopUsbNet(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mTempContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$3;

    invoke-direct {v1, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$3;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private stopProKioskMode()V
    .locals 15

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_0
    const-string/jumbo v7, "statusbar"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v6

    if-eqz v6, :cond_2

    iget v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mFlag:I

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "KNOX_CUSTOM"

    const-string/jumbo v11, "statusBarClockState"

    const/16 v12, 0x3e8

    invoke-virtual {v7, v12, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v10, 0x4

    if-ne v7, v10, :cond_0

    const v7, -0x800001

    and-int/2addr v3, v7

    :cond_0
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarNotificationsState()Z

    move-result v7

    if-eqz v7, :cond_1

    const v7, -0x1030001

    and-int/2addr v3, v7

    :cond_1
    iput v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mFlag:I

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mToken:Landroid/os/IBinder;

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKey:Ljava/lang/String;

    invoke-interface {v6, v3, v7, v10}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    :cond_2
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarNotificationsState()Z

    move-result v10

    invoke-interface {v7, v10}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarNotificationsState(Z)V

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "KNOX_CUSTOM"

    const-string/jumbo v11, "statusBarIconsState"

    const/16 v12, 0x3e8

    invoke-virtual {v7, v12, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v10, 0x4

    if-ne v7, v10, :cond_3

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    const/4 v10, 0x1

    invoke-interface {v7, v10}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarIconsState(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateStatusBarLocal()V

    sget-object v10, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->edgePackages:[Ljava/lang/String;

    const/4 v7, 0x0

    array-length v11, v10

    :goto_1
    if-ge v7, v11, :cond_6

    aget-object v0, v10, v7

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v12

    invoke-virtual {v12, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    :try_start_1
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v12

    invoke-virtual {v12, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setEnableApplication(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    :try_start_2
    const-string/jumbo v7, "KnoxCustomManagerService"

    const-string/jumbo v10, "mSystemUiCallback is not available in stopProKioskMode"

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v7, "KnoxCustomManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "stopProKioskMode() failed - persistence problem stopProKioskMode"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v12, "KnoxCustomManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Warning: could not enable "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    :try_start_3
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.MAIN"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "com.samsung.android.app.cocktailbarservice"

    const-string/jumbo v10, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "people_stripe"

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "task_edge"

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbMassStorageState(Z)I

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->allowSafeMode(Z)Z

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_2
    move-exception v1

    const-string/jumbo v7, "KnoxCustomManagerService"

    const-string/jumbo v10, "Warning: could not start cocktail bar"

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private updateHomeScreen(I)V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    invoke-virtual {v1, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;->removeMessages(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private updateStatusBarLocal()V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarMode()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const-string/jumbo v1, "immersive.full=apps,*"

    :cond_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "policy_control"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/PolicyControl;->reloadFromSetting(Landroid/content/Context;)V

    return-void
.end method

.method private updateWidget(IJIIIIIILandroid/net/Uri;)I
    .locals 18

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p10

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_3

    :try_start_0
    const-string/jumbo v2, "appWidgetId"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const/4 v11, 0x0

    :cond_0
    :goto_0
    if-nez v11, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    :try_start_1
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p1

    if-le v0, v1, :cond_0

    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    const-wide/16 v2, 0xc8

    cmp-long v2, v12, v2

    if-gez v2, :cond_2

    const-wide/16 v2, 0xc8

    cmp-long v2, p2, v2

    if-gez v2, :cond_1

    const-wide/16 p2, 0xc8

    :cond_1
    const-string/jumbo v2, "_id"

    const-wide/16 v4, 0x1

    add-long v4, v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    const-string/jumbo v2, "cellX"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "cellY"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "screen"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "spanX"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "spanY"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p10

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateHomeScreen(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v15, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v10

    :try_start_2
    const-string/jumbo v2, "KnoxCustomManagerService"

    const-string/jumbo v3, "Launcher Database Error:"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v10

    :try_start_3
    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWidget() failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    return v15

    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private writePathToFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v0, v1

    :cond_1
    :goto_1
    return v5

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_2
    :try_start_3
    const-string/jumbo v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "InfoFile write failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    throw v6

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v6

    move-object v0, v1

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public addAutoCallNumber(Ljava/lang/String;II)I
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string/jumbo v14, "android.hardware.telephony"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "connectivity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v13, -0x6

    return v13

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_1
    const-string/jumbo v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "addAutoCallNumber() failed - number is null or empty"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, -0x32

    return v13

    :cond_2
    sget-object v13, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-nez v13, :cond_3

    const-string/jumbo v13, "KnoxCustomManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "addAutoCallNumber() failed - invalid number: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, -0x32

    return v13

    :cond_3
    if-ltz p2, :cond_4

    const/16 v13, 0x1e

    move/from16 v0, p2

    if-le v0, v13, :cond_5

    :cond_4
    const-string/jumbo v13, "KnoxCustomManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "addAutoCallNumber() failed - invalid delay: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, -0x32

    return v13

    :cond_5
    if-eqz p3, :cond_6

    const/4 v13, 0x1

    move/from16 v0, p3

    if-eq v0, v13, :cond_6

    const-string/jumbo v13, "KnoxCustomManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "addAutoCallNumber() failed - invalid answer mode: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, -0x32

    return v13

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v2

    const/4 v12, -0x6

    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "autoCallNumberList"

    const/16 v16, 0x3e8

    move/from16 v0, v16

    invoke-virtual {v13, v0, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v6, ""

    const/4 v5, 0x0

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_9

    :cond_7
    if-nez v5, :cond_8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_8
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x0

    invoke-virtual {v6, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "autoCallNumberList"

    invoke-virtual {v13, v2, v14, v15, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v12, 0x0

    :goto_0
    return v12

    :cond_9
    const-string/jumbo v13, ":"

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    array-length v14, v8

    :goto_1
    if-ge v13, v14, :cond_7

    aget-object v10, v8, v13

    const-string/jumbo v15, ","

    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    aget-object v15, v11, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v15, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->compareAutoCallNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/4 v5, 0x1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_a
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_2

    :catch_0
    move-exception v4

    const-string/jumbo v13, "KnoxCustomManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "addAutoCallNumber() failed - persistence problem "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, -0x1

    goto :goto_0
.end method

.method public addPackagesToUltraPowerSaving(Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v8, -0x1

    :try_start_0
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isUltraPowerSavingModeSupported()Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, -0x6

    return v9

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    const/16 v9, -0x28

    return v9

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const/16 v9, -0x32

    return v9

    :cond_4
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "KNOX_CUSTOM"

    const-string/jumbo v11, "upsmAppLists"

    invoke-virtual {v9, v0, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUltraPowerSavingPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_7
    :goto_1
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "KNOX_CUSTOM"

    const-string/jumbo v11, "upsmAppLists"

    invoke-virtual {v9, v0, v10, v11, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v9, "KnoxCustomManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "added PackageList is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :goto_2
    return v8

    :cond_8
    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception v3

    const-string/jumbo v9, "KnoxCustomManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "addPackagesToUltraPowerSaving() failed - persistence problem "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x1

    goto :goto_2
.end method

.method public addShortcutToHomeScreen(Lcom/samsung/android/knox/custom/ShortcutItem;)I
    .locals 57

    const/16 v44, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v9

    if-nez p1, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/custom/ShortcutItem;->getShortcutType()I

    move-result v47

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/custom/ShortcutItem;->getName()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/custom/ShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v42

    const/16 v33, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/custom/ShortcutItem;->getParent()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/custom/ShortcutItem;->getCellX()I

    move-result v55

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/custom/ShortcutItem;->getCellY()I

    move-result v56

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/custom/ShortcutItem;->getColour()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/custom/ShortcutItem;->getMoreItems()I

    move-result v40

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/custom/ShortcutItem;->getIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/custom/ShortcutItem;->getFolderPosition()I

    move-result v26

    const/4 v2, 0x1

    move/from16 v0, v47

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    move/from16 v0, v47

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    move/from16 v0, v47

    if-eq v0, v2, :cond_1

    const/16 v2, -0x2b

    return v2

    :cond_1
    if-eqz v41, :cond_2

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/16 v2, -0x28

    return v2

    :cond_3
    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x20

    if-gt v2, v4, :cond_2

    if-eqz v43, :cond_4

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const/16 v2, -0x29

    return v2

    :cond_5
    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x20

    if-gt v2, v4, :cond_4

    const/4 v2, 0x1

    move/from16 v0, v40

    if-eq v0, v2, :cond_6

    if-eqz v40, :cond_6

    const/16 v2, -0x32

    return v2

    :cond_6
    const/4 v2, 0x3

    move/from16 v0, v47

    if-ne v0, v2, :cond_8

    if-eqz v12, :cond_a

    const/4 v2, 0x1

    if-lt v12, v2, :cond_7

    const/4 v2, 0x5

    if-le v12, v2, :cond_a

    :cond_7
    const/16 v2, -0x32

    return v2

    :cond_8
    if-nez v42, :cond_9

    const/16 v2, -0x21

    return v2

    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v33

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getParentScreenNumber(Ljava/lang/String;)I

    move-result v45

    if-lez v45, :cond_e

    if-ltz v55, :cond_b

    const/4 v2, 0x5

    move/from16 v0, v55

    if-le v0, v2, :cond_c

    :cond_b
    const/16 v2, -0x32

    return v2

    :cond_c
    if-ltz v56, :cond_d

    const/4 v2, 0x5

    move/from16 v0, v56

    if-le v0, v2, :cond_10

    :cond_d
    const/16 v2, -0x32

    return v2

    :cond_e
    if-ltz v26, :cond_f

    const/16 v2, 0xb

    move/from16 v0, v26

    if-le v0, v2, :cond_10

    :cond_f
    const/16 v2, -0x32

    return v2

    :cond_10
    const/4 v2, 0x2

    move/from16 v0, v47

    if-ne v0, v2, :cond_11

    if-nez v27, :cond_11

    const/16 v2, -0x39

    return v2

    :cond_11
    move/from16 v36, v47

    const/16 v13, -0x64

    const/16 v48, 0x0

    sget-object v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_12

    const/16 v48, 0x1

    sget-object v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->CONTENT_URI_ZERO:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_12

    const/16 v2, -0x36

    return v2

    :cond_12
    move/from16 v7, v48

    if-eqz v7, :cond_16

    const/4 v2, 0x1

    move/from16 v0, v47

    if-ne v0, v2, :cond_14

    const/16 v36, 0x1

    :goto_0
    move-object/from16 v2, p0

    move/from16 v4, v55

    move/from16 v5, v56

    move/from16 v6, v45

    :try_start_0
    invoke-direct/range {v2 .. v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteShortcutAtPosition(Landroid/net/Uri;IIIZ)V

    const-string/jumbo v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    const-string/jumbo v2, "title"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v50

    const-string/jumbo v2, "screen"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v46

    const-string/jumbo v2, "itemType"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    const-string/jumbo v2, "cellX"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v2, "cellY"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-wide/16 v30, -0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getMaxId(Landroid/net/Uri;)J

    move-result-wide v38

    const-wide/16 v4, 0xc8

    cmp-long v2, v38, v4

    if-gez v2, :cond_13

    const-wide/16 v38, 0xc8

    :cond_13
    const-wide/16 v4, 0x1

    add-long v38, v38, v4

    const/16 v37, -0x1

    const-wide/16 v28, -0x1

    const/4 v15, 0x0

    if-eqz v7, :cond_19

    const-string/jumbo v2, "containerId"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    :goto_1
    if-gtz v45, :cond_20

    const/4 v2, 0x3

    move/from16 v0, v47

    if-ne v0, v2, :cond_1a

    const/16 v2, -0x29

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return v2

    :cond_14
    const/4 v2, 0x3

    move/from16 v0, v47

    if-ne v0, v2, :cond_15

    const/16 v36, 0x3

    goto :goto_0

    :cond_15
    const/16 v36, 0x2

    goto :goto_0

    :cond_16
    const/4 v2, 0x1

    move/from16 v0, v47

    if-ne v0, v2, :cond_17

    const/16 v36, 0x0

    goto :goto_0

    :cond_17
    const/4 v2, 0x3

    move/from16 v0, v47

    if-ne v0, v2, :cond_18

    const/16 v36, 0x2

    goto :goto_0

    :cond_18
    const/16 v36, 0x1

    goto/16 :goto_0

    :cond_19
    :try_start_1
    const-string/jumbo v2, "container"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    goto :goto_1

    :cond_1a
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_21

    :try_start_2
    move/from16 v0, v50

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    move/from16 v0, v35

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    if-nez v23, :cond_1c

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    if-eqz v7, :cond_1b

    const/4 v2, 0x3

    move/from16 v0, v34

    if-ne v0, v2, :cond_1a

    move/from16 v0, v32

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    const/16 v23, 0x1

    goto :goto_2

    :cond_1b
    const/4 v2, 0x2

    move/from16 v0, v34

    if-ne v0, v2, :cond_1a

    move/from16 v0, v32

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    const/16 v23, 0x1

    goto :goto_2

    :cond_1c
    if-nez v7, :cond_1e

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    int-to-long v4, v14

    cmp-long v2, v4, v30

    if-nez v2, :cond_1a

    move/from16 v0, v32

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move/from16 v0, v46

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v37

    if-le v0, v1, :cond_1d

    move/from16 v37, v19

    :cond_1d
    if-eqz v26, :cond_1a

    add-int/lit8 v2, v26, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_1a

    move-wide/from16 v28, v20

    goto :goto_2

    :cond_1e
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    int-to-long v4, v14

    cmp-long v2, v4, v30

    if-nez v2, :cond_1a

    move/from16 v0, v32

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v17

    mul-int/lit8 v2, v17, 0x3

    add-int v18, v2, v16

    move/from16 v0, v18

    move/from16 v1, v37

    if-le v0, v1, :cond_1f

    move/from16 v37, v18

    :cond_1f
    if-eqz v26, :cond_1a

    add-int/lit8 v2, v26, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_1a

    move-wide/from16 v28, v20

    goto/16 :goto_2

    :catch_0
    move-exception v22

    :try_start_3
    const-string/jumbo v2, "KnoxCustomManagerService"

    const-string/jumbo v4, "Launcher Database Error:"

    move-object/from16 v0, v22

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catch_1
    move-exception v22

    :try_start_4
    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "addShortcutToHomeScreen() failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_3
    return v44

    :cond_20
    const/4 v2, 0x7

    move/from16 v0, v45

    if-le v0, v2, :cond_21

    const/16 v2, -0x29

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return v2

    :cond_21
    const-wide/16 v4, 0x0

    cmp-long v2, v30, v4

    if-gtz v2, :cond_22

    if-lez v45, :cond_31

    :cond_22
    :try_start_5
    new-instance v54, Landroid/content/ContentValues;

    invoke-direct/range {v54 .. v54}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "_id"

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "title"

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v45, :cond_23

    const-string/jumbo v2, "cellX"

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "cellY"

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_23
    const-string/jumbo v2, "spanX"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "spanY"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "appWidgetId"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "itemType"

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x3

    move/from16 v0, v47

    if-ne v0, v2, :cond_27

    if-eqz v12, :cond_24

    const-string/jumbo v2, "color"

    add-int/lit8 v4, v12, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_24
    if-eqz v7, :cond_25

    const-string/jumbo v2, "container"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_25
    :goto_4
    if-eqz v7, :cond_2c

    const-string/jumbo v2, "show"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-lez v45, :cond_29

    const-string/jumbo v2, "containerId"

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v54

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const-wide/16 v4, -0x1

    cmp-long v2, v28, v4

    if-eqz v2, :cond_26

    new-instance v53, Landroid/content/ContentValues;

    invoke-direct/range {v53 .. v53}, Landroid/content/ContentValues;-><init>()V

    if-eqz v7, :cond_30

    add-int/lit8 v2, v37, 0x1

    div-int/lit8 v52, v2, 0x3

    add-int/lit8 v2, v37, 0x1

    mul-int/lit8 v4, v52, 0x3

    sub-int v51, v2, v4

    const-string/jumbo v2, "cellX"

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "cellY"

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateHomeScreen(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v44, 0x0

    :goto_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :cond_27
    :try_start_6
    const-string/jumbo v2, "intent"

    move-object/from16 v0, v54

    move-object/from16 v1, v33

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_28

    const-string/jumbo v2, "container"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_28
    const/4 v2, 0x2

    move/from16 v0, v47

    if-ne v0, v2, :cond_25

    const-string/jumbo v2, "iconType"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "icon"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/custom/ShortcutItem;->getIconArray()[B

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_29
    :try_start_7
    const-string/jumbo v2, "containerId"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v26, :cond_2a

    add-int/lit8 v2, v37, 0x1

    move/from16 v0, v26

    if-le v0, v2, :cond_2b

    :cond_2a
    add-int/lit8 v26, v37, 0x1

    :goto_8
    div-int/lit8 v25, v26, 0x3

    mul-int/lit8 v2, v25, 0x3

    sub-int v24, v26, v2

    const-string/jumbo v2, "cellX"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "cellY"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_5

    :cond_2b
    add-int/lit8 v26, v26, -0x1

    goto :goto_8

    :cond_2c
    if-lez v45, :cond_2d

    const-string/jumbo v2, "screen"

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "container"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_5

    :cond_2d
    const-string/jumbo v2, "container"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v26, :cond_2e

    add-int/lit8 v2, v37, 0x1

    move/from16 v0, v26

    if-le v0, v2, :cond_2f

    :cond_2e
    add-int/lit8 v26, v37, 0x1

    :goto_9
    const-string/jumbo v2, "screen"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_5

    :cond_2f
    add-int/lit8 v26, v26, -0x1

    goto :goto_9

    :cond_30
    const-string/jumbo v2, "screen"

    add-int/lit8 v4, v37, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_6

    :cond_31
    const/16 v44, -0x36

    goto/16 :goto_7
.end method

.method public addWidgetToHomeScreen(Lcom/samsung/android/knox/custom/WidgetItem;)I
    .locals 32

    const/16 v25, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v21

    if-nez p1, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/custom/WidgetItem;->getWidgetType()I

    move-result v31

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/custom/WidgetItem;->getIntent()Landroid/content/Intent;

    move-result-object v23

    const/16 v22, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/custom/WidgetItem;->getParent()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/custom/WidgetItem;->getCellX()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/custom/WidgetItem;->getCellY()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/custom/WidgetItem;->getSizeX()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/custom/WidgetItem;->getSizeY()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/custom/WidgetItem;->getMoreItems()I

    move-result v17

    if-nez v23, :cond_1

    const/16 v2, -0x21

    return v2

    :cond_1
    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v27

    if-nez v27, :cond_2

    const/16 v2, -0x21

    return v2

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v22

    const/4 v2, 0x5

    move/from16 v0, v31

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    move/from16 v0, v31

    if-eq v0, v2, :cond_3

    const/16 v2, -0x2b

    return v2

    :cond_3
    const/4 v2, 0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_4

    if-eqz v17, :cond_4

    const/16 v2, -0x32

    return v2

    :cond_4
    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    const/16 v2, -0x21

    return v2

    :cond_6
    if-eqz v23, :cond_5

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v30

    if-eqz v24, :cond_7

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    const/16 v2, -0x29

    return v2

    :cond_8
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x20

    if-gt v2, v4, :cond_7

    if-ltz v12, :cond_9

    const/4 v2, 0x5

    if-le v12, v2, :cond_a

    :cond_9
    const/16 v2, -0x32

    return v2

    :cond_a
    if-ltz v13, :cond_b

    const/4 v2, 0x5

    if-le v13, v2, :cond_c

    :cond_b
    const/16 v2, -0x32

    return v2

    :cond_c
    const/4 v2, 0x1

    if-lt v15, v2, :cond_d

    const/4 v2, 0x5

    if-le v15, v2, :cond_e

    :cond_d
    const/16 v2, -0x32

    return v2

    :cond_e
    const/4 v2, 0x1

    move/from16 v0, v16

    if-lt v0, v2, :cond_f

    const/4 v2, 0x5

    move/from16 v0, v16

    if-le v0, v2, :cond_10

    :cond_f
    const/16 v2, -0x32

    return v2

    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getParentScreenNumber(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_11

    const/4 v2, 0x7

    if-le v14, v2, :cond_12

    :cond_11
    const/16 v2, -0x29

    return v2

    :cond_12
    const/16 v26, 0x0

    sget-object v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    if-nez v20, :cond_13

    sget-object v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->CONTENT_URI_ZERO:Landroid/net/Uri;

    const/4 v7, 0x1

    :goto_0
    move-object/from16 v2, p0

    move v4, v12

    move v5, v13

    move v6, v14

    invoke-direct/range {v2 .. v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteShortcutAtPosition(Landroid/net/Uri;IIIZ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getMaxWidgetId(Landroid/net/Uri;)I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v2, :cond_14

    new-instance v19, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.launcher.action.BIND_WIDGET"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v2, "componentName"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "spanX"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "spanY"

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-wide/16 v4, 0x12c

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getMaxId(Landroid/net/Uri;)J

    move-result-wide v10

    move-object/from16 v8, p0

    move-object/from16 v18, v3

    invoke-direct/range {v8 .. v18}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateWidget(IJIIIIIILandroid/net/Uri;)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateHomeScreen(I)V

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v25

    :cond_13
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    move/from16 v7, v26

    goto :goto_0

    :cond_14
    new-instance v19, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.launcher.action.BIND_WIDGET"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public checkEnterprisePermission(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public clearAnimation(I)I
    .locals 14

    const/4 v13, 0x0

    const/4 v12, -0x1

    const/4 v7, -0x1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    new-instance v2, Ljava/io/File;

    const-string/jumbo v9, "/data/b2b"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string/jumbo v9, "/efs/knoxcustom"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    return v13

    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    if-nez p1, :cond_5

    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string/jumbo v9, "/data/b2b/BootFileInfo.txt"

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "/data/b2b/SoundFileInfo.txt"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v9, "/data/b2b/DelayInfo.txt"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string/jumbo v9, "/efs/knoxcustom/KnoxCustomBootEnable.txt"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-direct {p0, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-direct {p0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-direct {p0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-direct {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-direct {p0, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_4

    return v12

    :cond_4
    const/4 v7, 0x0

    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :catch_0
    move-exception v4

    return v12

    :cond_5
    const/4 v9, 0x1

    if-ne p1, v9, :cond_7

    :try_start_1
    new-instance v6, Ljava/io/File;

    const-string/jumbo v9, "/data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-direct {p0, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    :cond_6
    invoke-direct {p0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldExecutable(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v7, 0x0

    goto :goto_0

    :catch_1
    move-exception v4

    return v12

    :cond_7
    const/16 v7, -0x32

    goto :goto_0
.end method

.method public copyAdbLog(I)I
    .locals 14

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    const/4 v8, -0x6

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v9, "KnoxCustomManagerService"

    const-string/jumbo v12, "copyAdbLog() failed - invalid logType "

    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, -0x32

    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :pswitch_0
    :try_start_0
    const-string/jumbo v2, "/data/log/customLogcat.log"

    const-string/jumbo v1, "logcat -d -v time -f /data/log/customLogcat.log"

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const-string/jumbo v12, "logcat -d -v time -f /data/log/customLogcat.log"

    invoke-virtual {v9, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Process;->waitFor()I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const-string/jumbo v12, "chmod  644 /data/log/customLogcat.log"

    invoke-virtual {v9, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v9, "KnoxCustomManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "copyAdbLog() failed - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x1

    goto :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v9, "KnoxCustomManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "copyAdbLog() failed - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x1

    goto :goto_0

    :pswitch_1
    :try_start_1
    const-string/jumbo v2, "/data/log/customKernel.log"

    const-string/jumbo v6, "/proc/last_kmsg"

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "cp "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/data/log/customKernel.log"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Process;->waitFor()I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const-string/jumbo v12, "chmod  644 /data/log/customKernel.log"

    invoke-virtual {v9, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_0
    const/4 v8, -0x1

    goto/16 :goto_0

    :catch_2
    move-exception v4

    const-string/jumbo v9, "KnoxCustomManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "copyAdbLog() failed - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x1

    goto/16 :goto_0

    :catch_3
    move-exception v3

    const-string/jumbo v9, "KnoxCustomManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "copyAdbLog() failed - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dialEmergencyNumber(Ljava/lang/String;)I
    .locals 9

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v3, -0x6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.hardware.telephony"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getProKioskState()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    const/16 v3, -0x28

    :cond_1
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_2
    :try_start_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.CALL_EMERGENCY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/16 v3, -0x31

    goto :goto_0

    :cond_4
    const/4 v3, -0x2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "dialEmergencyNumber() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getAccessibilitySettingsItems()I
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "anykey_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voice_input_control_incomming_calls"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "incall_power_button_behavior"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    or-int/lit8 v1, v1, 0x4

    :cond_2
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "easy_interaction"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x10

    :cond_3
    iget-boolean v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notification_reminder"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x8

    :cond_4
    :goto_0
    return v1

    :cond_5
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notification_reminder_selectable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x8

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAccessibilitySettingsItems() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAirGestureOptionState(I)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "air_button_onoff"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAirGestureOptionState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pen_hovering"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-ne v2, v5, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAirGestureOptionState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAppBlockDownloadNamespaces()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "blockDownloadNamespaces"

    const/16 v8, 0x3e8

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    array-length v6, v2

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v5, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAppBlockDownloadNamespaces() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAppBlockDownloadState()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "blockDownloadState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAppBlockDownloadState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAutoCallNumberAnswerMode(Ljava/lang/String;)I
    .locals 4

    const/16 v3, -0x32

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v3

    :cond_1
    sget-object v2, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getAutoCallNumberRecord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const/16 v2, -0x36

    return v2

    :cond_3
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public getAutoCallNumberDelay(Ljava/lang/String;)I
    .locals 4

    const/16 v3, -0x32

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v3

    :cond_1
    sget-object v2, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getAutoCallNumberRecord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const/16 v2, -0x36

    return v2

    :cond_3
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public getAutoCallNumberList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "autoCallNumberList"

    const/16 v10, 0x3e8

    invoke-virtual {v7, v10, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    const-string/jumbo v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v7, v1

    :goto_1
    if-ge v6, v7, :cond_0

    aget-object v3, v1, v6

    const-string/jumbo v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getAutoCallNumberList() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAutoCallPickupState()I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "autoCallPickupState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAutoCallPickupState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBackupRestoreState(I)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    if-ne p1, v7, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const-string/jumbo v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v3, "KnoxCustomManagerService"

    const-string/jumbo v6, "Failed to get BackupManager"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    :goto_1
    return v2

    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isBackupEnabled exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "backup_auto_restore"

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "batteryLevelColourItems"

    const/16 v6, 0x3e8

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deserializeStatusbarIconItem([B)Lcom/samsung/android/knox/custom/StatusbarIconItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    const-string/jumbo v4, "getPermissions() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCallScreenDisabledItems()I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "callScreenItems"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCallScreenDisabledItems() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCheckCoverPopupState()Z
    .locals 6

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "checkCoverPopupState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCheckCoverPopupState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDeviceSpeakerEnabledState()Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isForceSpeakerOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDeviceSpeakerEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDisplayMirroringState()Z
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "display"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDisplayMirroringState() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEthernetConfigurationType()I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "ethernetConnectionType"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEthernetConfigurationType() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEthernetState()Z
    .locals 14

    const/4 v13, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "KNOX_CUSTOM"

    const-string/jumbo v11, "ethernetState"

    const/16 v12, 0x3e8

    invoke-virtual {v9, v12, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "ethernet"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/EthernetManager;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/EthernetManager;->isAvailable()Z

    move-result v9

    if-nez v9, :cond_1

    return v13

    :cond_0
    return v13

    :cond_1
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "ethernet"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string/jumbo v10, "getEthState"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    const/4 v8, 0x1

    :cond_2
    :goto_0
    return v8

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    const/4 v8, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v9, "KnoxCustomManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getEthernetState() failed - persistence problem "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v7

    const/4 v8, 0x0

    goto :goto_0

    :catch_2
    move-exception v3

    const/4 v8, 0x0

    goto :goto_0

    :catch_3
    move-exception v6

    const/4 v8, 0x0

    goto :goto_0
.end method

.method public getExitUI(I)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v2, "KnoxCustomManagerService"

    const-string/jumbo v3, "getExitUI() called with invalid stringType"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "sealedExitUiPackage"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getExitUI() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "sealedExitUiClass"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getExitUI() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xdd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getExtendedCallInfoState()Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "extendedCallInfoState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getExtendedCallInfoState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getForceAutoStartUpState()I
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->getInstance(Landroid/content/Context;)Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->isKnoxCustomAutoStartUpEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getForceAutoStartUp() failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getForceAutoStartUpStateFromDB()Z
    .locals 8

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "AutoStartUpState"

    const/16 v7, 0x3e8

    invoke-virtual {v4, v7, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getForceAutoStartupStateFromDB() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getGearNotificationState()Z
    .locals 6

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "gearNotificationState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getGearNotificationState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getHardKeyIntentState()Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "sealedHardKeyIntentState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getHardKeyIntentState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getHideNotificationMessages()I
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "notificationMessagesMask"

    const/16 v6, 0x3e8

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    and-int/lit8 v2, v1, -0x5

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getHideNotificationMessages() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getHomeActivity()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "sealedHomeActivity"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getHomeActivity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getInfraredState()Z
    .locals 9

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "consumer_ir"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ConsumerIrManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/ConsumerIrManager;->hasIrEmitter()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "infraredState"

    const/16 v8, 0x3e8

    invoke-virtual {v3, v8, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getInfraredState() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getInputMethodRestrictionState()Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "inputRestrictionState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getInputMethodRestrictionState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getKeyboardMode()I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "keyboardMode"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getKeyboardMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLTESettingState()Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "LTESettingState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLTESettingState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLcdBacklightState()Z
    .locals 1

    sget-boolean v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mForceLcdBacklightOffEnabled:Z

    return v0
.end method

.method public getLockScreenHiddenItems()I
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "lockScreenItems"

    const/16 v11, 0x3e8

    invoke-virtual {v8, v11, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-boolean v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "lock_screen_show_clock"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_0

    or-int/lit8 v4, v4, 0x1

    :cond_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "lock_screen_date_and_year"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_1

    or-int/lit8 v4, v4, 0x10

    :cond_1
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getLockScreenHideOwnerInfo()I

    move-result v8

    if-ne v8, v13, :cond_2

    or-int/lit8 v4, v4, 0x20

    :cond_2
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "lock_application_shortcut"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v8, :cond_7

    if-nez v1, :cond_3

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "set_shortcuts_mode"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_3

    or-int/lit8 v4, v4, 0x40

    :cond_3
    :goto_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "lock_additional_info"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_4

    or-int/lit16 v4, v4, 0x80

    :cond_4
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "unlock_text"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_5

    or-int/lit16 v4, v4, 0x100

    :cond_5
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "lock_screen_show_notifications"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-nez v8, :cond_6

    or-int/lit16 v4, v4, 0x200

    :cond_6
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_7
    :try_start_1
    const-string/jumbo v8, ";"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    aget-object v8, v5, v8

    const-string/jumbo v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x2

    aget-object v8, v5, v8

    const-string/jumbo v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    if-eqz v8, :cond_3

    or-int/lit8 v4, v4, 0x40

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string/jumbo v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setLockScreenHiddenItems() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v12

    :catch_1
    move-exception v2

    const-string/jumbo v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getLockScreenHiddenItems() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v12
.end method

.method public getLockScreenOverrideMode()I
    .locals 1

    sget v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mLockScreenOverrideMode:I

    return v0
.end method

.method public getLockScreenShortcut(I)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "lock_application_shortcut"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v1, 0x0

    const-string/jumbo v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-nez p1, :cond_3

    const/4 v6, 0x1

    aget-object v1, v5, v6

    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    const-string/jumbo v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getLockScreenShortcut() from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x2f

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    if-ne p1, v8, :cond_2

    const/4 v6, 0x3

    aget-object v1, v5, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getLockScreenShortcut() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 11

    const-string/jumbo v4, "02:00:00:00:00:00"

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catch_0
    move-exception v1

    const-string/jumbo v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getMacAddress() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMobileNetworkType()I
    .locals 7

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v6, "android.hardware.telephony"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, -0x6

    return v3

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getPreferredNetworkType(I)I

    move-result v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method

.method public getPowerDialogCustomItems()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/custom/PowerItem;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "powerCustomItems"

    const/16 v6, 0x3e8

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deserializeObject([B)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    const-string/jumbo v4, "getPowerDialogCustomItems() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPowerDialogCustomItemsState()Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "powerCustomItemsState"

    const/16 v6, 0x3e8

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v1, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPowerDialogCustomItemsState() failed - persistence problem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public getPowerDialogItems()I
    .locals 6

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "sealedPowerDialogItems"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPowerDialogItems() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPowerDialogOptionMode()I
    .locals 6

    const/4 v1, 0x2

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "sealedPowerDialogOptionMode"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPowerDialogOptionMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPowerMenuLockedState()Z
    .locals 6

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "powerMenuLockedState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPowerMenuLockedState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getProKioskNotificationMessagesState()Z
    .locals 6

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getHideNotificationMessages()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v3, 0x1f

    if-ne v1, v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getProKioskNotificationMessagesState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getProKioskPowerDialogCustomItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/custom/PowerItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProKioskPowerDialogCustomItemsState()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getPowerDialogCustomItemsState()Z

    move-result v0

    return v0
.end method

.method public getProKioskState()Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "sealedState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProKioskState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getProKioskStatusBarClockState()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarClockState()Z

    move-result v0

    return v0
.end method

.method public getProKioskStatusBarIconsState()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarIconsState()Z

    move-result v0

    return v0
.end method

.method public getProKioskStatusBarMode()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarMode()I

    move-result v0

    return v0
.end method

.method public getProKioskString(I)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v2, "KnoxCustomManagerService"

    const-string/jumbo v3, "getProKioskString() failed - unrecognized type"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "sealedModeStringOn"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProKioskString() failed - persistence problem (PRO_KIOSK_ON_STRING) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "sealedModeStringOff"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProKioskString() failed - persistence problem (PRO_KIOSK_OFF_STRING) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    :try_start_2
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "sealedModeStringOption"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProKioskString() failed - persistence problem (PRO_KIOSK_OPTION_STRING) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getProKioskUsbMassStorageState()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbMassStorageState()Z

    move-result v0

    return v0
.end method

.method public getProKioskUsbNetAddress(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProKioskUsbNetState()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbNetState()Z

    move-result v0

    return v0
.end method

.method public getQuickPanelButtons()I
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "quickPanelQuickConnect"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_0

    const/4 v0, 0x2

    :cond_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "quickPanelSFinder"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "quickPanelBrightness"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v6, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getQuickPanelButtons() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "current buttons is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", return will be : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public getQuickPanelEditMode()I
    .locals 6

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "quickPanelEditMode"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getQuickPanelEditMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getQuickPanelItems()Ljava/lang/String;
    .locals 14

    const/16 v13, 0x16

    const/4 v7, 0x0

    const/4 v12, -0x1

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "quickPanelTileList"

    const/16 v11, 0x3e8

    invoke-virtual {v8, v11, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-array v1, v13, [I

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v13, :cond_4

    aget v7, v1, v0

    if-eq v7, v12, :cond_1

    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    :goto_1
    if-ge v7, v8, :cond_0

    aget-object v5, v6, v7

    invoke-direct {p0, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getQuickPanelItemId(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v9, v2, -0x1

    aput v12, v1, v9

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getRecentLongPressActivity()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "recentLongPressActivity"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRecentLongPressActivity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRecentLongPressMode()I
    .locals 6

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "recentLongPressMode"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRecentLongPressMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getScreenOffOnHomeLongPressState()Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "screenOffOnHomeLongPressState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getScreenOffOnHomeLongPressState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getScreenOffOnStatusBarDoubleTapState()Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "screenOffOnStatusBarDoubleTapState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getScreenOffOnStatusBarDoubleTapState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getScreenWakeupOnPowerState()Z
    .locals 6

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "screenWakeupOnPowerState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getScreenWakeupOnPowerState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSensorDisabled()I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "sensorDisabled"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSensorDisabled() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSettingsEnabledItems()I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "sealedModeSettingsState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSettingsEnabledItems() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSettingsHiddenState()I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "settingsState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSettingsHiddenState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarClockState()Z
    .locals 7

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarClockState"

    const/16 v6, 0x3e8

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getProKioskState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getStatusBarClockState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarIconsState()Z
    .locals 7

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarIconsState"

    const/16 v6, 0x3e8

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getProKioskState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getStatusBarIconsState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarMode()I
    .locals 6

    const/4 v1, 0x2

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "statusBarMode"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getProKioskState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarNotificationsState()Z
    .locals 6

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "statusBarNotificationsState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarNotificationsState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarText()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "statusBarText"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarText() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarTextScrollWidth()I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "statusBarTextScroll"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarTextScrollWidth() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarTextSize()I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "statusBarTextSize"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarTextSize() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarTextStyle()I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "statusBarTextStyle"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarTextStyle() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSystemSoundsEnabledState()I
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "dtmf_tone"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sound_effects_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x2

    :cond_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lockscreen_sounds_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x4

    :cond_2
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "haptic_feedback_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x8

    :cond_3
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sip_key_feedback_sound"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x10

    :cond_4
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_detachment_notification"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    :goto_0
    return v2

    :cond_6
    or-int/lit8 v2, v2, 0x20

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSystemSoundsEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getToastEnabledState()Z
    .locals 6

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "toastEnabledState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastEnabledState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getToastGravity()I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "toastGravity"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastGravity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getToastGravityEnabledState()Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "toastGravityEnabledState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastGravityEnabledState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getToastGravityXOffset()I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "toastGravityXOffset"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastGravityXOffset() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getToastGravityYOffset()I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "toastGravityYOffset"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastGravityYOffset() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getToastShowPackageNameState()Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "toastShowPackageNameState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastShowPackageNameState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUltraPowerSavingPackages()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "upsmAppLists"

    const/16 v8, 0x3e8

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string/jumbo v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    array-length v6, v3

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v4, v3, v5

    const-string/jumbo v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "package name from DB is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v5, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getUltraPowerSavingPackages() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public getUnlockSimOnBootState()Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "simUnlockOnBoot"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUnlockSimOnBootState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUnlockSimPin()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "simUnlockPin"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUnlockSimPin() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUsbConnectionType()I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "usbConnectionType"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsbConnectionType() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUsbMassStorageState()Z
    .locals 6

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbNetState()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "usbMassStorageStateIndependentSealed"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsbMassStorageState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUsbNetAddress(I)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v2, "KnoxCustomManagerService"

    const-string/jumbo v3, "getUsbNetAddress() failed - invalid address type "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "usbNetSource"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsbNetAddress(sourceAddress) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "usbNetDest"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsbNetAddress(destinationAddress) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x14b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getUsbNetState()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "usbNetState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "adb_enabled"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v6, :cond_0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsbNetState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUserInactivityTimeout()I
    .locals 5

    const/4 v1, -0x6

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_activity_timeout"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    div-int/lit16 v1, v1, 0x3e8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUserInactivityTimeout() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVibrationIntensity(I)I
    .locals 5

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "VIB_RECVCALL_MAGNITUDE"

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVibrationIntensity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVibrationIntensity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    :try_start_2
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "VIB_FEEDBACK_MAGNITUDE"

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVibrationIntensity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getVolumeButtonRotationState()Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "volumeButtonRotationState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVolumeButtonRotationState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVolumeControlStream()I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "volumeControlStream"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVolumeControlStream() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVolumeKeyAppState()Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "volumeKeyAppState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVolumeKeyAppState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVolumeKeyAppsList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "volumeKeyAppsList"

    const/16 v10, 0x3e8

    invoke-virtual {v7, v10, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x20

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-interface {v6, v1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_1
    const-string/jumbo v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getVolumeKeyAppsList() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    return-object v2

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v2, v3

    goto :goto_2
.end method

.method public getVolumePanelEnabledState()Z
    .locals 6

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "volumePanelEnabledState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVolumePanelEnabledState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiAutoSwitchDelay()I
    .locals 6

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "wifiAutoSwitchDelay"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWifiAutoSwitchDelay() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiAutoSwitchState()Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "wifiAutoSwitchState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWifiAutoSwitchState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiAutoSwitchThreshold()I
    .locals 6

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "wifiAutoSwitchThreshold"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWifiAutoSwitchThreshold() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiConnectedMessageState()Z
    .locals 6

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "wifiConnectedMessageState"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWifiConnectedMessageState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiFrequencyBand()I
    .locals 9

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_1
    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getWifiFrequencyBand() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiHotspotEnabledState()I
    .locals 9

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/16 v6, 0xc

    if-eq v4, v6, :cond_0

    const/16 v6, 0xd

    if-ne v4, v6, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getWifiHotspotEnabledState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiState()Z
    .locals 8

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "WifiState"

    const/16 v7, 0x3e8

    invoke-virtual {v4, v7, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getBASturnoffFlag() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->asHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    return-object p1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    return-void
.end method

.method public powerOff()I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v2, -0x6

    :try_start_0
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$5;

    invoke-direct {v4, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$5;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "powerOff() failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public registerSystemUiCallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z
    .locals 2

    iput-object p1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    invoke-virtual {v1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x1

    return v1
.end method

.method public removeAutoCallNumber(Ljava/lang/String;)I
    .locals 14

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string/jumbo v11, "android.hardware.telephony"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, -0x6

    return v10

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    const-string/jumbo v10, "KnoxCustomManagerService"

    const-string/jumbo v11, "removeAutoCallNumber() failed - number is null or empty"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, -0x32

    return v10

    :cond_2
    sget-object v10, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removeAutoCallNumber() failed - invalid number: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, -0x32

    return v10

    :cond_3
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v9, -0x6

    :try_start_0
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "KNOX_CUSTOM"

    const-string/jumbo v12, "autoCallNumberList"

    const/16 v13, 0x3e8

    invoke-virtual {v10, v13, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v4, ""

    const/4 v3, 0x0

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    if-nez v3, :cond_7

    const/16 v10, -0x36

    return v10

    :cond_5
    const-string/jumbo v10, ":"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    array-length v11, v5

    :goto_0
    if-ge v10, v11, :cond_4

    aget-object v7, v5, v10

    const-string/jumbo v12, ","

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    aget-object v12, v8, v12

    invoke-direct {p0, v12, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->compareAutoCallNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v3, 0x1

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x0

    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_8
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "KNOX_CUSTOM"

    const-string/jumbo v12, "autoCallNumberList"

    invoke-virtual {v10, v0, v11, v12, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x0

    :goto_2
    return v9

    :catch_0
    move-exception v2

    const-string/jumbo v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removeAutoCallNumber() failed - persistence problem "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, -0x1

    goto :goto_2
.end method

.method public removeKnoxCustomShortcutsFromHomeScreen()I
    .locals 22

    const/16 v20, -0x36

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v9

    const/16 v21, 0x0

    sget-object v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_0

    const/16 v21, 0x1

    sget-object v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->CONTENT_URI_ZERO:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getMaxId(Landroid/net/Uri;)J

    move-result-wide v18

    const-wide/16 v4, 0xc8

    cmp-long v2, v18, v4

    if-gez v2, :cond_1

    return v20

    :cond_1
    :try_start_0
    const-string/jumbo v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    const/4 v12, 0x0

    :cond_2
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    :try_start_1
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-wide/16 v4, 0xc8

    cmp-long v2, v14, v4

    if-ltz v2, :cond_2

    if-eqz v21, :cond_3

    const-string/jumbo v17, "content://com.sec.android.app.launcher.settings/favorites"

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "Notify"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "=true"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v11, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v12, 0x1

    const/16 v20, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v17, "content://com.sec.android.app.launcher.settings/favorites"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v13

    :try_start_2
    const-string/jumbo v2, "KnoxCustomManagerService"

    const-string/jumbo v4, "Launcher Database Error:"

    invoke-static {v2, v4, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v20, -0x1

    goto :goto_0

    :cond_4
    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateHomeScreen(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_2
    return v20

    :catch_1
    move-exception v13

    :try_start_3
    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeKnoxCustomShortcutsFromHomeScreen() failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public removeLockScreen()I
    .locals 12

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "lock_pattern_autolock"

    const-wide/16 v10, 0x0

    invoke-static {v5, v8, v10, v11}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "lockscreen.disabled"

    const-wide/16 v10, 0x1

    invoke-static {v5, v8, v10, v11}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "lockscreen.password_type"

    const-wide/32 v10, 0x10000

    invoke-static {v5, v8, v10, v11}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "lockscreen.password_type_alternate"

    const-wide/16 v10, 0x0

    invoke-static {v5, v8, v10, v11}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catch_0
    move-exception v2

    const/4 v4, -0x1

    goto :goto_0
.end method

.method public removePackagesFromUltraPowerSaving(Ljava/util/List;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v7, -0x1

    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isUltraPowerSavingModeSupported()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, -0x6

    return v8

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    const/16 v8, -0x28

    return v8

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const/16 v8, -0x32

    return v8

    :cond_4
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUltraPowerSavingPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removePackagesFromUltraPowerSaving() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x1

    :goto_1
    return v7

    :cond_6
    :try_start_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_7
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "upsmAppLists"

    invoke-virtual {v8, v0, v9, v10, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v7, 0x0

    goto :goto_1
.end method

.method public removeShortcutFromHomeScreen(ILjava/lang/String;I)I
    .locals 27

    const/16 v23, -0x36

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v9

    const/4 v2, 0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, -0x2b

    return v2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/16 v2, -0x28

    return v2

    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x20

    if-gt v2, v4, :cond_1

    const/4 v2, 0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_3

    if-eqz p3, :cond_3

    const/16 v2, -0x32

    return v2

    :cond_3
    const/16 v24, 0x0

    sget-object v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_4

    const/16 v24, 0x1

    sget-object v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->CONTENT_URI_ZERO:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_4

    const/16 v2, -0x36

    return v2

    :cond_4
    const/16 v20, 0x2

    if-eqz v24, :cond_8

    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    const/16 v21, 0x1

    :goto_0
    :try_start_0
    const-string/jumbo v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v2, "title"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    const-string/jumbo v2, "itemType"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    const-wide/16 v16, -0x1

    const-wide/16 v14, -0x1

    :cond_5
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move/from16 v0, v21

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    cmp-long v2, v16, v14

    if-lez v2, :cond_5

    move-wide/from16 v14, v16

    goto :goto_1

    :cond_6
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    const/16 v21, 0x2

    goto :goto_0

    :cond_7
    const/16 v21, 0x3

    const/16 v20, 0x3

    goto :goto_0

    :cond_8
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_9

    const/16 v21, 0x0

    goto :goto_0

    :cond_9
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_a

    const/16 v21, 0x1

    goto :goto_0

    :cond_a
    const/16 v21, 0x2

    goto :goto_0

    :cond_b
    const-wide/16 v4, -0x1

    cmp-long v2, v14, v4

    if-eqz v2, :cond_d

    if-eqz v24, :cond_e

    const-string/jumbo v22, "content://com.sec.android.app.launcher.settings/favorites"

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "Notify"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "=true"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v11, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v3, v14, v15, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteFolderItems(Landroid/net/Uri;JZ)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateHomeScreen(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v23, 0x0

    :cond_d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_3
    return v23

    :cond_e
    :try_start_1
    const-string/jumbo v22, "content://com.sec.android.app.launcher.settings/favorites"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v12

    :try_start_2
    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeShortcutFromHomeScreen() failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public removeWidgetFromHomeScreen(Ljava/lang/String;IILandroid/content/Intent;)I
    .locals 26

    const/16 v24, -0x36

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v11

    const/16 v25, 0x0

    sget-object v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-nez v10, :cond_0

    const/16 v25, 0x1

    sget-object v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->CONTENT_URI_ZERO:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-nez v10, :cond_0

    const/16 v2, -0x36

    return v2

    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_1

    if-eqz p3, :cond_1

    const/16 v2, -0x32

    return v2

    :cond_1
    :try_start_0
    const-string/jumbo v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    const-string/jumbo v2, "intent"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    const-string/jumbo v2, "appWidgetId"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-wide/16 v18, -0x1

    const-wide/16 v16, -0x1

    const/4 v15, 0x0

    :cond_2
    :goto_0
    if-nez v15, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move/from16 v0, p2

    if-ne v8, v0, :cond_3

    move-wide/from16 v16, v18

    const/4 v15, 0x1

    :cond_3
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    cmp-long v2, v18, v16

    if-lez v2, :cond_2

    move-wide/from16 v16, v18

    goto :goto_0

    :cond_4
    const-wide/16 v4, -0x1

    cmp-long v2, v16, v4

    if-eqz v2, :cond_5

    if-eqz v25, :cond_6

    const-string/jumbo v23, "content://com.sec.android.app.launcher.settings/favorites"

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "Notify"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "=true"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v13, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v24, 0x0

    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateHomeScreen(I)V

    return v24

    :cond_6
    :try_start_1
    const-string/jumbo v23, "content://com.sec.android.app.launcher.settings/favorites"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v14

    :try_start_2
    const-string/jumbo v2, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeWidgetFromHomeScreen() failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public sendDtmfTone(CI)I
    .locals 10

    const/16 v8, -0x32

    const/4 v2, -0x6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/16 v5, 0x30

    if-lt p1, v5, :cond_0

    const/16 v5, 0x39

    if-le p1, v5, :cond_1

    :cond_0
    const/16 v5, 0x2a

    if-eq p1, v5, :cond_1

    const/16 v5, 0x23

    if-eq p1, v5, :cond_1

    return v8

    :cond_1
    const/16 v5, 0x64

    if-lt p2, v5, :cond_2

    const/16 v5, 0x1388

    if-le p2, v5, :cond_3

    :cond_2
    return v8

    :cond_3
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "samsung.intent.action.knoxcustom.SEND_DTMF"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "tone"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    const-string/jumbo v5, "duration"

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    const/4 v9, -0x2

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.action.SEND_DTMF_INTERNAL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.DTMF_TONE_INTERNAL"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.DTMF_DURATION_INTERNAL"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    const/4 v9, -0x2

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v4, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendDtmfTone() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setAccessibilitySettingsItems(II)I
    .locals 11

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    if-eq p1, v3, :cond_0

    if-eqz p1, :cond_0

    const/16 v3, -0x2b

    return v3

    :cond_0
    if-ltz p2, :cond_1

    const/16 v8, 0x1f

    if-le p2, v8, :cond_2

    :cond_1
    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAccessibilitySettingsItems() failed - Invalid Settings type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0x32

    return v3

    :cond_2
    const/4 v2, -0x6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    and-int/lit8 v8, p2, 0x1

    if-ne v8, v3, :cond_3

    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "anykey_mode"

    if-ne p1, v3, :cond_8

    move v8, v3

    :goto_0
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    and-int/lit8 v8, p2, 0x2

    if-ne v8, v7, :cond_4

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "voice_input_control_incomming_calls"

    if-ne p1, v3, :cond_9

    move v8, v3

    :goto_1
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    and-int/lit8 v8, p2, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "incall_power_button_behavior"

    if-ne p1, v3, :cond_a

    :goto_2
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    and-int/lit8 v7, p2, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_6

    iget-boolean v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "notification_reminder"

    if-ne p1, v3, :cond_b

    move v7, v3

    :goto_3
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    :goto_4
    and-int/lit8 v7, p2, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_7

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "easy_interaction"

    if-ne p1, v3, :cond_e

    :goto_5
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->closeSettingsApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_8
    move v8, v6

    goto :goto_0

    :cond_9
    move v8, v6

    goto :goto_1

    :cond_a
    move v7, v3

    goto :goto_2

    :cond_b
    move v7, v6

    goto :goto_3

    :cond_c
    :try_start_1
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "notification_reminder_selectable"

    if-ne p1, v3, :cond_d

    move v7, v3

    :goto_7
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAccessibilitySettingsItems() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_6

    :cond_d
    move v7, v6

    goto :goto_7

    :cond_e
    move v3, v6

    goto :goto_5
.end method

.method public setAdbState(Z)I
    .locals 9

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isUsbDebuggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_1

    const-string/jumbo v3, "KnoxCustomManagerService"

    const-string/jumbo v6, "setAdbState() - eSDK USB debugging disabled"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x7

    return v3

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "adb_enabled"

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v7, "persist.sys.auto_confirm"

    const-string/jumbo v8, "1"

    invoke-static {v3, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :cond_3
    move v3, v6

    goto :goto_1
.end method

.method public setAirGestureOptionState(IZ)I
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, -0x6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/knox/kiosk/KioskMode;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/kiosk/KioskMode;->isAirCommandModeAllowed()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_1

    const-string/jumbo v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setAirGestureOptionState() - eSDK Air Command not allowed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x7

    return v6

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_2

    if-le p1, v6, :cond_3

    :cond_2
    const/16 v6, -0x32

    return v6

    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    const-string/jumbo v9, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    packed-switch p1, :pswitch_data_0

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x0

    :cond_4
    return v3

    :pswitch_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "air_button_onoff"

    if-eqz p2, :cond_5

    :goto_2
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v6, v7

    goto :goto_2

    :pswitch_1
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_hovering"

    if-eqz p2, :cond_6

    :goto_3
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    move v6, v7

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAppBlockDownloadNamespaces(Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/16 v8, -0x32

    if-nez p1, :cond_0

    return v8

    :cond_0
    const-string/jumbo v3, ""

    const-string/jumbo v6, "*"

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v3, "*"

    :cond_1
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v4, -0x6

    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "blockDownloadNamespaces"

    invoke-virtual {v6, v0, v7, v8, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    return v8

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAppBlockDownloadNamespaces () failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    goto :goto_0
.end method

.method public setAppBlockDownloadState(Z)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v1, -0x6

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "blockDownloadState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception v2

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAppBlockDownloadState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setAudioVolume(II)I
    .locals 10

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v2

    const/4 v5, -0x6

    if-ltz p1, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-eqz v1, :cond_2

    const/4 v8, 0x5

    if-gt p1, v8, :cond_3

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    move v0, p2

    if-le p2, v4, :cond_0

    move v0, v4

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v1, p1, v0, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    :cond_2
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    return v5

    :cond_3
    const/16 v5, -0x26

    goto :goto_0

    :catch_0
    move-exception v3

    const/16 v5, -0x26

    goto :goto_0

    :cond_4
    const/16 v5, -0x26

    goto :goto_1
.end method

.method public setAutoCallPickupState(I)I
    .locals 9

    const/4 v8, 0x0

    const/4 v3, -0x6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.hardware.telephony"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, -0x6

    return v6

    :cond_0
    const/4 v6, 0x1

    if-eq p1, v6, :cond_1

    if-eqz p1, :cond_1

    const/16 v6, -0x2b

    return v6

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "autoCallPickupState"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catch_0
    move-exception v2

    const-string/jumbo v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAutoCallPickupState() failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0
.end method

.method public setAutoRotationState(ZI)I
    .locals 9

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v2, -0x6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    if-eqz p1, :cond_0

    invoke-interface {v3}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_0
    const/4 v6, 0x3

    if-gt p2, v6, :cond_1

    const/4 v6, -0x1

    if-ge p2, v6, :cond_2

    :cond_1
    :try_start_1
    const-string/jumbo v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setAutoRotationState() failed - Invalid Rotation"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x27

    goto :goto_0

    :cond_2
    invoke-interface {v3, p2}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAutoRotationState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setBackupRestoreState(IZ)I
    .locals 13

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isBackupAllowed(Z)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v3, :cond_1

    const-string/jumbo v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setBackupRestoreState() - eSDK backup is disabled"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x7

    return v8

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    if-lt p1, v8, :cond_2

    const/4 v10, 0x3

    if-le p1, v10, :cond_3

    :cond_2
    const/16 v8, -0x32

    return v8

    :cond_3
    const/4 v5, 0x0

    and-int/lit8 v10, p1, 0x1

    if-eqz v10, :cond_5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const-string/jumbo v10, "backup"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v10, "KnoxCustomManagerService"

    const-string/jumbo v11, "Failed to get BackupManager"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v5, :cond_5

    return v5

    :cond_4
    :try_start_0
    invoke-interface {v0, p2}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setBackupEnabled exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    goto :goto_1

    :cond_5
    and-int/lit8 v10, p1, 0x2

    if-eqz v10, :cond_6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "backup_auto_restore"

    if-eqz p2, :cond_7

    :goto_2
    invoke-static {v10, v11, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_6
    return v9

    :cond_7
    move v8, v9

    goto :goto_2
.end method

.method public setBatteryLevelColourItem(Lcom/samsung/android/knox/custom/StatusbarIconItem;)I
    .locals 13

    const/4 v12, -0x1

    const/16 v11, -0x32

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v1

    const/4 v6, -0x6

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/StatusbarIconItem;->getIcon()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    return v11

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/StatusbarIconItem;->getAttributeColourArray()[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v8, v0

    if-lez v8, :cond_6

    array-length v8, v0

    const/4 v9, 0x5

    if-le v8, v9, :cond_1

    const/16 v7, -0x33

    return v7

    :cond_1
    const/4 v5, -0x1

    array-length v8, v0

    :goto_0
    if-ge v7, v8, :cond_5

    aget-object v4, v0, v7

    if-nez v4, :cond_2

    return v12

    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v9

    if-ltz v9, :cond_3

    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v9

    const/16 v10, 0x64

    if-le v9, v10, :cond_4

    :cond_3
    return v11

    :cond_4
    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v9

    if-le v9, v5, :cond_3

    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->serializeStatusbarIconItem(Lcom/samsung/android/knox/custom/StatusbarIconItem;)[B

    move-result-object v2

    :cond_6
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "batteryLevelColourItems"

    const/16 v10, 0x3e8

    invoke-virtual {v7, v10, v8, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->updateBlob(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v7

    if-nez v7, :cond_7

    return v12

    :cond_7
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-interface {v7, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setBatteryLevelColourItem(Lcom/samsung/android/knox/custom/StatusbarIconItem;)V

    const/4 v6, 0x0

    :goto_1
    return v6

    :cond_8
    const-string/jumbo v7, "KnoxCustomManagerService"

    const-string/jumbo v8, "mSystemUiCallback is not available in setBatteryLevelColourItem"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, -0x1

    goto :goto_1

    :catch_0
    move-exception v3

    const-string/jumbo v7, "KnoxCustomManagerService"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    goto :goto_1
.end method

.method public setBluetoothState(Z)I
    .locals 9

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isBluetoothEnabled(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_1

    const-string/jumbo v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "setBluetoothState() - eSDK bluetooth disabled"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x7

    return v5

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_3
    :goto_1
    const/4 v4, 0x0

    :goto_2
    return v4

    :cond_4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_1

    :cond_5
    const/4 v4, -0x1

    goto :goto_2
.end method

.method public setBluetoothVisibilityTimeout(I)I
    .locals 2

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    const/4 v1, -0x6

    return v1
.end method

.method public setBootAnimation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 21

    const/4 v14, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_4

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_4

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_3

    :cond_2
    const/16 v17, 0x1

    :goto_0
    move/from16 v12, v17

    :goto_1
    if-nez v12, :cond_7

    invoke-direct/range {p0 .. p3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkFileConditionForBootAnim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_5

    return v14

    :cond_3
    const/16 v17, 0x0

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    :cond_5
    const v17, 0x7fffffff

    move/from16 v0, p4

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    if-gez p4, :cond_7

    :cond_6
    const/16 v17, -0x32

    return v17

    :cond_7
    new-instance v9, Ljava/io/File;

    const-string/jumbo v17, "/data/b2b"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_8

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    :cond_8
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_9

    if-eqz v7, :cond_15

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    new-instance v11, Ljava/io/File;

    const-string/jumbo v17, "/data/b2b/BootFileInfo.txt"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v16, Ljava/io/File;

    const-string/jumbo v17, "/data/b2b/SoundFileInfo.txt"

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    const-string/jumbo v17, "/data/b2b/DelayInfo.txt"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    :cond_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    :cond_b
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    :cond_c
    if-eqz v12, :cond_d

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v17, 0x0

    return v17

    :cond_d
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "/data/b2b/"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "/data/b2b/"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "/data/b2b/"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_e

    const/16 v17, -0x1

    return v17

    :catch_0
    move-exception v10

    const/16 v14, -0x32

    goto :goto_2

    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_f

    const/16 v17, -0x1

    return v17

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_10

    const/16 v17, -0x1

    return v17

    :cond_10
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_11

    const/16 v17, -0x1

    return v17

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_12

    const/16 v17, -0x1

    return v17

    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_13

    const/16 v17, -0x1

    return v17

    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_14

    const/16 v17, -0x1

    return v17

    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldExecutable(Ljava/io/File;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    invoke-virtual {v9}, Ljava/io/File;->canWrite()Z

    move-result v17

    if-eqz v17, :cond_15

    const/4 v14, -0x1

    return v14

    :cond_15
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v14
.end method

.method public setBootingAnimation(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;I)I
    .locals 22

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->isNotSupported:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    const/16 v17, -0x6

    return v17

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    const-string/jumbo v17, "KnoxCustomManagerService"

    const-string/jumbo v20, "FileDescriptor is null or Delay is invalid"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, -0x32

    return v17

    :cond_2
    if-eqz p3, :cond_1

    const v17, 0x7fffffff

    move/from16 v0, p4

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    if-ltz p4, :cond_1

    new-instance v9, Ljava/io/File;

    const-string/jumbo v17, "/data/b2b"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v17, "KnoxCustomManagerService"

    const-string/jumbo v20, "/data/b2b directory creating fail"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, -0x1

    return v17

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    :cond_4
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_5

    if-eqz v7, :cond_10

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    new-instance v14, Ljava/io/File;

    const-string/jumbo v17, "/data/b2b/BootFileInfo.txt"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v16, Ljava/io/File;

    const-string/jumbo v17, "/data/b2b/SoundFileInfo.txt"

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    const-string/jumbo v17, "/data/b2b/DelayInfo.txt"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    :cond_7
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    :cond_8
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v2, "/data/b2b/bootanimation.qmg"

    const-string/jumbo v3, "/data/b2b/bootloop.qmg"

    const-string/jumbo v4, "/data/b2b/bootsound.ogg"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_9

    const/16 v17, -0x1

    return v17

    :catch_0
    move-exception v11

    const-string/jumbo v17, "KnoxCustomManagerService"

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, -0x1

    goto :goto_0

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a

    const/16 v17, -0x1

    return v17

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_b

    const/16 v17, -0x1

    return v17

    :cond_b
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_c

    const/16 v17, -0x1

    return v17

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_d

    const-string/jumbo v17, "KnoxCustomManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "AnimTargetPath = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, -0x1

    return v17

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_e

    const-string/jumbo v17, "KnoxCustomManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "LoopTargetpath = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, -0x1

    return v17

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_f

    const-string/jumbo v17, "KnoxCustomManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "SoundTargetPath = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, -0x1

    return v17

    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldExecutable(Ljava/io/File;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    :cond_10
    if-nez v15, :cond_14

    new-instance v5, Ljava/io/File;

    const-string/jumbo v17, "/data/b2b/bootanimation.qmg"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_14

    new-instance v10, Ljava/io/File;

    const-string/jumbo v17, "/efs/knoxcustom"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_11

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    :cond_11
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    new-instance v13, Ljava/io/File;

    const-string/jumbo v17, "/efs/knoxcustom/KnoxCustomBootEnable.txt"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    :cond_12
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const-string/jumbo v17, "true"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v13, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_13

    const/16 v17, -0x1

    return v17

    :catch_1
    move-exception v12

    const-string/jumbo v17, "KnoxCustomManagerService"

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, -0x1

    goto :goto_1

    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldExecutable(Ljava/io/File;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    :cond_14
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v15
.end method

.method public setBrightness(I)I
    .locals 8

    const/4 v6, -0x1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    const/4 v2, 0x0

    if-lt p1, v6, :cond_0

    const/16 v3, 0xff

    if-le p1, v3, :cond_1

    :cond_0
    const/16 v3, -0x32

    return v3

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    if-ne p1, v6, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "screen_brightness_mode"

    const/4 v7, 0x1

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "screen_brightness_mode"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "screen_brightness"

    invoke-static {v3, v6, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBrightness() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setBrowserHomepage(Ljava/lang/String;)I
    .locals 9

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const-string/jumbo v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setBrowserHomepage() failed - blank URL"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, -0x28

    return v6

    :cond_1
    sget-object v6, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setBrowserHomepage() failed - invalid URL"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, -0x32

    return v6

    :cond_2
    const/4 v2, -0x6

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.CSC_BROWSER_SET_HOMEPAGE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "homepage"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setBrowserHomepage() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setCallScreenDisabledItems(ZI)I
    .locals 11

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string/jumbo v9, "android.hardware.telephony"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v10}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, -0x6

    return v8

    :cond_0
    if-ltz p2, :cond_1

    const/16 v8, 0xff

    if-le p2, v8, :cond_2

    :cond_1
    const-string/jumbo v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setCallScreenDisabledItems() failed - Invalid Settings type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, -0x32

    return v8

    :cond_2
    const/4 v5, -0x6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "callScreenItems"

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz p1, :cond_4

    or-int v4, v2, p2

    :goto_0
    if-eq v4, v2, :cond_3

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "callScreenItems"

    invoke-virtual {v8, v0, v9, v10, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const/4 v5, 0x0

    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_4
    not-int v8, p2

    and-int v4, v2, v8

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setCallScreenDisabledItems() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    goto :goto_1
.end method

.method public setChargerConnectionSoundEnabledState(Z)I
    .locals 8

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v2, -0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "charging_sounds_enabled"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setChargerConnectionSoundEnabledState() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setChargingLEDState(Z)I
    .locals 8

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    const/4 v2, -0x6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "led_indicator_charing"

    const/4 v7, 0x1

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "led_indicator_charing"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setChargingLEDState() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setCheckCoverPopupState(Z)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v2, -0x6

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "checkCoverPopupState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCheckCoverPopupState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setCpuPowerSavingState(Z)I
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "psm_switch"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :cond_0
    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "psm_switch"

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public setDeveloperOptionsHidden()I
    .locals 3

    const/4 v1, 0x1

    const/16 v2, 0x100

    invoke-virtual {p0, v1, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setSettingsHiddenState(ZI)I

    move-result v0

    return v0
.end method

.method public setDeviceSpeakerEnabledState(Z)I
    .locals 10

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v1

    const/4 v3, -0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setForceSpeakerOn(Z)V

    :goto_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "deviceSpeakerEnabledState"

    const/16 v9, 0x3e8

    invoke-virtual {v6, v9, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_0
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setForceSpeakerOn(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setDeviceSpeakerEnabledState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setDisplayMirroringState(Z)I
    .locals 8

    const/4 v4, -0x6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "display"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semStartScanWifiDisplays()V

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    const-string/jumbo v5, "show_dialog_once"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v5, "tag_write_if_success"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v5, 0x14800000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_1
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semDisconnectWifiDisplay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v5, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setDisplayMirroringState() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    goto :goto_1
.end method

.method public setEthernetConfiguration(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 30

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v5

    const/16 v22, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v26, "ethernet"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/EthernetManager;

    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/net/EthernetManager;->isAvailable()Z

    move-result v23

    if-nez v23, :cond_1

    const/16 v23, -0x6

    return v23

    :cond_0
    const/16 v23, -0x6

    return v23

    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v26, "ethernet"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_6

    const-string/jumbo v23, "android.net.ethernet.EthernetDevInfo"

    invoke-static/range {v23 .. v23}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const-string/jumbo v14, "eth0"

    const-string/jumbo v7, "dhcp"

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    if-nez p1, :cond_2

    const/16 v22, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string/jumbo v26, "KNOX_CUSTOM"

    const-string/jumbo v27, "ethernetConnectionType"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, p1

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string/jumbo v26, "KNOX_CUSTOM"

    const-string/jumbo v27, "ethernetInterfaceName"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v5, v1, v2, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string/jumbo v26, "KNOX_CUSTOM"

    const-string/jumbo v27, "ethernetStaticIpAddr"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v5, v1, v2, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string/jumbo v26, "KNOX_CUSTOM"

    const-string/jumbo v27, "ethernetStaticNetMask"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v19

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string/jumbo v26, "KNOX_CUSTOM"

    const-string/jumbo v27, "ethernetStaticDnsAddr"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v5, v1, v2, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string/jumbo v26, "KNOX_CUSTOM"

    const-string/jumbo v27, "ethernetStaticDfltRouter"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v5, v1, v2, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    const-string/jumbo v26, "setIfName"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v27, v0

    const-class v28, Ljava/lang/String;

    const/16 v29, 0x0

    aput-object v28, v27, v29

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    aput-object v14, v23, v26

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    const-string/jumbo v26, "setConnectMode"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v27, v0

    const-class v28, Ljava/lang/String;

    const/16 v29, 0x0

    aput-object v28, v27, v29

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    aput-object v7, v23, v26

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    const-string/jumbo v26, "setIpAddress"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v27, v0

    const-class v28, Ljava/lang/String;

    const/16 v29, 0x0

    aput-object v28, v27, v29

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    aput-object v15, v23, v26

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    const-string/jumbo v26, "setNetMask"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v27, v0

    const-class v28, Ljava/lang/String;

    const/16 v29, 0x0

    aput-object v28, v27, v29

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    aput-object v19, v23, v26

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    const-string/jumbo v26, "setDnsAddr"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v27, v0

    const-class v28, Ljava/lang/String;

    const/16 v29, 0x0

    aput-object v28, v27, v29

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    aput-object v10, v23, v26

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    const-string/jumbo v26, "setRouteAddr"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v27, v0

    const-class v28, Ljava/lang/String;

    const/16 v29, 0x0

    aput-object v28, v27, v29

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    aput-object v9, v23, v26

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    const-string/jumbo v26, "UpdateEthDevInfo"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v4, v27, v28

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual {v4, v12}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v23, v27

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    return v22

    :cond_2
    const/16 v23, 0x1

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkIpAddressString(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    if-nez p3, :cond_4

    :cond_3
    const/16 v23, -0x32

    return v23

    :cond_4
    if-eqz p4, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkIpAddressString(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    if-eqz p5, :cond_3

    const-string/jumbo v7, "manual"
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v15, p2

    move-object/from16 v19, p3

    move-object/from16 v10, p4

    move-object/from16 v9, p5

    const/16 v22, 0x0

    goto/16 :goto_0

    :cond_5
    const/16 v23, -0x2b

    return v23

    :cond_6
    const/16 v22, -0x6

    goto :goto_1

    :catch_0
    move-exception v11

    const-string/jumbo v23, "KnoxCustomManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "setEthernetConfiguration() failed - persistence problem "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, -0x1

    goto :goto_1

    :catch_1
    move-exception v21

    const-string/jumbo v23, "KnoxCustomManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "setEthernetConfiguration() Not Supported "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, -0x6

    goto/16 :goto_1

    :catch_2
    move-exception v16

    const-string/jumbo v23, "KnoxCustomManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "setEthernetConfiguration() Not Supported "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, -0x6

    goto/16 :goto_1

    :catch_3
    move-exception v20

    const-string/jumbo v23, "KnoxCustomManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "setEthernetConfiguration() Not Supported "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, -0x6

    goto/16 :goto_1

    :catch_4
    move-exception v6

    const-string/jumbo v23, "KnoxCustomManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "setEthernetConfiguration() Not Supported "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, -0x6

    goto/16 :goto_1
.end method

.method public setEthernetState(Z)I
    .locals 19

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v2

    const/4 v11, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "ethernet"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/EthernetManager;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/net/EthernetManager;->isAvailable()Z

    move-result v14

    if-nez v14, :cond_1

    const/4 v14, -0x6

    return v14

    :cond_0
    const/4 v14, -0x6

    return v14

    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "ethernet"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string/jumbo v15, "getEthState"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v7, v4, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v15, "KNOX_CUSTOM"

    const-string/jumbo v16, "ethernetState"

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v14, v2, v15, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    if-eqz p1, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_2

    const/4 v11, 0x0

    :goto_0
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v11, 0x0

    :goto_1
    return v11

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string/jumbo v15, "setEthernetState"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-virtual/range {v14 .. v16}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-virtual {v7, v4, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v9

    const-string/jumbo v14, "KnoxCustomManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setEthernetState() Not Supported "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, -0x6

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string/jumbo v15, "setUserDisabled"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    sget-object v17, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-virtual/range {v14 .. v16}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-virtual {v7, v4, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string/jumbo v15, "setEthEnabled"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    sget-object v17, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-virtual/range {v14 .. v16}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-virtual {v7, v4, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v6

    const-string/jumbo v14, "KnoxCustomManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setEthernetState() Not Supported "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, -0x6

    goto/16 :goto_1

    :cond_4
    const/4 v11, -0x6

    goto/16 :goto_1

    :catch_2
    move-exception v3

    const-string/jumbo v14, "KnoxCustomManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setEthernetState() failed - persistence problem "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_3
    move-exception v10

    const-string/jumbo v14, "KnoxCustomManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setEthernetState() Not Supported "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, -0x6

    goto/16 :goto_1
.end method

.method public setExitUI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const/4 v2, -0x6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedExitUiPackage"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedExitUiClass"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    const/16 v3, -0x21

    return v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setExitUI() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setExtendedCallInfoState(Z)I
    .locals 7

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.telephony"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, -0x6

    return v4

    :cond_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v3, -0x6

    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "extendedCallInfoState"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :catch_0
    move-exception v2

    const-string/jumbo v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setExtendedCallInfoState() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0
.end method

.method public setFlightModeState(I)I
    .locals 14

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isAirplaneModeAllowed()Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v3, :cond_1

    const-string/jumbo v9, "KnoxCustomManagerService"

    const-string/jumbo v10, "setFlightModeState() - eSDK flight mode disabled"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, -0x7

    return v9

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    if-eq p1, v9, :cond_2

    if-eqz p1, :cond_2

    const/16 v9, -0x2b

    return v9

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v11, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "airplane_mode_on"

    if-ne p1, v9, :cond_3

    move v11, v9

    :goto_1
    invoke-static {v12, v13, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    const-string/jumbo v12, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    if-ne p1, v9, :cond_4

    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v11, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v11, Landroid/os/UserHandle;

    const/4 v12, -0x2

    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    const/4 v9, 0x2

    iput v9, v8, Landroid/os/Message;->what:I

    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v9, v8, v10, v11}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v5, 0x0

    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_3
    move v11, v10

    goto :goto_1

    :cond_4
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v11, 0x20000000

    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v11, "state"

    if-ne p1, v9, :cond_5

    :goto_4
    invoke-virtual {v2, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/os/UserHandle;

    const/4 v11, -0x2

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v2, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string/jumbo v9, "KnoxCustomManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setFlightModeState() failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    goto :goto_3

    :cond_5
    move v9, v10

    goto :goto_4
.end method

.method public setForceAutoStartUpState(I)I
    .locals 8

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v3, -0x6

    if-eq p1, v5, :cond_0

    if-eqz p1, :cond_0

    const/16 v5, -0x2b

    return v5

    :cond_0
    const/4 v4, 0x0

    if-ne p1, v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->getInstance(Landroid/content/Context;)Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "AutoStartUpState"

    invoke-virtual {v5, v0, v6, v7, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    invoke-virtual {v2, v4}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->setKnoxCustomAutoStartUp(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :catch_0
    move-exception v1

    const-string/jumbo v5, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setForceAutoStartUpState() failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0
.end method

.method public setGearNotificationState(Z)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v2, -0x6

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "gearNotificationState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setGearNotificationState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setGpsState(Z)I
    .locals 7

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getLocationPolicy()Lcom/samsung/android/knox/location/LocationPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/location/LocationPolicy;->isGPSStateChangeAllowed()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_1

    const-string/jumbo v3, "KnoxCustomManagerService"

    const-string/jumbo v6, "setGpsState() - eSDK GPS state change not allowed"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x7

    return v3

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "gps"

    invoke-static {v3, v6, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x0

    return v3
.end method

.method public setHardKeyIntentState(Z)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    const/4 v2, -0x6

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedHardKeyIntentState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHardKeyIntentState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setHideNotificationMessages(I)I
    .locals 8

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    const/16 v4, 0x1f

    if-gt p1, v4, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-string/jumbo v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setHideNotificationMessages() failed - Invalid Notifications type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x32

    return v4

    :cond_1
    const/4 v3, -0x6

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getHideNotificationMessages()I

    move-result v1

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    if-eqz v4, :cond_3

    if-eq p1, v1, :cond_2

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "notificationMessagesMask"

    and-int/lit8 v7, p1, -0x5

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-interface {v4, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setHideNotificationMessages(I)V

    :cond_2
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_3
    const-string/jumbo v4, "KnoxCustomManagerService"

    const-string/jumbo v5, "mSystemUiCallback is not available in setHideNotificationMessages"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setHideNotificationMessages() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0
.end method

.method public setHomeActivity(Ljava/lang/String;)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    const/4 v2, -0x6

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedHomeActivity"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/16 v3, -0x21

    return v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHomeActivity() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setInfraredState(Z)I
    .locals 9

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v3, -0x6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "consumer_ir"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/ConsumerIrManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/ConsumerIrManager;->hasIrEmitter()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "infraredState"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_0
    const/4 v3, -0x6

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setInfraredState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0
.end method

.method public setInputMethod(Ljava/lang/String;Z)I
    .locals 11

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, -0x30

    return v5

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "enabled_input_methods"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "default_input_method"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "default_input_method"

    invoke-static {v5, v8, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "default_input_method"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_1
    if-eqz p2, :cond_2

    :try_start_1
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "enabled_input_methods"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "default_input_method"

    invoke-static {v5, v8, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/16 v4, -0x30

    goto :goto_0

    :cond_3
    const/16 v4, -0x30

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setInputMethod() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    goto :goto_0
.end method

.method public setInputMethodRestrictionState(Z)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "inputRestrictionState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setInputMethodRestrictionState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setKeyboardMode(I)I
    .locals 10

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const/4 v4, -0x1

    if-ltz p1, :cond_0

    const/4 v5, 0x2

    if-le p1, v5, :cond_1

    :cond_0
    const/16 v5, -0x2b

    return v5

    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.app.enterprise.knoxcustom"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "mode"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    const/4 v9, -0x2

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v9, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"

    invoke-virtual {v5, v2, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.action.SET_KEYBOARD_MODE_INTERNAL"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.KEYBOARD_MODE_INTERNAL"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    const/4 v9, -0x2

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    invoke-virtual {v5, v3, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "keyboardMode"

    invoke-virtual {v5, v0, v8, v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :catch_0
    move-exception v1

    const-string/jumbo v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setKeyboardMode() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    goto :goto_0
.end method

.method public setKnoxCustomQSTileList(Ljava/lang/String;)Z
    .locals 14

    const/16 v11, 0x16

    const/4 v8, 0x0

    const/4 v13, 0x1

    new-array v2, v11, [I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    :goto_0
    if-gt v1, v11, :cond_6

    add-int/lit8 v7, v1, -0x1

    aget v7, v2, v7

    if-eq v7, v13, :cond_2

    if-eq v1, v13, :cond_1

    const/4 v7, 0x2

    if-ne v1, v7, :cond_5

    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getQuickPanelItemString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v9, v6

    move v7, v8

    :goto_2
    if-ge v7, v9, :cond_0

    aget-object v5, v6, v7

    invoke-direct {p0, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getQuickPanelItemId(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v10, v3, -0x1

    aput v13, v2, v10

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x4

    if-eq v1, v7, :cond_1

    const/4 v7, 0x5

    if-eq v1, v7, :cond_1

    const/16 v7, 0x8

    if-ne v1, v7, :cond_2

    goto :goto_1

    :cond_6
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "quickPanelTileList"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x3e8

    invoke-virtual {v7, v12, v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v13

    :catch_0
    move-exception v0

    const-string/jumbo v7, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setKnoxCustomQSTileList() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method public setLTESettingState(Z)I
    .locals 7

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    const/4 v3, -0x6

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.telephony"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, -0x6

    return v4

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "LTESettingState"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :catch_0
    move-exception v2

    const-string/jumbo v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setLTESettingState() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0
.end method

.method public setLcdBacklightState(Z)I
    .locals 9

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v3, -0x1

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    sget-boolean v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mForceLcdBacklightOffEnabled:Z

    if-eq p1, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setScreenCurtainDirect()V

    const/4 v3, 0x0

    sput-boolean p1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mForceLcdBacklightOffEnabled:Z

    :cond_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :catch_0
    move-exception v2

    const-string/jumbo v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setLcdBacklightState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLockScreenHiddenItems(ZI)I
    .locals 26

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v7

    if-ltz p2, :cond_0

    const/16 v22, 0x3ff

    move/from16 v0, p2

    move/from16 v1, v22

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v22, -0x32

    return v22

    :cond_1
    const/16 v17, -0x6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string/jumbo v23, "KNOX_CUSTOM"

    const-string/jumbo v24, "lockScreenItems"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getLockScreenHideOwnerInfo()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    or-int/lit8 v8, v8, 0x20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string/jumbo v23, "KNOX_CUSTOM"

    const-string/jumbo v24, "ownerInfoHide"

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    new-instance v15, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    if-eqz v15, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v15, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    :cond_2
    and-int/lit8 v9, p2, 0x2e

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x3c0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    and-int/lit8 v22, p2, 0x11

    or-int v9, v9, v22

    :goto_0
    if-eqz p1, :cond_d

    or-int v16, v8, v9

    :goto_1
    move/from16 v0, v16

    if-eq v0, v8, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string/jumbo v23, "KNOX_CUSTOM"

    const-string/jumbo v24, "lockScreenItems"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v16

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    and-int/lit8 v22, p2, 0x1

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "lock_screen_show_clock"

    if-eqz p1, :cond_e

    const/16 v22, 0x0

    :goto_2
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    and-int/lit8 v22, p2, 0x10

    const/16 v23, 0x10

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "lock_screen_date_and_year"

    if-eqz p1, :cond_f

    const/16 v22, 0x0

    :goto_3
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    and-int/lit8 v22, p2, 0x40

    const/16 v23, 0x40

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v23, "lock_application_shortcut"

    invoke-static/range {v22 .. v23}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    if-nez v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "set_shortcuts_mode"

    if-eqz p1, :cond_10

    const/16 v22, 0x0

    :goto_4
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    :goto_5
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    const/16 v23, 0x80

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "lock_additional_info"

    if-eqz p1, :cond_15

    const/16 v22, 0x0

    :goto_6
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "lock_additional_weather"

    if-eqz p1, :cond_16

    const/16 v22, 0x0

    :goto_7
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct/range {p0 .. p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setLockscreenWeatherHiddenForLegacy(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "lock_additional_steps"

    if-eqz p1, :cond_17

    const/16 v22, 0x0

    :goto_8
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v22, v0

    const/16 v23, 0x100

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "unlock_text"

    if-eqz p1, :cond_18

    const/16 v22, 0x0

    :goto_9
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    const/16 v23, 0x200

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "lock_screen_show_notifications"

    if-eqz p1, :cond_19

    const/16 v22, 0x0

    :goto_a
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string/jumbo v23, "activity"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    const-string/jumbo v22, "com.android.settings"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    :cond_a
    if-eqz v9, :cond_b

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v22, "com.sec.android.keyguard.REFRESH"

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/UserHandle;

    const/16 v24, -0x2

    invoke-direct/range {v23 .. v24}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v22, "com.samsung.android.knox.intent.action.KEYGUARD_REFRESH_INTERNAL"

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/UserHandle;

    const/16 v24, -0x2

    invoke-direct/range {v23 .. v24}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getLockScreenHiddenItems()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setLockScreenHiddenItems(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v17, 0x0

    :goto_b
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v17

    :cond_c
    and-int/lit8 v22, p2, 0x11

    or-int v18, v18, v22

    goto/16 :goto_0

    :cond_d
    not-int v0, v9

    move/from16 v22, v0

    and-int v16, v8, v22

    goto/16 :goto_1

    :cond_e
    const/16 v22, 0x1

    goto/16 :goto_2

    :cond_f
    const/16 v22, 0x1

    goto/16 :goto_3

    :cond_10
    const/16 v22, 0x1

    goto/16 :goto_4

    :cond_11
    :try_start_1
    const-string/jumbo v22, ";"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    if-eqz p1, :cond_12

    const-string/jumbo v22, "0"

    :goto_c
    const/16 v23, 0x0

    aput-object v22, v19, v23

    if-eqz p1, :cond_13

    const-string/jumbo v22, "0"

    :goto_d
    const/16 v23, 0x2

    aput-object v22, v19, v23

    const-string/jumbo v6, ""

    const/16 v22, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    :goto_e
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_14

    aget-object v13, v19, v22

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    :cond_12
    const-string/jumbo v22, "1"

    goto :goto_c

    :cond_13
    const-string/jumbo v22, "1"

    goto :goto_d

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v23, "lock_application_shortcut"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v10

    :try_start_2
    const-string/jumbo v22, "KnoxCustomManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "setLockScreenHiddenItems() failed - persistence problem "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, -0x1

    return v22

    :cond_15
    const/16 v22, 0x1

    goto/16 :goto_6

    :cond_16
    const/16 v22, 0x1

    goto/16 :goto_7

    :cond_17
    const/16 v22, 0x1

    goto/16 :goto_8

    :cond_18
    const/16 v22, 0x1

    goto/16 :goto_9

    :cond_19
    const/16 v22, 0x1

    goto/16 :goto_a

    :cond_1a
    const-string/jumbo v22, "KnoxCustomManagerService"

    const-string/jumbo v23, "mSystemUiCallback is not available in setLockScreenHiddenItems"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v17, -0x1

    goto/16 :goto_b

    :catch_1
    move-exception v10

    const-string/jumbo v22, "KnoxCustomManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "setLockScreenHiddenItems() failed - persistence problem "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, -0x1

    return v22
.end method

.method public setLockScreenOverrideMode(I)I
    .locals 12

    const/4 v8, 0x2

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v4, -0x1

    if-eqz p1, :cond_0

    const/4 v5, 0x1

    if-eq p1, v5, :cond_0

    if-eq p1, v8, :cond_0

    const/16 v5, -0x2b

    return v5

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    sput p1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mLockScreenOverrideMode:I

    if-eq p1, v8, :cond_1

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    :try_start_2
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "keyguard"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.SCREEN_OFF"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v9, Landroid/os/UserHandle;

    const/4 v10, -0x2

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    new-instance v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$4;

    invoke-direct {v8, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$4;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v5, v8, v10, v11}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    sget v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mLockScreenOverrideMode:I

    invoke-interface {v5, v8}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setLockScreenOverrideMode(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v4, 0x0

    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catch_0
    move-exception v1

    :try_start_3
    const-string/jumbo v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "Error while trying to lock device: "

    invoke-static {v5, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setLockScreenOverrideMode() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    goto :goto_1

    :cond_3
    :try_start_4
    const-string/jumbo v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "mSystemUiCallback is not available in setLockScreenOverrideMode"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v4, -0x1

    goto :goto_1
.end method

.method public setLockScreenShortcut(ILjava/lang/String;)I
    .locals 23

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    const/16 v17, -0x6

    return v17

    :cond_0
    if-ltz p1, :cond_1

    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    :cond_1
    const/16 v17, -0x32

    return v17

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    const/16 v17, -0x21

    return v17

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v12, v0, :cond_4

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v12, v0, :cond_5

    :cond_4
    const/16 v17, -0x21

    return v17

    :catch_0
    move-exception v7

    const/16 v17, -0x21

    return v17

    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    if-nez v11, :cond_6

    const/16 v17, -0x21

    return v17

    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v20, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v17, "KnoxCustomManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "setLockScreenShortcut() to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, -0x6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v20, "lock_application_shortcut"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v17, ";"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    if-nez p1, :cond_8

    const/16 v17, 0x1

    aput-object v4, v16, v17

    :cond_7
    :goto_0
    const-string/jumbo v13, ""

    const/16 v17, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    aget-object v10, v16, v17

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_8
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    const/16 v17, 0x3

    aput-object v4, v16, v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v6

    const-string/jumbo v17, "KnoxCustomManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "setLockScreenShortcut() failed - persistence problem "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, -0x1

    :goto_2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v15

    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v20, "lock_application_shortcut"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v20, "activity"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const-string/jumbo v17, "com.android.settings"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v17, "com.sec.android.keyguard.REFRESH"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    new-instance v20, Landroid/os/UserHandle;

    const/16 v21, -0x2

    invoke-direct/range {v20 .. v21}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v17, "com.samsung.android.knox.intent.action.KEYGUARD_REFRESH_INTERNAL"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    new-instance v20, Landroid/os/UserHandle;

    const/16 v21, -0x2

    invoke-direct/range {v20 .. v21}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v15, 0x0

    goto :goto_2
.end method

.method public setLockscreenWallpaper(Ljava/lang/String;I)I
    .locals 11

    const/4 v9, 0x1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v5, -0x6

    if-eq p2, v9, :cond_0

    const/4 v8, 0x2

    if-eq p2, v8, :cond_0

    const-string/jumbo v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setLockscreenWallpaper: invalid SIM value"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, -0x32

    return v8

    :cond_0
    if-eqz p1, :cond_2

    :try_start_0
    const-string/jumbo v8, "."

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, ".png"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, ".jpg"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    :goto_0
    if-nez v8, :cond_2

    const-string/jumbo v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setLockscreenWallpaper: file must be a PNG or JPG"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v8, -0x28

    return v8

    :cond_1
    move v8, v9

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v8, -0x1

    return v8

    :cond_2
    if-ne p2, v9, :cond_3

    const-string/jumbo v1, "lockscreen_wallpaper_path"

    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    if-nez p1, :cond_4

    :try_start_1
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-static {v8, v1, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/4 v5, 0x0

    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_3
    const-string/jumbo v1, "lockscreen_wallpaper_path_2"

    goto :goto_1

    :cond_4
    :try_start_2
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    const-string/jumbo v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setLockscreenWallpaper() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    goto :goto_3
.end method

.method public setMobileDataRoamingState(Z)I
    .locals 11

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string/jumbo v10, "android.hardware.telephony"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v5, -0x6

    return v5

    :cond_0
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    if-ne v9, v5, :cond_1

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    const/16 v5, -0x38

    return v5

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "data_roaming"

    if-eqz p1, :cond_2

    :goto_0
    invoke-static {v9, v10, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_2
    move v5, v8

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMobileDataRoamingState() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_1
.end method

.method public setMobileDataState(Z)I
    .locals 8

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v6, "android.hardware.telephony"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, -0x6

    return v3

    :cond_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7
.end method

.method public setMobileNetworkType(I)I
    .locals 13

    const/16 v12, -0x32

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string/jumbo v10, "android.hardware.telephony"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v8, -0x6

    return v8

    :cond_0
    const/4 v3, -0x1

    sparse-switch p1, :sswitch_data_0

    return v12

    :sswitch_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v9

    invoke-virtual {v5, v9, v3}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->closeSettingsApp()V

    invoke-virtual {v5, v8}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v4, :cond_4

    :goto_1
    return v8

    :sswitch_1
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const/16 v3, 0x9

    goto :goto_0

    :sswitch_4
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getLTESettingState()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    const/16 v3, 0xb

    goto :goto_0

    :cond_2
    const-string/jumbo v9, "LTEONLY"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2

    :cond_3
    return v12

    :cond_4
    const/4 v8, -0x1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x9 -> :sswitch_3
        0xb -> :sswitch_4
    .end sparse-switch
.end method

.method public setMotionControlState(IZ)I
    .locals 10

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    if-lt p1, v3, :cond_0

    const/4 v7, 0x3

    if-le p1, v7, :cond_1

    :cond_0
    const/16 v3, -0x32

    return v3

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_2

    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "motion_pick_up"

    if-eqz p2, :cond_4

    move v7, v3

    :goto_0
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "motion_pick_up_to_call_out"

    if-eqz p2, :cond_5

    move v7, v3

    :goto_1
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "motion_engine"

    if-eqz p2, :cond_6

    move v7, v3

    :goto_2
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "master_motion"

    if-eqz p2, :cond_7

    move v7, v3

    :goto_3
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "motion_merged_mute_pause"

    if-eqz p2, :cond_8

    move v7, v3

    :goto_4
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "surface_palm_swipe"

    if-eqz p2, :cond_9

    move v7, v3

    :goto_5
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "surface_palm_touch"

    if-eqz p2, :cond_a

    move v7, v3

    :goto_6
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "surface_motion_engine"

    if-eqz p2, :cond_b

    :goto_7
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const/4 v2, 0x0

    :goto_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_4
    move v7, v6

    goto :goto_0

    :cond_5
    move v7, v6

    goto :goto_1

    :cond_6
    move v7, v6

    goto :goto_2

    :cond_7
    move v7, v6

    goto :goto_3

    :cond_8
    move v7, v6

    goto :goto_4

    :cond_9
    move v7, v6

    goto :goto_5

    :cond_a
    move v7, v6

    goto :goto_6

    :cond_b
    move v3, v6

    goto :goto_7

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMotionControlState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_8
.end method

.method public setMultiWindowState(Z)I
    .locals 9

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/knox/kiosk/KioskMode;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/kiosk/KioskMode;->isMultiWindowModeAllowed()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_1

    const-string/jumbo v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "setMultiWindowState() - eSDK multi window mode not allowed"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x7

    return v5

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    new-instance v3, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v3}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    if-eqz v3, :cond_2

    const-string/jumbo v5, "KnoxCustom"

    invoke-virtual {v3, v5, p1}, Lcom/samsung/android/app/SemMultiWindowManager;->setMultiWindowEnabled(Ljava/lang/String;Z)V

    const/4 v4, 0x0

    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4
.end method

.method public setPackageVerifierState(Z)I
    .locals 8

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "package_verifier_enable"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setPackageVerifierState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setPassCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    const/4 v4, -0x6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedState"

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "prokioskPinCode"

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    if-nez v3, :cond_0

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedPinCode"

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    const/4 v3, 0x0

    :cond_2
    if-eqz v3, :cond_5

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "prokioskPinCode"

    invoke-virtual {p0, p2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v0, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedPinCode"

    const/4 v9, 0x0

    invoke-virtual {v6, v0, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v4, 0x0

    :goto_2
    return v4

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    const-string/jumbo v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setPassCode() - Invalid passcode"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x20

    goto :goto_2

    :cond_6
    const-string/jumbo v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setPassCode() - Not in ProKiosk Mode "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x2

    goto :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPassCode() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    goto :goto_2
.end method

.method public setPowerDialogCustomItems(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/custom/PowerItem;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPowerDialogCustomItemsLocal(Ljava/util/List;I)I

    move-result v1

    return v1
.end method

.method public setPowerDialogCustomItemsState(Z)I
    .locals 2

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPowerDialogCustomItemsStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setPowerDialogItems(I)I
    .locals 7

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    const/4 v2, -0x1

    if-ltz p1, :cond_0

    const/16 v3, 0x3ff

    if-le p1, v3, :cond_1

    :cond_0
    const/16 v2, -0x32

    :goto_0
    return v2

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedPowerDialogItems"

    const/16 v6, 0x3e8

    invoke-virtual {v3, v6, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPowerDialogItems() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setPowerDialogOptionMode(I)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    const/4 v2, -0x6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedPowerDialogOptionMode"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    if-eqz p1, :cond_0

    const/16 v2, -0x2b

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPowerDialogOptionMode() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setPowerMenuLockedState(Z)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v2, -0x6

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "powerMenuLockedState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPowerMenuLockedState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setPowerSavingMode(I)I
    .locals 13

    const/4 v10, 0x1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    const/4 v7, -0x6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    if-nez p1, :cond_1

    :try_start_0
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "psm_switch"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "low_power"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x0

    :cond_0
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :cond_1
    if-ne p1, v10, :cond_2

    :try_start_1
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "psm_switch"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "low_power"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    const/4 v10, 0x2

    if-ne p1, v10, :cond_3

    :try_start_2
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isUltraPowerSavingModeSupported()Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v10, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "enabled"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v10, "flag"

    const/16 v11, 0x200

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v10, "skipdialog"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v7, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string/jumbo v10, "KnoxCustomManagerService"

    const-string/jumbo v11, "setPowerSavingMode() failed - ultra power mode not supported"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setPowerSavingMode() failed - persistence problem "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x1

    goto :goto_0

    :cond_3
    const/4 v10, 0x3

    if-ne p1, v10, :cond_6

    :try_start_4
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "ultra_powersaving_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_4

    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_5

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v10, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "enabled"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v10, "flag"

    const/16 v11, 0x200

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v10, "skipdialog"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v10, v5, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_6
    const/16 v7, -0x32

    goto/16 :goto_0

    :catch_2
    move-exception v2

    goto/16 :goto_0
.end method

.method public setProKioskNotificationMessagesState(Z)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    const/4 v2, -0x6

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setHideNotificationMessages(I)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/16 v3, 0x1f

    invoke-virtual {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setHideNotificationMessages(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setProKioskNotificationMessagesState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setProKioskPowerDialogCustomItems(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/custom/PowerItem;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPowerDialogCustomItemsLocal(Ljava/util/List;I)I

    move-result v1

    return v1
.end method

.method public setProKioskPowerDialogCustomItemsState(Z)I
    .locals 2

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPowerDialogCustomItemsStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setProKioskState(ZLjava/lang/String;)I
    .locals 17

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/knox/kiosk/KioskMode;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    move-result v5

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v5, :cond_0

    const-string/jumbo v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setProKioskState() - eSDK kiosk mode already enabled"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, -0x7

    return v13

    :cond_0
    const/4 v8, -0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "sealedState"

    invoke-virtual {v13, v2, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz p1, :cond_3

    if-eqz v3, :cond_1

    const-string/jumbo v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setProKioskState() - Already in ProKiosk mode - Passcode not changed"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x3

    :goto_0
    return v8

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "sealedState"

    move/from16 v0, p1

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "prokioskPinCode"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "sealedPinCode"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startProKioskMode()V

    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->closeSettingsApp()V

    const-string/jumbo v13, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v13, v12, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v13, "KnoxCustomManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setProKioskState() failed - persistence problem "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x1

    goto :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setProKioskState() - Invalid passcode"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, -0x20

    goto/16 :goto_0

    :cond_3
    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "prokioskPinCode"

    invoke-virtual {v13, v2, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    :goto_1
    if-nez v7, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "sealedPinCode"

    invoke-virtual {v13, v2, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    :cond_4
    :goto_2
    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "sealedState"

    move/from16 v0, p1

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->stopProKioskMode()V

    const/4 v8, 0x0

    const-string/jumbo v13, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v13, v12, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    const-string/jumbo v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setProKioskState() - Invalid passcode"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, -0x20

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setProKioskState() - Not in ProKiosk Mode"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v8, -0x2

    goto/16 :goto_0
.end method

.method public setProKioskStatusBarClockState(Z)I
    .locals 11

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    const/4 v3, 0x4

    if-eqz p1, :cond_0

    const/4 v3, 0x2

    :cond_0
    const/4 v6, -0x6

    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "statusBarClockState"

    invoke-virtual {v8, v0, v9, v10, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const-string/jumbo v8, "statusbar"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v7

    if-eqz v7, :cond_1

    iget v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mFlag:I

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarClockState()Z

    move-result v8

    if-eqz v8, :cond_2

    const v8, -0x800001

    and-int/2addr v2, v8

    :goto_0
    iput v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mFlag:I

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mToken:Landroid/os/IBinder;

    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKey:Ljava/lang/String;

    invoke-interface {v7, v2, v8, v9}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v6

    :cond_2
    const/high16 v8, 0x800000

    or-int/2addr v2, v8

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setStatusBarClockState() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    goto :goto_1
.end method

.method public setProKioskStatusBarIconsState(Z)I
    .locals 9

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    const/4 v4, 0x4

    if-eqz p1, :cond_0

    const/4 v4, 0x2

    :cond_0
    const/4 v5, -0x6

    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "statusBarIconsState"

    invoke-virtual {v6, v0, v7, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarIconsState()Z

    move-result v7

    invoke-interface {v6, v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarIconsState(Z)V

    const/4 v5, 0x0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    return v5

    :cond_1
    const-string/jumbo v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "mSystemUiCallback is not available in setProKioskStatusBarIconsState"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setStatusBarIconsState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    goto :goto_1
.end method

.method public setProKioskStatusBarMode(I)I
    .locals 3

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    move v1, p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    const/4 v1, 0x4

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setStatusBarModeLocal(II)I

    move-result v2

    return v2
.end method

.method public setProKioskString(ILjava/lang/String;)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    const/4 v2, -0x6

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v3, "KnoxCustomManagerService"

    const-string/jumbo v4, "setProKioskString() failed - unrecognized type"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x29

    :goto_0
    return v2

    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOn"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setProKioskString() failed - persistence problem (PRO_KIOSK_ON_STRING) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOff"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setProKioskString() failed - persistence problem (PRO_KIOSK_OFF_STRING) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0

    :pswitch_2
    :try_start_2
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOption"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v2, 0x0

    goto :goto_0

    :catch_2
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setProKioskString() failed - persistence problem (PRO_KIOSK_OPTION_STRING) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setProKioskUsbMassStorageState(Z)I
    .locals 2

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbMassStorageStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setProKioskUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbNetAddressesLocal(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public setProKioskUsbNetState(Z)I
    .locals 2

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbNetStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setQuickPanelButtons(I)I
    .locals 11

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v2, -0x6

    if-ltz p1, :cond_0

    const/4 v7, 0x7

    if-le p1, v7, :cond_1

    :cond_0
    const/16 v3, -0x32

    return v3

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "quickPanelQuickConnect"

    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_2

    move v7, v3

    :goto_0
    invoke-virtual {v8, v0, v9, v10, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "quickPanelSFinder"

    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_3

    move v7, v3

    :goto_1
    invoke-virtual {v8, v0, v9, v10, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "quickPanelBrightness"

    and-int/lit8 v10, p1, 0x4

    if-eqz v10, :cond_4

    :goto_2
    invoke-virtual {v7, v0, v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getQuickPanelButtons()I

    move-result v6

    invoke-interface {v3, v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelButtons(I)V

    const/4 v2, 0x0

    :goto_3
    return v2

    :cond_2
    move v7, v6

    goto :goto_0

    :cond_3
    move v7, v6

    goto :goto_1

    :cond_4
    move v3, v6

    goto :goto_2

    :cond_5
    const-string/jumbo v3, "KnoxCustomManagerService"

    const-string/jumbo v6, "mSystemUiCallback is not available in setQuickPanelButtons"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    goto :goto_3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setQuickPanelButtons() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_3
.end method

.method public setQuickPanelEditMode(I)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v2, -0x6

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    if-eqz p1, :cond_0

    const/16 v3, -0x2b

    return v3

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "quickPanelEditMode"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-interface {v3, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelEditMode(I)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const-string/jumbo v3, "KnoxCustomManagerService"

    const-string/jumbo v4, "mSystemUiCallback is not available in setQuickPanelEditMode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setQuickPanelEditMode() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setQuickPanelItems(Ljava/lang/String;)I
    .locals 14

    const/16 v13, 0x16

    const/4 v12, 0x1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v7, -0x6

    new-array v8, v13, [I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v13, :cond_5

    aget v9, v8, v2

    if-eq v9, v12, :cond_1

    add-int/lit8 v9, v2, 0x1

    invoke-direct {p0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getQuickPanelItemString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v9, ","

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    array-length v10, v5

    :goto_1
    if-ge v9, v10, :cond_0

    aget-object v3, v5, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lt v4, v12, :cond_3

    if-le v4, v13, :cond_4

    :cond_3
    const-string/jumbo v9, "KnoxCustomManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setQuickPanelItems return ERROR_INVALID_VALUE index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, -0x32

    return v9

    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    aput v12, v8, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "KNOX_CUSTOM"

    const-string/jumbo v11, "quickPanelTileList"

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v0, v10, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :try_start_0
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelItems(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_2
    return v7

    :cond_6
    const-string/jumbo v9, "KnoxCustomManagerService"

    const-string/jumbo v10, "mSystemUiCallback is not available in setQuickPanelItems"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, -0x1

    goto :goto_2

    :catch_0
    move-exception v1

    const-string/jumbo v9, "KnoxCustomManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setQuickPanelItems() failed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x1

    goto :goto_2
.end method

.method public setRecentLongPressActivity(Ljava/lang/String;)I
    .locals 6

    const/4 v2, -0x6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, -0x21

    return v3

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "recentLongPressActivity"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRecentLongPressActivity() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setRecentLongPressMode(I)I
    .locals 6

    const/4 v2, -0x6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    if-ltz p1, :cond_0

    const/4 v3, 0x2

    if-le p1, v3, :cond_1

    :cond_0
    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRecentLongPressMode() failed - Invalid Mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0x2b

    return v3

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "recentLongPressMode"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRecentLongPressMode() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setScreenOffOnHomeLongPressState(Z)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v2, -0x6

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "screenOffOnHomeLongPressState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenOffOnHomeLongPressState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setScreenOffOnStatusBarDoubleTapState(Z)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v2, -0x6

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "screenOffOnStatusBarDoubleTapState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-interface {v3, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setScreenOffOnStatusBarDoubleTapState(Z)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-string/jumbo v3, "KnoxCustomManagerService"

    const-string/jumbo v4, "mSystemUiCallback is not available in setScreenOffOnStatusBarDoubleTapState"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenOffOnStatusBarDoubleTapState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setScreenPowerSavingState(Z)I
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "psm_switch"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :cond_0
    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "psm_switch"

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public setScreenTimeout(I)I
    .locals 10

    const/16 v8, -0x2d

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const v5, 0x20c49b

    if-lt p1, v5, :cond_0

    return v8

    :cond_0
    const/4 v5, 0x5

    if-ge p1, v5, :cond_1

    return v8

    :cond_1
    mul-int/lit16 v4, p1, 0x3e8

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "screen_off_timeout"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    const/4 v9, -0x2

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setScreenTimeout() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setScreenWakeupOnPowerState(Z)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v2, -0x6

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "screenWakeupOnPowerState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenWakeupOnPowerState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setSensorDisabled(ZI)I
    .locals 8

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    if-ltz p2, :cond_0

    const/16 v5, 0x7f

    if-le p2, v5, :cond_1

    :cond_0
    const/16 v5, -0x32

    return v5

    :cond_1
    const/4 v4, -0x6

    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "sensorDisabled"

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz p1, :cond_3

    or-int v3, v1, p2

    :goto_0
    if-eq v3, v1, :cond_2

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "sensorDisabled"

    invoke-virtual {v5, v0, v6, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_3
    not-int v5, p2

    and-int v3, v1, v5

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v5, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSensorDisabled() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    goto :goto_1
.end method

.method public setSettingsEnabledItems(ZI)I
    .locals 10

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    if-ltz p2, :cond_0

    const/4 v5, 0x7

    if-le p2, v5, :cond_1

    :cond_0
    const-string/jumbo v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSettingsEnabledItems() failed - Invalid Settings type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x32

    return v5

    :cond_1
    const/4 v4, -0x6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "sealedModeSettingsState"

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz p1, :cond_3

    or-int v3, v1, p2

    :goto_0
    if-eq v3, v1, :cond_2

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "sealedModeSettingsState"

    invoke-virtual {v5, v0, v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->closeSettingsApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_3
    not-int v5, p2

    and-int v3, v1, v5

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSettingsEnabledItems() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    goto :goto_1
.end method

.method public setSettingsHiddenState(ZI)I
    .locals 10

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    if-ltz p2, :cond_0

    const/16 v5, 0x1fbf

    if-le p2, v5, :cond_1

    :cond_0
    const-string/jumbo v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSettingsHiddenState() failed - Invalid Settings type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x32

    return v5

    :cond_1
    const/4 v4, -0x6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "settingsState"

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz p1, :cond_5

    or-int v3, v1, p2

    iget-boolean v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mGraceUIGraceView:Z

    if-eqz v5, :cond_4

    and-int/lit8 v3, v3, -0x41

    :cond_2
    :goto_0
    if-eq v3, v1, :cond_3

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "settingsState"

    invoke-virtual {v5, v0, v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->closeSettingsApp()V

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSettingsHiddenState()I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    const/16 v8, 0x80

    if-ne v5, v8, :cond_6

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelButtonUsers(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    const/4 v4, 0x0

    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_4
    :try_start_1
    iget-boolean v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mGraceUIHeroView:Z

    if-eqz v5, :cond_2

    and-int/lit16 v3, v3, -0x801

    and-int/lit16 v3, v3, -0x1001

    goto :goto_0

    :cond_5
    not-int v5, p2

    and-int v3, v1, v5

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    const/4 v8, 0x1

    invoke-interface {v5, v8}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelButtonUsers(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSettingsHiddenState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    goto :goto_2

    :cond_7
    :try_start_2
    const-string/jumbo v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "mSystemUiCallback is not available in setSettingsHiddenState"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public setShutdownAnimation(Ljava/lang/String;Ljava/lang/String;)I
    .locals 19

    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_2

    :cond_1
    const/4 v15, 0x1

    :goto_0
    move v10, v15

    :goto_1
    if-nez v10, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkFileConditionForBootAnim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_4

    return v11

    :cond_2
    const/4 v15, 0x0

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    new-instance v7, Ljava/io/File;

    const-string/jumbo v15, "/data/b2b"

    invoke-direct {v7, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_6

    if-eqz v6, :cond_d

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    new-instance v9, Ljava/io/File;

    const-string/jumbo v15, "/data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    :cond_7
    if-eqz v10, :cond_8

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v15, 0x0

    return v15

    :cond_8
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct/range {p0 .. p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "/data/b2b/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "/data/b2b/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    const/4 v15, -0x1

    return v15

    :catch_0
    move-exception v8

    const/16 v15, -0x32

    return v15

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    const/4 v15, -0x1

    return v15

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_b

    const/4 v15, -0x1

    return v15

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_c

    const/4 v15, -0x1

    return v15

    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldExecutable(Ljava/io/File;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    move-result v15

    if-eqz v15, :cond_d

    const/4 v11, -0x1

    return v11

    :cond_d
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11
.end method

.method public setShuttingDownAnimation(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)I
    .locals 13

    const/4 v12, -0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    iget-boolean v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->isNotSupported:Z

    if-eqz v10, :cond_0

    const/4 v10, -0x6

    return v10

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    const/16 v10, -0x32

    return v10

    :cond_2
    new-instance v2, Ljava/io/File;

    const-string/jumbo v10, "/data/b2b"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v10, "KnoxCustomManagerService"

    const-string/jumbo v11, "/data/b2b directory creating fail"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_3
    invoke-direct {p0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_5

    if-eqz v1, :cond_b

    :cond_5
    invoke-direct {p0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    new-instance v4, Ljava/io/File;

    const-string/jumbo v10, "/data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-direct {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    invoke-direct {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v6, "/data/b2b/shutdownanimation.qmg"

    const-string/jumbo v7, "/data/b2b/shutdownsound.ogg"

    invoke-direct {p0, v4, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    return v12

    :catch_0
    move-exception v3

    const-string/jumbo v10, "KnoxCustomManagerService"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_7
    invoke-direct {p0, v4, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    return v12

    :cond_8
    invoke-direct {p0, p1, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    return v12

    :cond_9
    invoke-direct {p0, p2, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    return v12

    :cond_a
    invoke-direct {p0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldExecutable(Ljava/io/File;)V

    invoke-direct {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    :cond_b
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5
.end method

.method public setStatusBarClockState(Z)I
    .locals 11

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    const/4 v3, 0x2

    :cond_0
    const/4 v6, -0x6

    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "statusBarClockState"

    invoke-virtual {v8, v0, v9, v10, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const-string/jumbo v8, "statusbar"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v7

    if-eqz v7, :cond_1

    iget v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mFlag:I

    if-eqz p1, :cond_2

    const v8, -0x800001

    and-int/2addr v2, v8

    :goto_0
    iput v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mFlag:I

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mToken:Landroid/os/IBinder;

    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKey:Ljava/lang/String;

    invoke-interface {v7, v2, v8, v9}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v6

    :cond_2
    const/high16 v8, 0x800000

    or-int/2addr v2, v8

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setStatusBarClockState() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    goto :goto_1
.end method

.method public setStatusBarIconsState(Z)I
    .locals 7

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    const/4 v2, 0x3

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    :cond_0
    const/4 v3, -0x6

    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "statusBarIconsState"

    invoke-virtual {v4, v0, v5, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-interface {v4, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarIconsState(Z)V

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    const-string/jumbo v4, "KnoxCustomManagerService"

    const-string/jumbo v5, "mSystemUiCallback is not available in setStatusBarIconsState"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setStatusBarIconsState() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0
.end method

.method public setStatusBarMode(I)I
    .locals 2

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setStatusBarModeLocal(II)I

    move-result v1

    return v1
.end method

.method public setStatusBarNotificationsState(Z)I
    .locals 10

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    const/4 v3, -0x6

    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "statusBarNotificationsState"

    invoke-virtual {v7, v0, v8, v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const-string/jumbo v7, "statusbar"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v6

    if-eqz v6, :cond_0

    iget v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mFlag:I

    if-eqz p1, :cond_1

    const v7, -0x1030001

    and-int/2addr v2, v7

    :goto_0
    iput v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mFlag:I

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mToken:Landroid/os/IBinder;

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKey:Ljava/lang/String;

    invoke-interface {v6, v2, v7, v8}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    :cond_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-interface {v7, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarNotificationsState(Z)V

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_1
    const/high16 v7, 0x1030000

    or-int/2addr v2, v7

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "KnoxCustomManagerService"

    const-string/jumbo v8, "mSystemUiCallback is not available in setStatusBarNotificationsState"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setStatusBarNotificationsState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_1
.end method

.method public setStatusBarText(Ljava/lang/String;II)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v2, -0x1

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    if-eq p2, v3, :cond_0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    const/16 v3, -0x29

    return v3

    :cond_0
    if-eqz p3, :cond_2

    const/4 v3, 0x4

    if-lt p3, v3, :cond_1

    const/16 v3, 0x20

    if-le p3, v3, :cond_2

    :cond_1
    const/16 v3, -0x32

    return v3

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarText"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextStyle"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextSize"

    invoke-virtual {v3, v0, v4, v5, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    const/4 v4, 0x0

    invoke-interface {v3, p1, p2, p3, v4}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarTextInfo(Ljava/lang/String;III)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_3
    const-string/jumbo v3, "KnoxCustomManagerService"

    const-string/jumbo v4, "mSystemUiCallback is not available in setStatusBarText"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStatusBarText() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setStatusBarTextScrollWidth(Ljava/lang/String;III)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v2, -0x1

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    if-eq p2, v3, :cond_0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    const/16 v3, -0x29

    return v3

    :cond_0
    if-eqz p3, :cond_2

    const/4 v3, 0x4

    if-lt p3, v3, :cond_1

    const/16 v3, 0x20

    if-le p3, v3, :cond_2

    :cond_1
    const/16 v3, -0x32

    return v3

    :cond_2
    if-eqz p4, :cond_4

    const/16 v3, 0xa

    if-lt p4, v3, :cond_3

    const/16 v3, 0x140

    if-le p4, v3, :cond_4

    :cond_3
    const/16 v3, -0x33

    return v3

    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarText"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextStyle"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextSize"

    invoke-virtual {v3, v0, v4, v5, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextScroll"

    invoke-virtual {v3, v0, v4, v5, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarTextInfo(Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_5
    const/4 v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStatusBarTextScrollWidth() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setStayAwakeState(Z)I
    .locals 8

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "stay_on_while_plugged_in"

    if-eqz p1, :cond_0

    const/4 v3, 0x3

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setStayAwakeState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setSystemLocale(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13

    const/16 v12, -0x2c

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    if-nez p2, :cond_0

    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :goto_0
    if-nez v2, :cond_1

    return v12

    :cond_0
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v3

    const/4 v8, 0x0

    array-length v9, v3

    :goto_1
    if-ge v8, v9, :cond_3

    aget-object v1, v3, v8

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v5, 0x1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    if-nez v5, :cond_4

    return v12

    :cond_4
    invoke-static {v2}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x0

    :goto_2
    return v4

    :cond_5
    const/16 v4, -0x2c

    goto :goto_2
.end method

.method public setSystemRingtone(ILjava/lang/String;)I
    .locals 12

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    new-instance v6, Landroid/media/RingtoneManager;

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v10}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    if-eq p1, v10, :cond_0

    const/4 v10, 0x2

    if-eq p1, v10, :cond_0

    const/4 v10, 0x4

    if-eq p1, v10, :cond_0

    const/16 v2, -0x22

    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_0
    if-nez p2, :cond_1

    const/16 v10, -0x23

    return v10

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10, p1, v11}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v6, p1}, Landroid/media/RingtoneManager;->setType(I)V

    invoke-virtual {v6}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {v6, v7}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v3

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v10}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v6, v7}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v4

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10, p1, v4}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    const/4 v1, 0x1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const/16 v2, -0x23

    goto :goto_0
.end method

.method public setSystemSoundsEnabledState(II)I
    .locals 10

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    if-eq p1, v6, :cond_0

    if-eqz p1, :cond_0

    const/16 v3, -0x2b

    return v3

    :cond_0
    if-ltz p2, :cond_1

    const/16 v7, 0x3f

    if-le p2, v7, :cond_2

    :cond_1
    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSystemSoundsEnabledState() failed - Invalid System Sounds type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0x32

    return v3

    :cond_2
    const/4 v2, -0x6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    and-int/lit8 v7, p2, 0x1

    if-ne v7, v6, :cond_3

    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "dtmf_tone"

    if-ne p1, v6, :cond_a

    move v7, v6

    :goto_0
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    and-int/lit8 v7, p2, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "sound_effects_enabled"

    if-ne p1, v6, :cond_b

    move v7, v6

    :goto_1
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    and-int/lit8 v7, p2, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "lockscreen_sounds_enabled"

    if-ne p1, v6, :cond_c

    move v7, v6

    :goto_2
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    and-int/lit8 v7, p2, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "haptic_feedback_enabled"

    if-ne p1, v6, :cond_d

    move v7, v6

    :goto_3
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    and-int/lit8 v7, p2, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_7

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "sip_key_feedback_sound"

    if-ne p1, v6, :cond_e

    move v7, v6

    :goto_4
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    and-int/lit8 v7, p2, 0x20

    const/16 v8, 0x20

    if-ne v7, v8, :cond_9

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "spen_feedback_sound"

    if-ne p1, v6, :cond_8

    move v3, v6

    :cond_8
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "pen_detachment_notification"

    if-ne p1, v6, :cond_f

    const-string/jumbo v3, "/system/media/audio/ui/Pen_att_noti1.ogg,/system/media/audio/ui/Pen_det_noti1.ogg"

    :goto_5
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    const/4 v2, 0x0

    :goto_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_a
    move v7, v3

    goto/16 :goto_0

    :cond_b
    move v7, v3

    goto :goto_1

    :cond_c
    move v7, v3

    goto :goto_2

    :cond_d
    move v7, v3

    goto :goto_3

    :cond_e
    move v7, v3

    goto :goto_4

    :cond_f
    const/4 v3, 0x0

    goto :goto_5

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSystemSoundsEnabledState() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_6
.end method

.method public setSystemSoundsSilent()I
    .locals 8

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "dtmf_tone"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "sound_effects_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "lockscreen_sounds_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "haptic_feedback_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "sip_key_feedback_sound"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "pen_detachment_notification"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSystemSoundsSilent() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setToastEnabledState(Z)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v2, -0x6

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastEnabledState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setToastEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setToastGravity(III)I
    .locals 7

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const v3, 0x118000ff

    const v4, -0x11800100

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    const/16 v4, -0x32

    return v4

    :cond_0
    const/4 v2, -0x6

    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "toastGravity"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "toastGravityXOffset"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "toastGravityYOffset"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setToastGravity() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setToastGravityEnabledState(Z)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v2, -0x6

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastGravityEnabledState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setToastGravityEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setToastShowPackageNameState(Z)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v2, -0x6

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastShowPackageNameState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setToastShowPackageNameState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setTorchOnVolumeButtonsState(Z)I
    .locals 8

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "torchlight_enable"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setTorchOnVolumeButtonsState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setUnknownSourcesState(Z)I
    .locals 8

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isNonMarketAppAllowed()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_1

    const-string/jumbo v4, "KnoxCustomManagerService"

    const-string/jumbo v5, "setUnknownSourcesState() - eSDK non market app not allowed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x7

    return v4

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "install_non_market_apps"

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_2
    move v4, v5

    goto :goto_1
.end method

.method public setUnlockSimOnBootState(Z)I
    .locals 6

    const/4 v2, -0x6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "android.hardware.telephony"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "simUnlockOnBoot"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-interface {v3, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setUnlockSimOnBootState(Z)V

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string/jumbo v3, "KnoxCustomManagerService"

    const-string/jumbo v4, "mSystemUiCallback is not available in setUnlockSimOnBootState"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUnlockSimOnBootState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setUnlockSimPin(Ljava/lang/String;)I
    .locals 6

    const/4 v2, -0x6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "android.hardware.telephony"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    const/16 v2, -0x32

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string/jumbo v3, "[0-9]+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, -0x32

    return v3

    :cond_2
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "simUnlockPin"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-interface {v3, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setUnlockSimPin(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "KnoxCustomManagerService"

    const-string/jumbo v4, "mSystemUiCallback is not available in setUnlockSimPin"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUnlockSimOnBoot() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setUsbConnectionType(I)I
    .locals 9

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v3, -0x6

    if-ltz p1, :cond_0

    const/4 v6, 0x4

    if-le p1, v6, :cond_1

    :cond_0
    const/16 v6, -0x2b

    return v6

    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "usbConnectionType"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "usb"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    if-eqz v2, :cond_2

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v6, "mtp"

    invoke-virtual {v2, v6}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const/4 v3, 0x0

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :pswitch_0
    :try_start_1
    const-string/jumbo v6, "mtp"

    invoke-virtual {v2, v6}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setUsbConnectionType() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_1

    :pswitch_1
    :try_start_2
    const-string/jumbo v6, "ptp"

    invoke-virtual {v2, v6}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v6, "midi"

    invoke-virtual {v2, v6}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v6, "sec_charging"

    invoke-virtual {v2, v6}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setUsbDeviceDefaultPackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)I
    .locals 10

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    const/4 v3, -0x6

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    if-eqz p1, :cond_3

    if-lez p3, :cond_2

    :try_start_0
    const-string/jumbo v5, "usb"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v4, p1, p2, v5}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    invoke-interface {v4, p1, p3}, Landroid/hardware/usb/IUsbManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_1
    const/16 v5, -0x21

    return v5

    :cond_2
    :try_start_1
    const-string/jumbo v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "setUsbDeviceDefaultPackage() failed - Application UID not specified "

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0x2e

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "setUsbDeviceDefaultPackage() failed - USB device not specified "

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v3, -0x2f

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setUsbDeviceDefaultPackage() failed - permission problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0
.end method

.method public setUsbMassStorageState(Z)I
    .locals 2

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbMassStorageStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbNetAddressesLocal(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public setUsbNetState(Z)I
    .locals 2

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbNetStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setUserInactivityTimeout(I)I
    .locals 10

    const/16 v8, -0x2d

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v2, -0x6

    const v5, 0x20c49b

    if-lt p1, v5, :cond_0

    return v8

    :cond_0
    if-gez p1, :cond_1

    return v8

    :cond_1
    mul-int/lit16 v4, p1, 0x3e8

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "user_activity_timeout"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setUserInactivityTimeout() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setVibrationIntensity(II)I
    .locals 6

    const/4 v1, -0x6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    if-ltz p2, :cond_0

    const/4 v4, 0x5

    if-le p2, v4, :cond_1

    :cond_0
    const/16 v4, -0x32

    return v4

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    packed-switch p1, :pswitch_data_0

    const/16 v1, -0x2b

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :pswitch_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "VIB_RECVCALL_MAGNITUDE"

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "VIB_FEEDBACK_MAGNITUDE"

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setVolumeButtonRotationState(Z)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v2, -0x6

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumeButtonRotationState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVolumeButtonRotationState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setVolumeControlStream(I)I
    .locals 7

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v1

    const/4 v3, -0x6

    if-ltz p1, :cond_1

    const/4 v4, 0x4

    if-gt p1, v4, :cond_1

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "volumeControlStream"

    invoke-virtual {v4, v1, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v2

    const-string/jumbo v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCheckCoverPopupState() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    const/16 v3, -0x32

    goto :goto_0
.end method

.method public setVolumeKeyAppState(Z)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    const/4 v2, -0x6

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumeKeyAppState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVolumeKeyAppState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setVolumeKeyAppsList(Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v8, 0x0

    const/16 v9, -0x32

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v2

    const/4 v6, -0x6

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    return v9

    :cond_0
    const-string/jumbo v5, "(?i)^[a-z][a-z0-9_]*(\\.[a-z0-9_]+)+[a-z0-9_]$"

    const-string/jumbo v1, ""

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    if-lez v4, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v7, "(?i)^[a-z][a-z0-9_]*(\\.[a-z0-9_]+)+[a-z0-9_]$"

    invoke-virtual {v0, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    return v9

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "volumeKeyAppsList"

    invoke-virtual {v7, v2, v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    :goto_1
    return v6

    :catch_0
    move-exception v3

    const-string/jumbo v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setVolumeKeyAppsList() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    goto :goto_1
.end method

.method public setVolumePanelEnabledState(Z)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v2, -0x6

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumePanelEnabledState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mSystemUiCallback:Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-interface {v3, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setVolumePanelEnabledState(Z)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-string/jumbo v3, "KnoxCustomManagerService"

    const-string/jumbo v4, "mSystemUiCallback is not available in setVolumePanelEnabledState"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVolumePanelEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiAutoSwitchDelay(I)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v2, -0x6

    if-lez p1, :cond_0

    const/16 v3, 0x258

    if-gt p1, v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiAutoSwitchDelay"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/16 v2, -0x32

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiAutoSwitchDelay() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiAutoSwitchState(Z)I
    .locals 6

    const/4 v2, -0x6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiAutoSwitchState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiAutoSwitchState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiAutoSwitchThreshold(I)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v2, -0x6

    if-gez p1, :cond_0

    const/16 v3, -0xc8

    if-lt p1, v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiAutoSwitchThreshold"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/16 v2, -0x32

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiAutoSwitchThreshold() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiConnectedMessageState(Z)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    const/4 v2, -0x6

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiConnectedMessageState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiConnectedMessageState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiConnectionMonitorState(Z)I
    .locals 8

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_watchdog_poor_network_test_enabled"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setWifiConnectionMonitorState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setWifiFrequencyBand(I)I
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    const/4 v2, -0x6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    if-nez p1, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_0
    if-ne p1, v8, :cond_1

    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {v3, v6, v7}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    if-ne p1, v9, :cond_2

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/16 v2, -0x32

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPowerSavingMode() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiHotspotEnabledState(I)I
    .locals 19

    const/4 v7, -0x6

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const-string/jumbo v17, "android.hardware.telephony"

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string/jumbo v17, "connectivity"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v16

    if-nez v16, :cond_0

    const/16 v16, -0x6

    return v16

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string/jumbo v17, "phone"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v16

    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    const/16 v16, -0x38

    return v16

    :cond_1
    const/16 v16, 0x1

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_2

    if-eqz p1, :cond_2

    const/16 v16, -0x2b

    return v16

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string/jumbo v17, "wifi"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v9

    const/16 v16, 0x1

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    const/16 v16, 0xc

    move/from16 v0, v16

    if-eq v9, v0, :cond_3

    const/16 v16, 0xd

    move/from16 v0, v16

    if-ne v9, v0, :cond_5

    :cond_3
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    const/16 v16, 0xc5

    move/from16 v0, v16

    iput v0, v6, Landroid/os/Message;->what:I

    iput-object v12, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v15, v6}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    const/4 v7, 0x0

    :goto_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :cond_5
    const/16 v16, 0x1

    :try_start_1
    move/from16 v0, v16

    invoke-virtual {v15, v12, v0}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v14

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v14, v0, :cond_6

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v14, v0, :cond_4

    :cond_6
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "wifi_saved_state"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string/jumbo v16, "KnoxCustomManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "setWifiHotspotEnabledState() failed - persistence problem "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x1

    goto :goto_1

    :cond_7
    const/16 v16, 0xc

    move/from16 v0, v16

    if-eq v9, v0, :cond_8

    const/16 v16, 0xd

    move/from16 v0, v16

    if-ne v9, v0, :cond_4

    :cond_8
    const/16 v16, 0x0

    const/16 v17, 0x0

    :try_start_2
    invoke-virtual/range {v15 .. v17}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v13, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "wifi_saved_state"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v13

    :goto_2
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v13, v0, :cond_4

    const/16 v16, 0x1

    :try_start_4
    invoke-virtual/range {v15 .. v16}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v17, "wifi_saved_state"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public setWifiNetworkNotificationState(Z)I
    .locals 8

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_networks_available_notification_on"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setWifiNetworkNotificationState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setWifiState(ZLjava/lang/String;Ljava/lang/String;)I
    .locals 11

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_1

    const-string/jumbo v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setWifiState() - eSDK wifi disabled"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x7

    return v8

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    const/4 v8, 0x0

    sput-boolean v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    if-eqz v5, :cond_6

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    const-string/jumbo v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setWifiState() - ssid == null && password != null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x28

    :goto_1
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "WifiState"

    invoke-virtual {v8, v0, v9, v10, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_2
    if-eqz p2, :cond_3

    :try_start_1
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8, p2, p3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    const/4 v8, 0x1

    sput-boolean v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    const/4 v8, 0x0

    sput-boolean v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiEap:Z

    sput-object p2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiSSID:Ljava/lang/String;

    const/4 v8, 0x0

    sput-object v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiUsername:Ljava/lang/String;

    sput-object p3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiPassword:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    const-string/jumbo v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setWifiState() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    const/4 v4, -0x1

    goto :goto_2
.end method

.method public setWifiStateEap(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 16

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v8

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v6, 0x0

    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v6, :cond_1

    const-string/jumbo v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setWifiState() - eSDK wifi disabled"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, -0x7

    return v13

    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, -0x6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "wifi"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    const/4 v13, 0x0

    sput-boolean v13, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v12, :cond_8

    if-eqz p1, :cond_7

    const/4 v7, 0x0

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    const/4 v7, 0x1

    :cond_2
    :goto_1
    if-nez v7, :cond_4

    const/16 v9, -0x28

    :goto_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :cond_3
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    if-eqz p4, :cond_5

    :try_start_1
    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    const/4 v13, 0x1

    sput-boolean v13, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    const/4 v13, 0x1

    sput-boolean v13, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiEap:Z

    sput-object p2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiSSID:Ljava/lang/String;

    sput-object p3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiUsername:Ljava/lang/String;

    sput-object p4, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiPassword:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    const-string/jumbo v13, "KnoxCustomManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setWifiState() failed - persistence problem "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, -0x1

    goto :goto_2

    :cond_7
    const/4 v13, 0x0

    :try_start_2
    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v9, 0x0

    goto :goto_2

    :cond_8
    const/4 v9, -0x1

    goto :goto_2
.end method

.method public systemReady()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->registerKnoxCustomReceiver()V

    return-void
.end method
