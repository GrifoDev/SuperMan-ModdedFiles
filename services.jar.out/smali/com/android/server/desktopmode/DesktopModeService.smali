.class public Lcom/android/server/desktopmode/DesktopModeService;
.super Lcom/samsung/android/desktopmode/IDesktopMode$Stub;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/DesktopModeService$1;,
        Lcom/android/server/desktopmode/DesktopModeService$2;,
        Lcom/android/server/desktopmode/DesktopModeService$3;,
        Lcom/android/server/desktopmode/DesktopModeService$4;,
        Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;,
        Lcom/android/server/desktopmode/DesktopModeService$DesktopModeStateReceiver;,
        Lcom/android/server/desktopmode/DesktopModeService$Enabler;,
        Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;,
        Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;
    }
.end annotation


# static fields
.field private static final ARG_DISMISSED_BY_TIMEOUT:I = -0x1

.field private static final DEBUG:Z

.field private static final DELAY_START_LOADING_SCREEN:I = 0x1f4

.field private static final DELAY_START_LOADING_SCREEN_ANIMATION:I = 0x12c

.field private static final DELAY_STOP_LOADING_SCREEN:I = 0x3e8

.field private static final DIALOG_TYPE_EXTERNAL_DISPLAY_CONNECTED:I = 0x3

.field private static final DIALOG_TYPE_INSTALL_LAUNCHER:I = 0x2

.field private static final DIALOG_TYPE_LAUNCH_CONFIRMATION:I = 0x1

.field private static final DIALOG_TYPE_NONE:I = 0x0

.field private static final EXTRA_DESKTOP_MODE_STATE:Ljava/lang/String; = "DesktopModeService.EXTRA_DESKTOP_MODE_STATE"

.field private static final EXTRA_DESKTOP_MODE_STATE_DISABLED:I = 0x2

.field private static final EXTRA_DESKTOP_MODE_STATE_ENABLED:I = 0x1

.field private static final EXTRA_DESKTOP_MODE_STATE_UNKNOWN:I = 0x0

.field private static final GALAXY_APPS:Ljava/lang/String; = "samsungapps://ProductDetail/"

.field private static final KERNEL_FILE_PATH:Ljava/lang/String; = "/sys/class/dp_sec/dex"

.field private static final LAUNCHER_APPNAME:Ljava/lang/String; = "DesktopLauncher"

.field private static final LAUNCHER_CLSNAME:Ljava/lang/String; = "com.android.launcher3.Launcher"

.field private static final LAUNCHER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.desktoplauncher"

.field private static final MSG_BASE:I = 0x64

.field private static final MSG_ON_LOADING_SCREEN_SHOWN:I = 0x6a

.field private static final MSG_SET_DESKTOP_MODE_INNER:I = 0x65

.field private static final MSG_SHOW_DIALOG:I = 0x66

.field private static final MSG_SHOW_TOAST:I = 0x67

.field private static final MSG_START_LOADING_SCREEN:I = 0x68

.field private static final MSG_STOP_LOADING_SCREEN:I = 0x69

.field private static final PENDING_STATUS_ENTER:I = 0x1

.field private static final PENDING_STATUS_EXIT:I = 0x2

.field private static final PENDING_STATUS_NONE:I = 0x0

.field private static final SETTINGS_CLSNAME:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SETTINGS_SCREEN_TIMEOUT:Ljava/lang/String; = "screen_timeout"

.field private static final SETTINGS_SCREEN_TIMEOUT_BACKUP:Ljava/lang/String; = "screen_timeout_backup"

.field private static final SETTINGS_URI:Ljava/lang/String; = "content://com.sec.android.app.desktoplauncher.settings/settings"

.field private static final TAG:Ljava/lang/String;

.field private static final THEME_STORE_PACKAGE:Ljava/lang/String; = "com.samsung.android.themestore"

.field private static final TIMEOUT_LOADING_SCREEN:I = 0x3a98


# instance fields
.field private mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/desktopmode/IDesktopModeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mCustomDensity:I

.field private mCustomHeight:I

.field private mCustomWidth:I

.field private mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogType:I

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mFirstTimeExternalDisplay:Z

.field private mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

.field private final mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mInputManagerService:Lcom/android/server/input/InputManagerService;

.field private mIsDesktopDockConnected:Z

.field private mIsDesktopMode:Z

.field private mIsDesktopModeAvailable:Z

.field private mIsExternalDisplayConnected:Z

.field private mIsForcedDesktopMode:Z

.field private mIsKeyboardConnected:Z

.field private mIsLauncherInstalled:Z

.field private mIsMouseConnected:Z

.field private final mLoadingScreenAnimationListener:Lcom/samsung/android/desktopmode/LoadingScreenManager$AnimationListener;

.field private mLoadingScreenManager:Lcom/samsung/android/desktopmode/LoadingScreenManager;

.field private final mLock:Ljava/lang/Object;

.field private mModeChangeLock:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingStatus:I

.field private final mProcessObserver:Landroid/app/IProcessObserver;

.field private mSamsungActivityManager:Lcom/android/server/am/IActivityManagerServiceBridge;

.field private mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

.field private mTopTaskId:I

.field private mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

.field private mUiModeManager:Landroid/app/IUiModeManager;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/LoadingScreenManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLoadingScreenManager:Lcom/samsung/android/desktopmode/LoadingScreenManager;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/desktopmode/DesktopModeService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsLauncherInstalled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/desktopmode/DesktopModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsLauncherInstalled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/desktopmode/DesktopModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->blockDefaultDisplayAndTouchScreen(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onBootPhase(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onSwitchUser(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopDockState(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopModeInner(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/desktopmode/DesktopModeService;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopMode(ZZ)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateDesktopModeState()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateExternalDisplayStatus()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateInputDeviceStatus()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.launcher3.settings.DesktopSettingsActivity"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.launcher3.settings.SettingsSearchProvider"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.wallpaperchooser.WallpaperGridActivity"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeService;->SETTINGS_CLSNAME:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$1;

    invoke-direct {v2, p0}, Lcom/android/server/desktopmode/DesktopModeService$1;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mProcessObserver:Landroid/app/IProcessObserver;

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$2;

    invoke-direct {v2, p0}, Lcom/android/server/desktopmode/DesktopModeService$2;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$3;

    invoke-direct {v2, p0}, Lcom/android/server/desktopmode/DesktopModeService$3;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$4;

    invoke-direct {v2, p0}, Lcom/android/server/desktopmode/DesktopModeService$4;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLoadingScreenAnimationListener:Lcom/samsung/android/desktopmode/LoadingScreenManager$AnimationListener;

    iput-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    iput-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    iput-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    iput-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopModeAvailable:Z

    iput-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsLauncherInstalled:Z

    iput-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    iput-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    iput-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardConnected:Z

    iput-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mFirstTimeExternalDisplay:Z

    iput v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPendingStatus:I

    iput v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    iput v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomWidth:I

    iput v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomHeight:I

    iput v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    iput v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskId:I

    iput v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    iput-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    iput-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iput-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    iput-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManager:Landroid/hardware/input/InputManager;

    iput-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iput-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iput-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLoadingScreenManager:Lcom/samsung/android/desktopmode/LoadingScreenManager;

    iput-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungActivityManager:Lcom/android/server/am/IActivityManagerServiceBridge;

    iput-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iput-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiModeManager:Landroid/app/IUiModeManager;

    iput-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    iput-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iput-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->initDesktopDockObserver()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;

    invoke-direct {v2, p0, v3}, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;)V

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.KNOXDESKTOP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeStateReceiver;

    invoke-direct {v2, p0, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeStateReceiver;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$DesktopModeStateReceiver;)V

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private blockDefaultDisplayAndTouchScreen(Z)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayPowerMode(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const-string/jumbo v1, "DeX"

    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/android/server/input/InputManagerService;->setBlockDeviceMode(ZIZLjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private dialogTypeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "DIALOG_TYPE_NONE"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "DIALOG_TYPE_LAUNCH_CONFIRMATION"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "DIALOG_TYPE_INSTALL_LAUNCHER"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "DIALOG_TYPE_EXTERNAL_DISPLAY_CONNECTED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private dismissDialog()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dismissDialog()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    return-void
.end method

.method private getSettingsValue(Ljava/lang/String;)I
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v0, "content://com.sec.android.app.desktoplauncher.settings/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "title=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "value_int"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSettingsValue(), key="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", value="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v8

    :cond_3
    :try_start_1
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSettingsValue(), Returned cursor is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to communicate with DeX settings"

    invoke-static {v0, v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private initDesktopDockObserver()V
    .locals 3

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$5;

    const-string/jumbo v1, "/dev/"

    const/16 v2, 0x300

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService$5;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeService$5;->startWatching()V

    return-void
.end method

.method private isAutoStartMode()Z
    .locals 2

    const/4 v0, 0x1

    const-string/jumbo v1, "auto_start_desktop_mode"

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->getSettingsValue(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isChangePossible()Z
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isChangePossible(), mModeChangeLock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isUserSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isFactoryBinary()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isDesktopModeReady()Z
    .locals 2

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isDesktopModeReady()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEmergencyMode()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "emergency_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ultra_powersaving_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isFactoryBinary()Z
    .locals 3

    const-string/jumbo v0, "factory"

    const-string/jumbo v1, "ro.factory.factory_binary"

    const-string/jumbo v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUserSetupComplete()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_setup_complete"

    iget v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private notifyDesktopDockState(Z)V
    .locals 6

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/IDesktopModeCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeCallback;->onDesktopDockConnectionChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    return-void
.end method

.method private notifyDesktopModeState(Z)V
    .locals 7

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/IDesktopModeCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeCallback;->onDesktopModeChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    if-eqz p1, :cond_1

    sget-object v4, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_KNOX_DESKTOP_MODE:Ljava/lang/String;

    :goto_2
    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_1
    sget-object v4, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_KNOX_DESKTOP_MODE:Ljava/lang/String;

    goto :goto_2
.end method

.method private onBootPhase(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v1, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsLauncherInstalled:Z

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    sget-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_WINDOW_MANAGER_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-static {v0}, Lcom/android/server/SamsungCoreServices;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IWindowManagerServiceBridge;

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    new-instance v0, Lcom/samsung/android/desktopmode/LoadingScreenManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/desktopmode/LoadingScreenManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLoadingScreenManager:Lcom/samsung/android/desktopmode/LoadingScreenManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLoadingScreenManager:Lcom/samsung/android/desktopmode/LoadingScreenManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLoadingScreenAnimationListener:Lcom/samsung/android/desktopmode/LoadingScreenManager$AnimationListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->registerAnimationListener(Lcom/samsung/android/desktopmode/LoadingScreenManager$AnimationListener;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v0, "uimode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiModeManager:Landroid/app/IUiModeManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayWidth:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomWidth:I

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayHeight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomHeight:I

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayDensity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->writeStateToKernel(Z)V

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setScreenOffTimeout(Z)V

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setSettingsComponent(Z)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateExternalDisplayStatus()V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateInputDeviceStatus()V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateDesktopModeState()V

    goto :goto_0
.end method

.method private onSwitchUser(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    return-void
.end method

.method private pendingStatusToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "PENDING_STATUS_NONE"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "PENDING_STATUS_ENTER"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "PENDING_STATUS_EXIT"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private powerModeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "POWER_MODE_OFF"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "POWER_MODE_DOZE"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "POWER_MODE_NORMAL"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "POWER_MODE_DOZE_SUSPEND"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private removeAllTasks()V
    .locals 0

    return-void
.end method

.method private restorePreviousSizeDensity(I)V
    .locals 14

    const/16 v2, 0x2c

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v0, v5}, Lcom/android/server/wm/IWindowManagerServiceBridge;->getInitialDisplayProperties(I)[I

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "display_size_forced"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v12, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-lez v11, :cond_0

    invoke-virtual {v12, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ne v0, v11, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v12, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-lez v13, :cond_0

    if-lez v10, :cond_0

    const/4 v0, 0x0

    aput v13, v7, v0

    const/4 v0, 0x1

    aput v10, v7, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "display_density_forced"

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_1

    const/4 v0, 0x2

    aput v6, v7, v0
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Restoring display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v7, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v7, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v7, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    aget v2, v7, v5

    aget v3, v7, v3

    aget v4, v7, v4

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setForcedDisplaySizeDensity(IIIIZ)V

    return-void

    :catch_0
    move-exception v9

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to parse previous forced display size"

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "No previous forced display size. Use default size instead."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v8

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "No previous forced display density. Use default density instead."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private scheduleStartLoadingScreen(Z)V
    .locals 7

    const/16 v6, 0x69

    const/16 v5, 0x68

    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleStartLoadingScreen(), enter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isChangePossible()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-ne v2, p1, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v2, v6}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v6, v3, v4}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setCustomConfigurations(Z)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setDesktopMode(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomWidth:I

    iget v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomHeight:I

    iget v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setForcedDisplaySizeDensity(IIIIZ)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->restorePreviousSizeDensity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to set custom configurations"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setDesktopDockState(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopDockState(), connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->notifyDesktopDockState(Z)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateDesktopModeState()V

    return-void
.end method

.method private setDesktopMode(ZZ)V
    .locals 3

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "To set Desktop mode, modeAvailable must be true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopMode(), modeAvailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", desktopMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->dismissDialog()V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isChangePossible()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopModeAvailable:Z

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eq v0, p2, :cond_3

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleStartLoadingScreen(Z)V

    :cond_3
    return-void
.end method

.method private setDesktopModeInner(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopModeInner(), enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->dismissDialog()V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPendingStatus:I

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setCustomConfigurations(Z)V

    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private setScreenOffTimeout(Z)V
    .locals 7

    sget-boolean v4, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setScreenOffTimeout(), enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v2, 0x7530

    if-eqz p1, :cond_4

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_off_timeout"

    const/16 v6, 0x7530

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sget-boolean v4, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setScreenOffTimeout(), Backing up current value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v4, "screen_timeout_backup"

    invoke-direct {p0, v4, v3}, Lcom/android/server/desktopmode/DesktopModeService;->setSettingsValue(Ljava/lang/String;I)V

    const-string/jumbo v4, "screen_timeout"

    invoke-direct {p0, v4}, Lcom/android/server/desktopmode/DesktopModeService;->getSettingsValue(Ljava/lang/String;)I

    move-result v1

    sget-boolean v4, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setScreenOffTimeout(), Setting Desktop mode value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_off_timeout"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string/jumbo v4, "screen_timeout_backup"

    invoke-direct {p0, v4}, Lcom/android/server/desktopmode/DesktopModeService;->getSettingsValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    sget-boolean v4, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setScreenOffTimeout(), Restoring backed up value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_off_timeout"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v4, "screen_timeout_backup"

    const/4 v5, -0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/desktopmode/DesktopModeService;->setSettingsValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setSettingsComponent(Z)V
    .locals 9

    const/4 v3, 0x0

    const/4 v5, 0x1

    sget-boolean v4, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSettingsComponent(), enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->SETTINGS_CLSNAME:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v7, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.sec.android.app.desktoplauncher"

    invoke-direct {v7, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    move v4, v5

    :goto_1
    const/4 v8, 0x1

    invoke-virtual {v6, v7, v4, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Failed to toggle settings component"

    invoke-static {v4, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "com.samsung.android.themestore"

    if-eqz p1, :cond_3

    const/4 v3, 0x2

    :cond_3
    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    :catch_1
    move-exception v2

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed to toggle settings component"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private setSettingsValue(Ljava/lang/String;I)V
    .locals 7

    sget-boolean v4, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSettingsValue(), key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "value_int"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "content://com.sec.android.app.desktoplauncher.settings/settings"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v0, "title=?"

    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private showDialog(I)V
    .locals 7

    const v6, 0x104000a

    const/4 v5, 0x0

    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showDialog(), dialogType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->dialogTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    :cond_2
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$6;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/DesktopModeService$6;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/samsung/android/framework/res/R$string;->msg_desktop_mode_launch_popup:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/samsung/android/framework/res/R$string;->txt_desktop_mode_launch_popup_positive:I

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/samsung/android/framework/res/R$string;->txt_desktop_mode_launch_popup_negative:I

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void

    :pswitch_1
    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$7;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/DesktopModeService$7;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/samsung/android/framework/res/R$string;->msg_desktop_mode_install_popup:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/samsung/android/framework/res/R$string;->txt_desktop_mode_install_popup_positive:I

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/samsung/android/framework/res/R$string;->msg_external_display_connected:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startHome()V
    .locals 12

    const/4 v7, 0x0

    const/4 v1, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.category.HOME"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10200000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v11, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move v8, v7

    move-object v9, v1

    move-object v10, v1

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/ActivityManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    return-void
.end method

.method private updateDesktopModeState()V
    .locals 5

    const/16 v4, 0x66

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateDesktopModeState()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isChangePossible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateNotification()V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeReady()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopModeAvailable:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsLauncherInstalled:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isAutoStartMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v2, v2}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopMode(ZZ)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_6
    invoke-direct {p0, v3, v3}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopMode(ZZ)V

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mFirstTimeExternalDisplay:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mFirstTimeExternalDisplay:Z

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updateExternalDisplayStatus()V
    .locals 7

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    invoke-virtual {v1}, Landroid/view/Display;->getType()I

    move-result v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_2

    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    sget-boolean v4, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mIsExternalDisplayConnected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private updateInputDeviceStatus()V
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v5}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v1

    const/4 v4, 0x0

    const/4 v3, 0x0

    array-length v9, v1

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_0

    aget v0, v1, v8

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v5, v0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/InputDevice;->isExternal()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Landroid/view/InputDevice;->getSources()I

    move-result v5

    and-int/lit8 v5, v5, 0xe

    if-eqz v5, :cond_2

    move v5, v6

    :goto_1
    or-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v5

    const/4 v10, 0x2

    if-ne v5, v10, :cond_3

    move v5, v6

    :goto_2
    or-int/2addr v3, v5

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    :cond_0
    iput-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    iput-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardConnected:Z

    sget-boolean v5, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mIsMouseConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mIsKeyboardConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    move v5, v7

    goto :goto_1

    :cond_3
    move v5, v7

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_0
.end method

.method private updateNotification()V
    .locals 0

    return-void
.end method

.method private writeStateToKernel(Z)V
    .locals 7

    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "/sys/class/dp_sec/dex"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "1,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_3
    const-string/jumbo v4, "0"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Failed to close FileWriter stream"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_2
    :try_start_4
    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Failed to write Desktop Mode state to kernel"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Failed to close FileWriter stream"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_4
    throw v4

    :catch_3
    move-exception v0

    sget-object v5, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Failed to close FileWriter stream"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catchall_1
    move-exception v4

    move-object v2, v3

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Permission Denial: can\'t dump DesktopModeService from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-boolean v6, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v6, :cond_8

    array-length v6, p3

    if-lez v6, :cond_8

    aget-object v1, p3, v8

    const-string/jumbo v6, "toggle"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    if-eqz v6, :cond_1

    const/4 v3, 0x0

    :goto_0
    iget-boolean v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    if-ne v3, v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Forced DeX mode is already turned "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v3, :cond_5

    const-string/jumbo v6, "on"

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "on"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "off"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; USAGE: [on|off|toggle]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string/jumbo v6, "off"

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    const-string/jumbo v6, "Turning on forced DeX mode..."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "This simulates the connection of an external display and a mouse."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/server/desktopmode/DesktopModeService;->setForcedDesktopMode(Z)V

    :goto_2
    return-void

    :cond_7
    const-string/jumbo v6, "Turning off forced DeX mode..."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "This simulates the disconnection of an external display and a mouse."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/android/server/desktopmode/DesktopModeService;->setForcedDesktopMode(Z)V

    goto :goto_2

    :cond_8
    new-instance v5, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v6, "  "

    const/16 v7, 0x78

    invoke-direct {v5, p2, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    const-string/jumbo v6, "DESKTOP MODE SERVICE (dumpsys desktopmode):"

    invoke-virtual {v5, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const-string/jumbo v6, "mIsDesktopMode"

    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v6, "mIsDesktopDockConnected"

    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v6, "mIsForcedDesktopMode"

    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v6, "mPendingStatus"

    iget v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPendingStatus:I

    invoke-direct {p0, v8}, Lcom/android/server/desktopmode/DesktopModeService;->pendingStatusToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v6, "mModeChangeLock"

    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v6, "mDialogType"

    iget v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    invoke-direct {p0, v8}, Lcom/android/server/desktopmode/DesktopModeService;->dialogTypeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v6, "mIsDesktopModeAvailable"

    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopModeAvailable:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v6, "mIsLauncherInstalled"

    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsLauncherInstalled:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v6, "mIsExternalDisplayConnected"

    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v6, "mIsMouseConnected"

    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v6, "mIsKeyboardConnected"

    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardConnected:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v6, "mCallbacks"

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    const-string/jumbo v6, "count"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_9

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/IDesktopModeCallback;

    invoke-virtual {v5, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    const-string/jumbo v6, "mDefaultDisplayEnabler"

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v6, "mTouchScreenEnabler"

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v6, "mCurrentUserId"

    iget v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v6, "mCustomWidth"

    iget v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomWidth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v6, "mCustomHeight"

    iget v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomHeight:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v6, "mCustomDensity"

    iget v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v6, "mLoadingScreenManager"

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLoadingScreenManager:Lcom/samsung/android/desktopmode/LoadingScreenManager;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v6, "Configuration"

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v6, "DISPLAY_SIZE_FORCED"

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "display_size_forced"

    invoke-static {v8, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v6, "DISPLAY_DENSITY_FORCED"

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "display_density_forced"

    iget v10, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v6, "screen_timeout"

    const-string/jumbo v8, "screen_timeout"

    invoke-direct {p0, v8}, Lcom/android/server/desktopmode/DesktopModeService;->getSettingsValue(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v6, "screen_timeout_backup"

    const-string/jumbo v8, "screen_timeout_backup"

    invoke-direct {p0, v8}, Lcom/android/server/desktopmode/DesktopModeService;->getSettingsValue(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v6, "SCREEN_OFF_TIMEOUT"

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "screen_off_timeout"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-void

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public isDefaultDisplayBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDesktopDockConnected()Z
    .locals 3

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeNative;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDesktopDockConnected(), state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    return v0
.end method

.method public isDesktopMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    return v0
.end method

.method public isExternalDisplayConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    return v0
.end method

.method public isModeChangePending()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPendingStatus:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isStartActivityAllowed(Landroid/content/pm/ActivityInfo;)Z
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v5

    :cond_1
    const-string/jumbo v3, "com.sec.android.app.desktoplauncher"

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v4, 0x10000

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    sget v4, Lcom/samsung/android/framework/res/R$string;->msg_desktop_mode_app_not_supported:I

    const/16 v5, 0x67

    invoke-virtual {v3, v5, v4, v6}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    return v6

    :cond_2
    return v5
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v4, :cond_3

    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    iget v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPendingStatus:I

    if-ne v3, v1, :cond_4

    :goto_1
    iput v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPendingStatus:I

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfigurationChanged(), enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateNotification()V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->removeAllTasks()V

    if-nez v0, :cond_1

    iput-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iput-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->writeStateToKernel(Z)V

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setScreenOffTimeout(Z)V

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setSettingsComponent(Z)V

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->notifyDesktopModeState(Z)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungActivityManager:Lcom/android/server/am/IActivityManagerServiceBridge;

    invoke-interface {v1}, Lcom/android/server/am/IActivityManagerServiceBridge;->getTopTaskId()I

    move-result v1

    iput v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskId:I

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->startHome()V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    if-nez v0, :cond_2

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPendingStatus:I

    if-ne v1, v4, :cond_2

    goto :goto_1
.end method

.method public onUnfreezingScreen()V
    .locals 5

    const/16 v4, 0x69

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLoadingScreenManager:Lcom/samsung/android/desktopmode/LoadingScreenManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLoadingScreenManager:Lcom/samsung/android/desktopmode/LoadingScreenManager;

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUnfreezingScreen()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungActivityManager:Lcom/android/server/am/IActivityManagerServiceBridge;

    invoke-interface {v0}, Lcom/android/server/am/IActivityManagerServiceBridge;->removeOtherHomes()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungActivityManager:Lcom/android/server/am/IActivityManagerServiceBridge;

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_0
    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskId:I

    invoke-interface {v1, v0, v2}, Lcom/android/server/am/IActivityManagerServiceBridge;->moveAllTasksToStack(II)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public readDataFromDock()B
    .locals 1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeNative;->readDevice()B

    move-result v0

    return v0
.end method

.method public registerStateCallback(Lcom/samsung/android/desktopmode/IDesktopModeCallback;)Z
    .locals 3

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setDefaultDisplayOn(ZLjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "callerPkgName must not be null or empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultDisplayOn(), on="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", callerPkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mDefaultDisplayEnabler="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    if-nez v2, :cond_4

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v2, p0, p2, v3, v4}, Lcom/android/server/desktopmode/DesktopModeService$Enabler;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayPowerMode(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultDisplayOn(), Screen already enabled by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iget-object v2, v2, Lcom/android/server/desktopmode/DesktopModeService$Enabler;->tag:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayPowerMode(I)V

    goto :goto_0

    :cond_6
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultDisplayOn(), Token or tag not matched; REQUESTED: {tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ACQUIRING: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setDefaultDisplayOn(), Screen already disabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDefaultDisplayPowerMode(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultDisplayPowerMode(), mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->powerModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->setDefaultDisplayPowerMode(I)V

    return-void
.end method

.method public setForcedDesktopMode(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ADB command received; setForcedDesktopMode(), enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateDesktopModeState()V

    return-void
.end method

.method public setSystemService(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/server/wm/WindowManagerService;

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/server/input/InputManagerService;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/android/server/input/InputManagerService;

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/android/server/am/IActivityManagerServiceBridge;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/am/IActivityManagerServiceBridge;

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungActivityManager:Lcom/android/server/am/IActivityManagerServiceBridge;

    goto :goto_0
.end method

.method public setTouchScreenOn(ZLjava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "callerPkgName must not be null or empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTouchScreenOn(), on="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", callerPkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mTouchScreenEnabler="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    if-nez v2, :cond_4

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v2, p0, p2, v3, v4}, Lcom/android/server/desktopmode/DesktopModeService$Enabler;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const-string/jumbo v3, "DeX"

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5, v5, v3}, Lcom/android/server/input/InputManagerService;->setBlockDeviceMode(ZIZLjava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTouchScreenOn(), TSP already enabled by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iget-object v2, v2, Lcom/android/server/desktopmode/DesktopModeService$Enabler;->tag:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const-string/jumbo v3, "DeX"

    invoke-virtual {v2, v5, v5, v5, v3}, Lcom/android/server/input/InputManagerService;->setBlockDeviceMode(ZIZLjava/lang/String;)V

    goto :goto_0

    :cond_6
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTouchScreenOn(), tag not matched; REQUESTED: {tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ACQUIRING: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setTouchScreenOn(), TSP already disabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterStateCallback(Lcom/samsung/android/desktopmode/IDesktopModeCallback;)Z
    .locals 3

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public writeDataToDock(I)Z
    .locals 1

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeNative;->writeDevice(I)Z

    move-result v0

    return v0
.end method
