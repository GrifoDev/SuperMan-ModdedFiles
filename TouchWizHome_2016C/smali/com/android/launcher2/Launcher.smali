.class public final Lcom/android/launcher2/Launcher;
.super Landroid/app/ActivityGroup;
.source "Launcher.java"

# interfaces
.implements Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/launcher2/LauncherModel$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Launcher$VirtualScreenHandler;,
        Lcom/android/launcher2/Launcher$CompressTask;,
        Lcom/android/launcher2/Launcher$ActivityResultCallback;,
        Lcom/android/launcher2/Launcher$WidgetAddInfo;,
        Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/android/launcher2/Launcher$StateAnimatorProvider;,
        Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;,
        Lcom/android/launcher2/Launcher$HardwareKeys;
    }
.end annotation


# static fields
.field public static final ACTION_EDGE_HANDLE_STATE:Ljava/lang/String; = "com.sec.android.launcher.action.EDGE_HANDLE_STATE"

.field private static final ACTION_HOME_MODE:Ljava/lang/String; = "com.android.launcher.action.HOME_MODE_CHANGE"

.field static final ADD_TOAST_POPUP_DISMISSED_KEY:Ljava/lang/String; = "add.toast.popup.dismissed.key"

.field private static final A_DAY_IN_MILLIS:J = 0x5265c00L

.field public static final DARK_TEXT_COLOR:I = 0x1

.field private static final DEBUGGABLE:Z

.field private static final DEBUG_ADD_WIDGET_VIA_INTENT:Z = false

.field private static final DEBUG_ADD_WIDGET_VIA_INTENT_TAG:Ljava/lang/String; = "Launcher.AddWidgetViaIntent"

.field static final DISABLE_TOAST_POPUP_DISMISSED_KEY:Ljava/lang/String; = "disable.toast.popup.dismissed.key"

.field static final DUMP_STATE_PROPERTY:Ljava/lang/String; = "launcher_dump_state"

.field public static EXIT_ALL_APPS_TRANSITION_DURATION:J = 0x0L

.field public static final EXTRA_ENTER_SCREEN_GRID:Ljava/lang/String; = "extra_enter_screen_grid"

.field private static final EXTRA_HOME_VIEW_HIDDEN:Ljava/lang/String; = "extra_home_view_hidden"

.field private static final EXTRA_LAUNCHER_ACTION:Ljava/lang/String; = "sec.android.intent.extra.LAUNCHER_ACTION"

.field private static final EXTRA_MENU_WIDGETS_SHOWN:Ljava/lang/String; = "extra_menu_widgets_shown"

.field public static HIDE_WIDGETS_TRANSITION_DURATION:J = 0x0L

.field public static INDEX_OF_ZEROPAGE:I = 0x0

.field private static final LAUNCHER_ACTION_ALL_APPS:Ljava/lang/String; = "com.android.launcher2.ALL_APPS"

.field private static final LAUNCHER_ACTION_IDLE:Ljava/lang/String; = "com.android.launcher2.IDLE"

.field public static final LAUNCHER_SYSTEM_UI_FLAG_LIGHT_STATUS_BAR:I = 0x2000

.field public static final LAUNCHER_THEME_ACTION:Ljava/lang/String; = "com.sec.android.intent.action.THEME_CHOOSER"

.field public static final LIGHT_TEXT_COLOR:I = 0x0

.field public static final MANAGED_USER_PREFERENCES_KEY:Ljava/lang/String; = "com.sec.android.app.launcher.managedusers.prefs"

.field public static NEXT_INDEX_OF_ZEROPAGE:I = 0x0

.field public static final PREFERENCES:Ljava/lang/String; = "com.sec.android.app.launcher.prefs"

.field public static final PREFERENCES_NEED_DARK_FONT:Ljava/lang/String; = "need_dark_font"

.field public static final PREFERENCES_NEED_DARK_STATUSBAR:Ljava/lang/String; = "need_dark_statusbar"

.field public static final REQUEST_CODE_APP_HIDE:I = 0x73

.field public static final REQUEST_CODE_APP_UNHIDE:I = 0x74

.field public static final REQUEST_CODE_FOLDER_LOCK:I = 0x70

.field public static final REQUEST_CODE_FOLDER_UNLOCK:I = 0x71

.field private static final REQUEST_CODE_UNINSTALL_PACKAGE:I = 0x6f

.field public static final REQUEST_CODE_VOICE_RECOGNITION:I = 0x72

.field static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field public static SEC_PRODUCT_FEATURE_LAUNCHER_KITKAT_ADD_TO_HOMESCREEN_CONCEPT:Z = false

.field private static final SETTINGS_SYSTEMUI_TRANSPARENCY:Ljava/lang/String; = "android.wallpaper.settings_systemui_transparency"

.field private static final SETTINGS_WALLPAPER_TILT_STATUS:Ljava/lang/String; = "wallpaper_tilt_status"

.field public static SHOW_ALL_APPS_TRANSITION_DURATION:J = 0x0L

.field public static final SHOW_BUTTON_BACKGROUND:Ljava/lang/String; = "show_button_background"

.field public static SHOW_WIDGETS_TRANSITION_DURATION:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "Launcher"

.field public static UseQwertyKeypad:Z = false

.field private static final VERIFICATION_TAG:Ljava/lang/String; = "VerificationLog"

.field private static final VIRTUAL_SCREEN_THREAD_EXIT_DELAY:I = 0xbb8

.field private static final WAS_IN_QUICK_VIEW:Ljava/lang/String; = "was_in_quick_view"

.field static final ZERO_FILE_PATH:Ljava/lang/String; = "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/briefing.jpg"

.field static final ZERO_FOLDER_PATH:Ljava/lang/String; = "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/"

.field static dragstate:Lcom/android/launcher2/DragState;

.field public static isSystemAppDisable:Z

.field public static isZeropageDual:Z

.field public static iszerofile:Z

.field private static launcher:Lcom/android/launcher2/Launcher;

.field public static mBackToSetting:Z

.field public static mCaptureZeropage:Z

.field private static mCaptureflag:Z

.field public static mChangeMobileKeyboard:Z

.field private static mDragEndCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static mIsBabyCryingEnable:I

.field public static mIsDoorbellEnable:I

.field private static mIsEnableHighContrast:Z

.field public static mIsRestartModeChange:Z

.field public static mIsStartSetting:Z

.field private static mMobileKeyboardConfig:I

.field public static mPackageTobeDisabled:Ljava/lang/String;

.field private static mPendingIntent:Landroid/content/Intent;

.field public static mRemovableAppItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mRemovableCustomerAppItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mRemovablePreloadAppItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mRequestDialog:Landroid/app/AlertDialog;

.field private static mScreenBitmap:Landroid/graphics/Bitmap;

.field public static mSettingActivityName:Ljava/lang/String;

.field public static mSettingPackageName:Ljava/lang/String;

.field public static mStartZeorpageByIndicator:Z

.field public static mThemeWarningDialog:Landroid/app/AlertDialog;

.field public static mUpdatePage:Z

.field public static mUseAtoZButton:Z

.field private static mVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

.field public static sActivityOrientation:I

.field public static sDisableOrUninstallAppFromApps:Z

.field private static sHwPopupMenuShowing:Z

.field public static sInComingIntentHelpHub:Landroid/content/Intent;

.field public static sIsConfigChanged:Z

.field public static sIsFestivalModeOn:Z

.field private static sIsHomeEditMode:Z

.field public static sIsNeedDarkColor:Z

.field public static sIsRtl:Z

.field static sMenuBgDarkenAmountNormal:F

.field private static sPopupMenuShowing:Z

.field public static sSoftKeySize:I

.field public static sViewLayerPaint:Landroid/graphics/Paint;

.field public static savedBaseItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field public static savedItemView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityName:Landroid/content/ComponentName;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAnimatedRotationHelper:Lcom/android/launcher2/ar/ARHelper;

.field private mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

.field private mAppsOptionsMenu:Landroid/view/Menu;

.field public mAttached:Z

.field private mAutoRestart:Z

.field private mBabyCryingDetector:Landroid/database/ContentObserver;

.field private mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

.field private mChangeCallAppReceiver:Lcom/android/launcher2/ChangeCallAppReceiver;

.field private final mChangeShowButtonBackgroundObserver:Landroid/database/ContentObserver;

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mCompressTask:Lcom/android/launcher2/Launcher$CompressTask;

.field private mDarkenView:Landroid/view/View;

.field private mDateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDoorbellDetector:Landroid/database/ContentObserver;

.field private mExitingAllApps:Z

.field private mFestivalPageManager:Lcom/android/launcher2/FestivalPageManager;

.field private mFirstAppsAnim:Z

.field private mFirstWidgetsAnim:Z

.field private mGameHomeManager:Lcom/android/launcher2/gamehome/GameHomeManager;

.field private mHasFocus:Z

.field private mHasMenuKey:Z

.field private mHomeBlurView:Landroid/view/View;

.field mHomeView:Lcom/android/launcher2/HomeView;

.field private mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

.field private mIconTrayChangedReceiver:Landroid/content/BroadcastReceiver;

.field public mIconTrayEnabled:Z

.field mInMenu:Z

.field private mIsDestroyed:Z

.field private mIsSettingForIconTrayChanged:Z

.field private mLockedFolderIconView:Lcom/android/launcher2/FolderIconView;

.field private mLockedViewFromDrag:Landroid/view/View;

.field private mMarketLabelName:Ljava/lang/CharSequence;

.field private mMenuButtonView:Landroid/view/View;

.field private mMenuView:Lcom/android/launcher2/MenuView;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mOnResumeNeedsLoad:Z

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPaused:Z

.field private mPendingIntentForCalendar:Landroid/app/PendingIntent;

.field private mPeopleEdgeChangeReceiver:Lcom/sec/dtl/launcher/PeopleEdgeChangeReceiver;

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

.field private mPrevOrientationHelp:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field public mRemainSavedInstance:Z

.field private mRemoveReadyItem:Lcom/android/launcher2/BaseItem;

.field private mRestoring:Z

.field private mResumed:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShowEmptyPageMsg:Z

.field private mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private mStateAnimatorProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Launcher$StateAnimatorProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mStateBeforeClick:Lcom/android/launcher2/Workspace$State;

.field private mStoped:Z

.field public mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

.field private mTransitionAnimator:Landroid/animation/Animator;

.field private mTransitioningToAllApps:Z

.field private mUninstallIntentSent:Z

.field protected mVirtualScreenHandler:Lcom/android/launcher2/Launcher$VirtualScreenHandler;

.field protected mVirtualScreenThread:Landroid/os/HandlerThread;

.field private mVirtualScreenThreadExitAlarm:Lcom/android/launcher2/Alarm;

.field private mWallpaperBlurView:Landroid/view/View;

.field private mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

.field public mWallpaperTiltSettingEnabled:Z

.field private mWidgetAddInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Launcher$WidgetAddInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mWidgetsTabShown:Z

.field private mWindowToken:Landroid/os/IBinder;

.field private mZeroPageScreenshotsObserver:Landroid/os/FileObserver;

.field private mZeropageStarting:Z

.field private pressHomeKeyInLauncher:Z

.field private wallpaperTiltSettingChanged:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-wide/16 v6, 0x10e

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-object v4, Lcom/android/launcher2/Launcher;->launcher:Lcom/android/launcher2/Launcher;

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->mStartZeorpageByIndicator:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->mCaptureZeropage:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->iszerofile:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->mUpdatePage:Z

    sput v2, Lcom/android/launcher2/Launcher;->INDEX_OF_ZEROPAGE:I

    sput v3, Lcom/android/launcher2/Launcher;->NEXT_INDEX_OF_ZEROPAGE:I

    sput-boolean v2, Lcom/android/launcher2/Launcher;->mIsStartSetting:Z

    const-string v0, ""

    sput-object v0, Lcom/android/launcher2/Launcher;->mSettingPackageName:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/launcher2/Launcher;->mSettingActivityName:Ljava/lang/String;

    sput-boolean v2, Lcom/android/launcher2/Launcher;->mBackToSetting:Z

    sput-boolean v3, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    sput-boolean v3, Lcom/android/launcher2/Launcher;->sDisableOrUninstallAppFromApps:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->mRemovablePreloadAppItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->mRemovableCustomerAppItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->mRemovableAppItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->mDragEndCallbacks:Ljava/util/ArrayList;

    const-string v0, ""

    sput-object v0, Lcom/android/launcher2/Launcher;->mPackageTobeDisabled:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->savedItemView:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->savedBaseItem:Ljava/util/ArrayList;

    sput-boolean v2, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    sput v2, Lcom/android/launcher2/Launcher;->sSoftKeySize:I

    sput-object v4, Lcom/android/launcher2/Launcher;->mRequestDialog:Landroid/app/AlertDialog;

    sput-object v4, Lcom/android/launcher2/Launcher;->mThemeWarningDialog:Landroid/app/AlertDialog;

    sput-wide v6, Lcom/android/launcher2/Launcher;->SHOW_ALL_APPS_TRANSITION_DURATION:J

    sput-wide v6, Lcom/android/launcher2/Launcher;->EXIT_ALL_APPS_TRANSITION_DURATION:J

    const-wide/16 v0, 0x16e

    sput-wide v0, Lcom/android/launcher2/Launcher;->SHOW_WIDGETS_TRANSITION_DURATION:J

    const-wide/16 v0, 0x14d

    sput-wide v0, Lcom/android/launcher2/Launcher;->HIDE_WIDGETS_TRANSITION_DURATION:J

    sput-object v4, Lcom/android/launcher2/Launcher;->mScreenBitmap:Landroid/graphics/Bitmap;

    sput-boolean v2, Lcom/android/launcher2/Launcher;->mCaptureflag:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsHomeEditMode:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->UseQwertyKeypad:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/launcher2/Launcher;->mMobileKeyboardConfig:I

    sput-boolean v2, Lcom/android/launcher2/Launcher;->mChangeMobileKeyboard:Z

    sput-object v4, Lcom/android/launcher2/Launcher;->mVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    sput-boolean v2, Lcom/android/launcher2/Launcher;->isZeropageDual:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->mUseAtoZButton:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->SEC_PRODUCT_FEATURE_LAUNCHER_KITKAT_ADD_TO_HOMESCREEN_CONCEPT:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsConfigChanged:Z

    sput v2, Lcom/android/launcher2/Launcher;->sActivityOrientation:I

    sput v2, Lcom/android/launcher2/Launcher;->mIsBabyCryingEnable:I

    sput v2, Lcom/android/launcher2/Launcher;->mIsDoorbellEnable:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v0, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sput-boolean v2, Lcom/android/launcher2/Launcher;->mIsRestartModeChange:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/app/ActivityGroup;-><init>(Z)V

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mZeropageStarting:Z

    new-instance v0, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v3}, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mRemainSavedInstance:Z

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mStateBeforeClick:Lcom/android/launcher2/Workspace$State;

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mAutoRestart:Z

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mStoped:Z

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mResumed:Z

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mWindowToken:Landroid/os/IBinder;

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWallpaperTiltSettingEnabled:Z

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mPeopleEdgeChangeReceiver:Lcom/sec/dtl/launcher/PeopleEdgeChangeReceiver;

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->pressHomeKeyInLauncher:Z

    iput v2, p0, Lcom/android/launcher2/Launcher;->mPrevOrientationHelp:I

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mFirstAppsAnim:Z

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mFirstWidgetsAnim:Z

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mHasFocus:Z

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mGameHomeManager:Lcom/android/launcher2/gamehome/GameHomeManager;

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mIconTrayEnabled:Z

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mIsSettingForIconTrayChanged:Z

    new-instance v0, Lcom/android/launcher2/Launcher$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$2;-><init>(Lcom/android/launcher2/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->wallpaperTiltSettingChanged:Landroid/database/ContentObserver;

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    new-instance v0, Lcom/android/launcher2/Launcher$11;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$11;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetAddInfo:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mUninstallIntentSent:Z

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mRemoveReadyItem:Lcom/android/launcher2/BaseItem;

    new-instance v0, Lcom/android/launcher2/Launcher$24;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$24;-><init>(Lcom/android/launcher2/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mBabyCryingDetector:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/launcher2/Launcher$25;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$25;-><init>(Lcom/android/launcher2/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mDoorbellDetector:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/launcher2/Launcher$30;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$30;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/launcher2/Launcher$31;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$31;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mIconTrayChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/launcher2/Launcher$32;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$32;-><init>(Lcom/android/launcher2/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mChangeShowButtonBackgroundObserver:Landroid/database/ContentObserver;

    sput-object p0, Lcom/android/launcher2/Launcher;->launcher:Lcom/android/launcher2/Launcher;

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launcher ctor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/ShadowStyleable;->init()V

    return-void
.end method

.method private AllWidgetCount()I
    .locals 2

    new-instance v0, Lcom/android/launcher2/AvailableAppWidgetListProvider;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AvailableAppWidgetListProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/launcher2/AvailableAppWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    invoke-direct {v1, p0}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private BitmapCompress()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/launcher2/Launcher;->mCaptureZeropage:Z

    sget-object v0, Lcom/android/launcher2/Launcher;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->cancelCompressTask()V

    new-instance v0, Lcom/android/launcher2/Launcher$CompressTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$CompressTask;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mCompressTask:Lcom/android/launcher2/Launcher$CompressTask;

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mCompressTask:Lcom/android/launcher2/Launcher$CompressTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher$CompressTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private acceptFilter()Z
    .locals 2

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Launcher;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/Launcher;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->AllWidgetCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/Launcher;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mWindowToken:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->mCaptureflag:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/launcher2/Launcher;->mCaptureflag:Z

    return p0
.end method

.method static synthetic access$1300()Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/android/launcher2/Launcher;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/launcher2/Launcher;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mZeropageStarting:Z

    return p1
.end method

.method static synthetic access$1600()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setIconTrayIfNeeded()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Alarm;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mVirtualScreenThreadExitAlarm:Lcom/android/launcher2/Alarm;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/Launcher;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->finishShowAllApps()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->finishExitAllApps()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popup/PopupMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/launcher2/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method private addRemovableAppToList()V
    .locals 14

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v9, Ljava/io/File;

    const-string v10, "/system/etc/removable_preload.txt"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_5

    :try_start_1
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    const-string v10, "name="

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "name=\'"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "\'"

    const-string v11, ""

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v10, Lcom/android/launcher2/Launcher;->mRemovableAppItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v2

    move-object v4, v5

    move-object v6, v7

    :goto_1
    :try_start_4
    const-string v10, "Launcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addRemovableAppToList FileNotFoundException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_1

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_2
    return-void

    :cond_4
    move-object v1, v2

    move-object v4, v5

    :cond_5
    if-eqz v7, :cond_6

    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_8
    move-object v6, v7

    goto :goto_2

    :catch_1
    move-exception v3

    sget-boolean v10, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v10, :cond_9

    const-string v10, "Launcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addRemovableAppToList close IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object v6, v7

    goto :goto_2

    :catch_2
    move-exception v3

    sget-boolean v10, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v10, :cond_3

    const-string v10, "Launcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addRemovableAppToList close IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    move-exception v3

    :goto_3
    :try_start_7
    const-string v10, "Launcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addRemovableAppToList IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v6, :cond_a

    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    :cond_b
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception v3

    sget-boolean v10, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v10, :cond_3

    const-string v10, "Launcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addRemovableAppToList close IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v6, :cond_c

    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_e
    :goto_5
    throw v10

    :catch_5
    move-exception v3

    sget-boolean v11, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v11, :cond_e

    const-string v11, "Launcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addRemovableAppToList close IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception v10

    move-object v6, v7

    goto :goto_4

    :catchall_2
    move-exception v10

    move-object v4, v5

    move-object v6, v7

    goto :goto_4

    :catchall_3
    move-exception v10

    move-object v1, v2

    move-object v4, v5

    move-object v6, v7

    goto :goto_4

    :catch_6
    move-exception v3

    move-object v6, v7

    goto/16 :goto_3

    :catch_7
    move-exception v3

    move-object v4, v5

    move-object v6, v7

    goto/16 :goto_3

    :catch_8
    move-exception v3

    move-object v1, v2

    move-object v4, v5

    move-object v6, v7

    goto/16 :goto_3

    :catch_9
    move-exception v3

    goto/16 :goto_1

    :catch_a
    move-exception v3

    move-object v6, v7

    goto/16 :goto_1

    :catch_b
    move-exception v3

    move-object v4, v5

    move-object v6, v7

    goto/16 :goto_1
.end method

.method private addRemovableCustomerAppToList()V
    .locals 15

    const/4 v14, 0x1

    const-string v0, "removablecustomerapps"

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v9, "/system/csc/default_removablecustomerapp_list.xml"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_1

    new-instance v2, Ljava/io/FileReader;

    const-string v9, "/system/csc/default_removablecustomerapp_list.xml"

    invoke-direct {v2, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    :goto_0
    if-eqz v7, :cond_4

    :try_start_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    :goto_1
    if-eq v5, v14, :cond_5

    const/4 v9, 0x4

    if-ne v5, v9, :cond_0

    sget-object v9, Lcom/android/launcher2/Launcher;->mRemovableCustomerAppItems:Ljava/util/ArrayList;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07000d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v9, "removablecustomerapps"

    invoke-static {v8, v9}, Lcom/android/launcher2/LauncherProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    move-object v7, v8

    goto :goto_0

    :cond_2
    const-string v9, "Launcher"

    const-string v10, "addRemovableCustomerAppToList resParser is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :goto_2
    :try_start_3
    const-string v9, "Launcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addRemovableCustomerAppToList XmlPullParserException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_3
    return-void

    :cond_4
    :try_start_5
    const-string v9, "Launcher"

    const-string v10, "addRemovableCustomerAppToList parser is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    const-string v9, "Launcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addRemovableCustomerAppToList close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v4

    const-string v9, "Launcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addRemovableCustomerAppToList close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception v4

    :goto_4
    :try_start_7
    const-string v9, "Launcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addRemovableCustomerAppToList IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_3

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    :catch_4
    move-exception v4

    const-string v9, "Launcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addRemovableCustomerAppToList close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :cond_6
    :goto_6
    throw v9

    :catch_5
    move-exception v4

    const-string v10, "Launcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addRemovableCustomerAppToList close IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_1
    move-exception v9

    move-object v1, v2

    goto :goto_5

    :catch_6
    move-exception v4

    move-object v1, v2

    goto :goto_4

    :catch_7
    move-exception v4

    move-object v1, v2

    goto/16 :goto_2
.end method

.method private addRemovablePreloadAppToList()V
    .locals 15

    const/4 v14, 0x1

    const-string v0, "removablepreloadapps"

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v9, "/system/csc/default_removablepreloadapp_list.xml"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_1

    new-instance v2, Ljava/io/FileReader;

    const-string v9, "/system/csc/default_removablepreloadapp_list.xml"

    invoke-direct {v2, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    :goto_0
    if-eqz v7, :cond_4

    :try_start_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    :goto_1
    if-eq v5, v14, :cond_5

    const/4 v9, 0x4

    if-ne v5, v9, :cond_0

    sget-object v9, Lcom/android/launcher2/Launcher;->mRemovablePreloadAppItems:Ljava/util/ArrayList;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07000e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v9, "removablepreloadapps"

    invoke-static {v8, v9}, Lcom/android/launcher2/LauncherProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    move-object v7, v8

    goto :goto_0

    :cond_2
    const-string v9, "Launcher"

    const-string v10, "addRemovablePreloadAppToList resParser is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :goto_2
    :try_start_3
    const-string v9, "Launcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addRemovablePreloadAppToList XmlPullParserException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_3
    return-void

    :cond_4
    :try_start_5
    const-string v9, "Launcher"

    const-string v10, "addRemovablePreloadAppToList parser is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    sget-boolean v9, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v9, :cond_3

    const-string v9, "Launcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addRemovablePreloadAppToList close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v4

    sget-boolean v9, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v9, :cond_3

    const-string v9, "Launcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addRemovablePreloadAppToList close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception v4

    :goto_4
    :try_start_7
    const-string v9, "Launcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addRemovablePreloadAppToList IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_3

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    :catch_4
    move-exception v4

    sget-boolean v9, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v9, :cond_3

    const-string v9, "Launcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addRemovablePreloadAppToList close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :cond_6
    :goto_6
    throw v9

    :catch_5
    move-exception v4

    sget-boolean v10, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v10, :cond_6

    const-string v10, "Launcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addRemovablePreloadAppToList close IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_1
    move-exception v9

    move-object v1, v2

    goto :goto_5

    :catch_6
    move-exception v4

    move-object v1, v2

    goto :goto_4

    :catch_7
    move-exception v4

    move-object v1, v2

    goto/16 :goto_2
.end method

.method private backupItemFromLockedFolder()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    invoke-virtual {v13}, Lcom/android/launcher2/BackupItemsRecords;->getFolderView()Lcom/android/launcher2/FolderIconView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/FolderItem;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    invoke-virtual {v13}, Lcom/android/launcher2/BackupItemsRecords;->getBaseItem()Lcom/android/launcher2/BaseItem;

    move-result-object v6

    instance-of v13, v8, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v13, :cond_5

    move-object v10, v8

    check-cast v10, Lcom/android/launcher2/HomeFolderItem;

    instance-of v13, v6, Lcom/android/launcher2/AppItem;

    if-eqz v13, :cond_1

    invoke-interface {v8}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-interface {v8, v13}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v11

    invoke-interface {v8, v11}, Lcom/android/launcher2/FolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    check-cast v11, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v10}, Lcom/android/launcher2/HomeFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v5

    const/4 v12, 0x0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/HomeItem;

    iget-wide v14, v9, Lcom/android/launcher2/HomeItem;->mId:J

    iget-wide v0, v6, Lcom/android/launcher2/BaseItem;->mId:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_2

    move-object v12, v9

    :cond_3
    if-eqz v12, :cond_0

    instance-of v13, v6, Lcom/android/launcher2/HomeItem;

    if-eqz v13, :cond_0

    move-object v7, v6

    check-cast v7, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    invoke-virtual {v13}, Lcom/android/launcher2/BackupItemsRecords;->IsFromMoveApp()Z

    move-result v13

    if-nez v13, :cond_4

    invoke-interface {v8, v12}, Lcom/android/launcher2/FolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/launcher2/Launcher;->backupItemInHome(Lcom/android/launcher2/HomeItem;)V

    goto :goto_0

    :cond_4
    invoke-interface {v8, v12}, Lcom/android/launcher2/FolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    invoke-virtual {v13}, Lcom/android/launcher2/BackupItemsRecords;->getItemInMoveApp()I

    move-result v13

    iput v13, v7, Lcom/android/launcher2/HomeItem;->mScreen:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/IconMoveContainer;->getContent()Lcom/android/launcher2/CellLayoutMoveApps;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/android/launcher2/CellLayoutMoveApps;->addItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_0

    :cond_5
    instance-of v13, v8, Lcom/android/launcher2/AppFolderItem;

    if-eqz v13, :cond_0

    move-object v3, v8

    check-cast v3, Lcom/android/launcher2/AppFolderItem;

    move-object v7, v6

    check-cast v7, Lcom/android/launcher2/AppItem;

    invoke-virtual {v3}, Lcom/android/launcher2/AppFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v4

    const/4 v12, 0x0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget-wide v14, v2, Lcom/android/launcher2/AppItem;->mId:J

    iget-wide v0, v7, Lcom/android/launcher2/AppItem;->mId:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_6

    move-object v12, v2

    :cond_7
    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lcom/android/launcher2/Launcher;->backupItemsInMenu(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/AppFolderItem;)V

    goto/16 :goto_0
.end method

.method private backupItemInHome(Lcom/android/launcher2/HomeItem;)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/HomeItem;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/HomeItem;

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    invoke-virtual {v2}, Lcom/android/launcher2/BackupItemsRecords;->getX()I

    move-result v2

    iput v2, v14, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    invoke-virtual {v2}, Lcom/android/launcher2/BackupItemsRecords;->getY()I

    move-result v2

    iput v2, v14, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    invoke-virtual {v2}, Lcom/android/launcher2/BackupItemsRecords;->getScreen()I

    move-result v2

    iput v2, v14, Lcom/android/launcher2/HomeItem;->mScreen:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    invoke-virtual {v2}, Lcom/android/launcher2/BackupItemsRecords;->getContainer()J

    move-result-wide v2

    iput-wide v2, v14, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    invoke-virtual {v2}, Lcom/android/launcher2/BackupItemsRecords;->IsInFolder()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v13, 0x0

    iget-wide v2, v14, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v15

    iget-object v9, v15, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    invoke-virtual {v2}, Lcom/android/launcher2/BackupItemsRecords;->getScreen()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/android/launcher2/CellLayoutHotseat;->getCellXFromPos(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    invoke-virtual {v2}, Lcom/android/launcher2/BackupItemsRecords;->getScreen()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/android/launcher2/CellLayoutHotseat;->getCellYFromPos(I)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher2/CellLayoutHotseat;->getChildAt(II)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v2, :cond_3

    move-object/from16 v13, v16

    check-cast v13, Lcom/android/launcher2/FolderIconView;

    :cond_2
    :goto_1
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/FolderItem;

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v2

    iput-wide v2, v14, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/launcher2/Launcher;->dropItemToFolder(Lcom/android/launcher2/FolderIconView;Lcom/android/launcher2/HomeItem;)V

    goto :goto_0

    :cond_3
    new-instance v12, Lcom/android/launcher2/DragState;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;)V

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v3, v4}, Lcom/android/launcher2/DragState;->createHomeFolderFromDragItem(Lcom/android/launcher2/BaseItem;ZZ)Lcom/android/launcher2/FolderIconView;

    move-result-object v13

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v17

    iget v2, v14, Lcom/android/launcher2/HomeItem;->mScreen:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    iget v2, v14, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v3, v14, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v2, :cond_5

    move-object/from16 v13, v16

    check-cast v13, Lcom/android/launcher2/FolderIconView;

    goto :goto_1

    :cond_5
    new-instance v12, Lcom/android/launcher2/DragState;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;)V

    iget v2, v14, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v3, v14, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher2/CellLayout;->getItemAt(II)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v3, v4}, Lcom/android/launcher2/DragState;->createHomeFolderFromDragItem(Lcom/android/launcher2/BaseItem;ZZ)Lcom/android/launcher2/FolderIconView;

    move-result-object v13

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object v3, v14

    check-cast v3, Lcom/android/launcher2/HomeShortcutItem;

    iget-wide v4, v14, Lcom/android/launcher2/HomeItem;->container:J

    iget v6, v14, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget v7, v14, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v8, v14, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher2/HomeView;->completeAddShortcut(Lcom/android/launcher2/HomeShortcutItem;JIII)V

    goto/16 :goto_0
.end method

.method private backupItemsInMenu(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/AppFolderItem;)V
    .locals 11

    move-object v0, p1

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    invoke-virtual {v8}, Lcom/android/launcher2/BackupItemsRecords;->getCell()I

    move-result v8

    iput v8, v0, Lcom/android/launcher2/AppItem;->mCell:I

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    invoke-virtual {v8}, Lcom/android/launcher2/BackupItemsRecords;->getScreen()I

    move-result v8

    iput v8, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    invoke-virtual {v8}, Lcom/android/launcher2/BackupItemsRecords;->IsInFolder()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    invoke-virtual {v8}, Lcom/android/launcher2/BackupItemsRecords;->getScreen()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/launcher2/MenuAppsGrid;->getOrCreatePageAt(I)Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v2

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    invoke-virtual {v8}, Lcom/android/launcher2/BackupItemsRecords;->getCell()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/launcher2/CellLayoutMenu;->getCellXFromPos(I)I

    move-result v3

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    invoke-virtual {v8}, Lcom/android/launcher2/BackupItemsRecords;->getCell()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/launcher2/CellLayoutMenu;->getCellYFromPos(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/CellLayoutMenu;->getItemAt(II)Lcom/android/launcher2/BaseItem;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AppItem;

    if-eqz v5, :cond_0

    instance-of v8, v5, Lcom/android/launcher2/AppFolderItem;

    if-eqz v8, :cond_0

    move-object v1, v5

    check-cast v1, Lcom/android/launcher2/AppFolderItem;

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    invoke-virtual {v8}, Lcom/android/launcher2/BackupItemsRecords;->getItemInFolder()I

    move-result v8

    invoke-virtual {v1, v0, v8}, Lcom/android/launcher2/AppFolderItem;->addItemAt(Lcom/android/launcher2/BaseItem;I)V

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    :goto_0
    return-void

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    invoke-virtual {v8}, Lcom/android/launcher2/BackupItemsRecords;->getItemInFolder()I

    move-result v8

    iput v8, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    invoke-virtual {v8}, Lcom/android/launcher2/BackupItemsRecords;->getCell()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v6, v9, v10}, Lcom/android/launcher2/MenuAppsGrid;->createFolderFromDrag(ILjava/util/List;ZZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Lcom/android/launcher2/AppFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0
.end method

.method public static bindVirtualScreen()V
    .locals 1

    sget-object v0, Lcom/android/launcher2/Launcher;->mVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/Launcher;->mVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->bindVirtualScreen()Z

    :cond_0
    return-void
.end method

.method private buildWidgetMap(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v4, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    new-instance v5, Lcom/android/launcher2/Launcher$5;

    invoke-direct {v5, p0, p1}, Lcom/android/launcher2/Launcher$5;-><init>(Lcom/android/launcher2/Launcher;Ljava/util/HashMap;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher2/CellLayoutChildren;->iterateBaseItems(Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cancelAppFolderRemoveDialog()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-static {v1}, Lcom/android/launcher2/AppFolderRemoveDialog;->getCurrentInstance(Landroid/app/FragmentManager;)Lcom/android/launcher2/AppFolderRemoveDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderRemoveDialog;->dismiss()V

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderRemoveDialog;->cancelDelete()V

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method private cancelCompressTask()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mCompressTask:Lcom/android/launcher2/Launcher$CompressTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mCompressTask:Lcom/android/launcher2/Launcher$CompressTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher$CompressTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mCompressTask:Lcom/android/launcher2/Launcher$CompressTask;

    :cond_0
    return-void
.end method

.method private changeTextColorIfNeeded(I)V
    .locals 7

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getCurrentTextColor()I

    move-result v1

    if-ne p1, v3, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Lcom/android/launcher2/Workspace;->changeTextColor(II)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Lcom/android/launcher2/Hotseat;->changeTextColor(II)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->saveCurrentTextColor(I)V

    if-eq p1, v1, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher2/HomeView;->setMainHomeScreenshot(Z)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher2/HomeView;->setTakescreenshot(Z)V

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportEmptyMsg()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Lcom/android/launcher2/Workspace;->changeEmptySpaceTextColor(II)V

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportNewColorInvert()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher2/HomeScreenOptionMenu;->changeTextColor(I)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher2/QuickViewDragBar;->changeColor(I)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/HomeView;->changeZeroPageOnOffSwitchTextColor(I)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/android/launcher2/QuickViewWorkspace;->changeColor(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher2/Workspace;->changeColor(I)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getIconAutoAlignLayout()Landroid/widget/FrameLayout;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getIconAutoAlignLayout()Landroid/widget/FrameLayout;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/IconAutoAlign;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/IconAutoAlign;->changeTextColor(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Lcom/android/launcher2/MenuAppsGrid;->changeTextColor(II)V

    :cond_3
    :goto_1
    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0008

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    sput v3, Lcom/android/launcher2/Launcher;->sMenuBgDarkenAmountNormal:F

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getEditBar()Lcom/android/launcher2/HomeEditBar;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher2/HomeEditBar;->changeColor(I)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0e0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v3, :cond_5

    const-string v3, "Launcher"

    const-string v4, "Null Pointer Exception Occurred"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_7
    :try_start_1
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuTitleBarManager;->changeTextColor()V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0003

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    sput v3, Lcom/android/launcher2/Launcher;->sMenuBgDarkenAmountNormal:F
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private clearTypedText()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method private dropItemToFolder(Lcom/android/launcher2/FolderIconView;Lcom/android/launcher2/HomeItem;)V
    .locals 4

    instance-of v2, p2, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, p2

    check-cast v2, Lcom/android/launcher2/HomeShortcutItem;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderItem;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/HomeView;->setStateTargetFolder(Lcom/android/launcher2/FolderItem;)V

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher2/HomeView;->addShortcutItemsIntoExistingFolder(Ljava/util/List;Z)V

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    invoke-virtual {v2}, Lcom/android/launcher2/BackupItemsRecords;->getItemInFolder()I

    move-result v2

    iput v2, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    :cond_0
    return-void
.end method

.method private exitWidgetResizeMode()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    :cond_0
    return-void
.end method

.method private fillInHomeItem(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/Launcher$WidgetAddInfo;[I)V
    .locals 4

    const/4 v1, -0x1

    iget v0, p2, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    :goto_0
    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v0, p2, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    aget v0, p3, v0

    :goto_1
    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    const-wide/16 v2, -0x64

    iput-wide v2, p1, Lcom/android/launcher2/HomeItem;->container:J

    iput v1, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher2/HomeItem;->dropPos:[I

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p1, Lcom/android/launcher2/HomeItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private finishExitAllApps()V
    .locals 6

    const/4 v5, 0x0

    const-string v3, "Launcher"

    const-string v4, "finishExitAllApps"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->onFinishExitAllApps()V

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/launcher2/HomeView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->setVisibility(I)V

    iget-boolean v3, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->captureMainHomeScreenshot()V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Launcher"

    const-string v4, "IllegalStateException should not happen in normal use but may be in stress testing"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method private finishShowAllApps()V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "Launcher"

    const-string v3, "finishShowAllApps"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/MenuView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/HomeView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Workspace;->pauseScreen(IZ)V

    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    if-eqz v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/launcher2/MenuTitleBarManager;->setTitleBarVisibility(I)V

    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const/16 v3, 0x20

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Launcher"

    const-string v3, "IllegalStateException should not happen in normal use but may be in stress testing"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getEnableHighContrast()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->mIsEnableHighContrast:Z

    return v0
.end method

.method public static getInstance()Lcom/android/launcher2/Launcher;
    .locals 2

    sget-object v0, Lcom/android/launcher2/Launcher;->launcher:Lcom/android/launcher2/Launcher;

    if-nez v0, :cond_0

    const-string v0, "Launcher"

    const-string v1, "Please Call me after onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/launcher2/Launcher;->launcher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method private getMidnightInMillis()J
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getOffset()Landroid/graphics/Point;
    .locals 1

    sget-object v0, Lcom/android/launcher2/Launcher;->mVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/Launcher;->mVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->getOffset()Landroid/graphics/Point;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStatusBarHeight(Landroid/content/res/Resources;)I
    .locals 5

    const/4 v1, 0x0

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_0
    return v1
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static isHomeEditMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsHomeEditMode:Z

    return v0
.end method

.method public static isInValidDragState(Landroid/view/DragEvent;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v2, Lcom/android/launcher2/LauncherApplication;->sDNDBinding:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/DragState;

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/DragState;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isMoving()Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/launcher2/Launcher;->mVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/Launcher;->launcher:Lcom/android/launcher2/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/Launcher;->mVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->isMoving()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isOptionMenuShowing()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPopupMenuShowing()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    return v0
.end method

.method private static isPropertyEnabled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private processAsAndroidAppWidget(Lcom/android/launcher2/Launcher$WidgetAddInfo;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v5, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v1, Lcom/android/launcher2/HomePendingWidget;

    invoke-direct {v1, v2, v6, v6}, Lcom/android/launcher2/HomePendingWidget;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget v4, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    iget v5, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForAppWidget(Landroid/appwidget/AppWidgetProviderInfo;II[I)[I

    move-result-object v0

    invoke-direct {p0, v1, p1, v0}, Lcom/android/launcher2/Launcher;->fillInHomeItem(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/Launcher$WidgetAddInfo;[I)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/HomeView;->addAppWidgetFromDrop(Lcom/android/launcher2/HomePendingWidget;)V

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static removeMsg()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mVirtualScreenHandler:Lcom/android/launcher2/Launcher$VirtualScreenHandler;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mVirtualScreenHandler:Lcom/android/launcher2/Launcher$VirtualScreenHandler;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher$VirtualScreenHandler;->removeMsg()V

    :cond_0
    return-void
.end method

.method public static setCapureFlag(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/launcher2/Launcher;->mCaptureflag:Z

    return-void
.end method

.method static setHomeEditMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/launcher2/Launcher;->sIsHomeEditMode:Z

    return-void
.end method

.method private setIconTrayIfNeeded()V
    .locals 6

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    const-string v4, "tap_to_icon"

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    :goto_0
    iget-boolean v3, p0, Lcom/android/launcher2/Launcher;->mIconTrayEnabled:Z

    if-eq v3, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mIconTrayEnabled:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mIsSettingForIconTrayChanged:Z

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherModel;->forceReload()V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setIconTrayIfNeeded SettingNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setIndicatorTransparency()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xc00

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private setLiveIconUpdate()V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v0, "alarm"

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.action.MIDNIGHT_LIVEICONUPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x8000000

    invoke-static {v7, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingIntentForCalendar:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getMidnightInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mPendingIntentForCalendar:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private setMarketLabel()V
    .locals 7

    const v6, 0x7f09009b

    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mActivityName:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mActivityName:Landroid/content/ComponentName;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    const-string v3, "Launcher"

    const-string v4, "PackageManager is null in setMarketLabel()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMarketLabel NameNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    goto :goto_1

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    if-nez v4, :cond_3

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    :cond_3
    throw v3
.end method

.method public static setOffset(II)Z
    .locals 3

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOffset - offsetX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/launcher2/Launcher;->mVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/Launcher;->mVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->setOffset(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setOffset(IIZ)Z
    .locals 3

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOffset - offsetX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/launcher2/Launcher;->mVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/Launcher;->mVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->setOffset(IIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setOffsetMsg(IIZ)V
    .locals 4

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOffsetMsg - offsetX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", force = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "offsetX"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "force"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mVirtualScreenHandler:Lcom/android/launcher2/Launcher$VirtualScreenHandler;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mVirtualScreenHandler:Lcom/android/launcher2/Launcher$VirtualScreenHandler;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher$VirtualScreenHandler;->setOffset(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static setScreenBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    sput-object p0, Lcom/android/launcher2/Launcher;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private setWallpaperRotation(I)V
    .locals 4

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTransitedRotation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWindowToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateWindowToken()V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher2/Launcher$12;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/Launcher$12;-><init>(Lcom/android/launcher2/Launcher;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private setupAppsOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/AnimationLayer;->areTouchEventsBlocked()Z

    move-result v7

    if-nez v7, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v5, v6

    :cond_1
    :goto_0
    return v5

    :cond_2
    const v7, 0x7f110124

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v7, 0x7f110125

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v7, 0x7f110126

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v7, 0x7f110127

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v7, 0x7f110128

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isVZWModel()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->isCurrentTabAppsTab()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->isCurrentTabAppsTab()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportAlphabeticalOrder()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher2/Utilities;->isSamsungMembersEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->isCurrentTabAppsTab()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportAlphabeticalOrder()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher2/Utilities;->isSamsungMembersEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_6
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private setupOptionsMenu(Landroid/view/Menu;)Z
    .locals 10

    const v9, 0x7f11012a

    const v8, 0x7f110129

    const v7, 0x7f110127

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/AnimationLayer;->areTouchEventsBlocked()Z

    move-result v6

    if-nez v6, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v4, v5

    :cond_1
    :goto_0
    return v4

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSearchBarApps()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets;->hasUninstallableWidgets()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq v6, v7, :cond_4

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets;->hasSearchString()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher2/Utilities;->isSamsungMembersEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_5
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets;->hasUninstallableWidgets()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher2/Utilities;->isSamsungMembersEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->onOptionSelectedSearch()V

    goto :goto_2
.end method

.method private showRequestDialog()V
    .locals 8

    const/4 v7, 0x0

    const v4, 0x7f04003c

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f09001a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f09001d

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1100d0

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f09001b

    new-instance v5, Lcom/android/launcher2/Launcher$27;

    invoke-direct {v5, p0}, Lcom/android/launcher2/Launcher$27;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f09001c

    new-instance v5, Lcom/android/launcher2/Launcher$28;

    invoke-direct {v5, p0}, Lcom/android/launcher2/Launcher$28;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/launcher2/Launcher$29;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Launcher$29;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    sput-object v4, Lcom/android/launcher2/Launcher;->mRequestDialog:Landroid/app/AlertDialog;

    sget-object v4, Lcom/android/launcher2/Launcher;->mRequestDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/launcher2/Launcher;->mRequestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    sget-object v4, Lcom/android/launcher2/Launcher;->mRequestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/launcher2/Launcher;->mRequestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public static startActivityInVirtualScreen(Landroid/content/Context;ZZ)V
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v5, Landroid/content/ComponentName;

    invoke-static {p0}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getsaveZeroPagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getsaveZeroPageClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v5, "fromHome"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "fingerSwipe"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "supportRtl"

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRTLLayout()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;

    invoke-direct {v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;-><init>()V

    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v5, :cond_3

    new-instance v5, Landroid/graphics/Rect;

    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v7, v7, 0x2

    iget v8, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v5, v6, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->bounds:Landroid/graphics/Rect;

    :goto_0
    iget v5, v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    sget v6, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_BASE_ACTIVITY:I

    or-int/2addr v5, v6

    iput v5, v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    iget v5, v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    sget v6, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_ZEROPAGE_POLICY:I

    or-int/2addr v5, v6

    iput v5, v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    if-eqz p1, :cond_0

    iget v5, v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    sget v6, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_CLEAR_TASKS:I

    or-int/2addr v5, v6

    iput v5, v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    :cond_0
    if-eqz p2, :cond_1

    iget v5, v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    sget v6, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_RECREATE_VIRTUALSCREEN:I

    or-int/2addr v5, v6

    iput v5, v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    :cond_1
    sget-object v5, Lcom/android/launcher2/Launcher;->mVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v5, :cond_2

    :try_start_0
    sget-object v5, Lcom/android/launcher2/Launcher;->mVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    neg-int v6, v6

    iget v7, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v5, v6, v9, v9, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->bounds:Landroid/graphics/Rect;

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to launch. intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static startDrag(Landroid/view/View;)Z
    .locals 1

    new-instance v0, Lcom/android/launcher2/ShadowBuilder;

    invoke-direct {v0, p0}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z

    move-result v0

    return v0
.end method

.method public static startDrag(Landroid/view/View;F)Z
    .locals 1

    new-instance v0, Lcom/android/launcher2/ShadowBuilder;

    invoke-direct {v0, p0, p1, p1}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;FF)V

    invoke-static {p0, v0}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z

    move-result v0

    return v0
.end method

.method public static startDrag(Landroid/view/View;FF)Z
    .locals 1

    new-instance v0, Lcom/android/launcher2/ShadowBuilder;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;FF)V

    invoke-static {p0, v0}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z

    move-result v0

    return v0
.end method

.method public static startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Lcom/android/launcher2/DragState;

    invoke-direct {v0, p0}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;)V

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher2/ShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    iget v5, v3, Landroid/graphics/Point;->x:I

    if-ltz v5, :cond_0

    iget v5, v3, Landroid/graphics/Point;->y:I

    if-gez v5, :cond_1

    :cond_0
    const-string v5, "Launcher"

    const-string v6, "Drag shadow touch point must not be negative"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_1
    iget v5, v2, Landroid/graphics/Point;->x:I

    if-ltz v5, :cond_2

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-gez v5, :cond_3

    :cond_2
    const-string v5, "Launcher"

    const-string v6, "Drag shadow dimensions must not be negative"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p0, v5, p1, v0, v4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p1}, Lcom/android/launcher2/DragState;->setShadow(Lcom/android/launcher2/ShadowBuilder;)V

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->onDragStartedSuccessfully()V

    :cond_4
    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start Drag result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    goto :goto_0
.end method

.method private tryQueueWidgetAddViaIntent(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v5, -0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "com.sec.launcher.action.INSTALL_WIDGET"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v7, "com.sec.launcher.intent.extra.COMPONENT"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    new-instance v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;

    const/4 v7, 0x0

    invoke-direct {v1, v7}, Lcom/android/launcher2/Launcher$WidgetAddInfo;-><init>(Lcom/android/launcher2/Launcher$1;)V

    iput-object v2, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    const-string v7, "com.sec.launcher.intent.extra.DUPLICATE"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mAllowDuplicate:Z

    const-string v7, "com.sec.launcher.intent.extra.sizeX"

    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ge v3, v6, :cond_1

    move v3, v5

    :cond_1
    iput v3, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    const-string v7, "com.sec.launcher.intent.extra.sizeY"

    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ge v4, v6, :cond_3

    :goto_0
    iput v5, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWidgetAddInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move v5, v6

    :goto_1
    return v5

    :cond_3
    move v5, v4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static unBindVirtualScreen()V
    .locals 1

    sget-object v0, Lcom/android/launcher2/Launcher;->mVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/Launcher;->mVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->unBindVirtualScreen()Z

    :cond_0
    return-void
.end method

.method private updateWindowToken()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mWindowToken:Landroid/os/IBinder;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAnyPendingWidgetsToWorkspace()V
    .locals 11

    const/4 v10, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->buildWidgetMap(Ljava/util/HashMap;)V

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mWidgetAddInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->isWorkspaceLocked()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mWidgetAddInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;

    iget-boolean v7, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mAllowDuplicate:Z

    if-nez v7, :cond_1

    iget-object v7, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    const v7, 0x7f0900ef

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/android/launcher2/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->processAsAndroidAppWidget(Lcom/android/launcher2/Launcher$WidgetAddInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v7, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bindAppsLoaded()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/launcher2/MenuView;->mMenuAppLoaded:Z

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->appModelLoaded()V

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getWidgetLoader()Lcom/android/launcher2/MenuWidgetsLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgetsLoader;->loadMenuWidgets()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWorkFolder()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/LauncherModel;->afterLoadAllApps(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/FolderLock;->refreshAppFolderItems()V

    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->setBindAppEnd(Z)V

    :cond_2
    return-void
.end method

.method public bindAppsRestoreItemsChange(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid;->updateRestoreItems(Ljava/util/HashSet;)V

    :cond_0
    return-void
.end method

.method public bindBadgeUpdated(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher2/HomeView;->bindHomeItemsUpdated(Ljava/util/List;Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuView;->appBadgeUpdated(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public bindFestivalModeChange(Z)V
    .locals 2

    sput-boolean p1, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->mIsStartSetting:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    goto :goto_0
.end method

.method public bindHomeAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V

    return-void
.end method

.method public bindHomeBegin()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->startBinding()V

    return-void
.end method

.method public bindHomeDeleteFestivalPage(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->deleteWidgetFestivalPage(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->bindHomeDeleteFestivalPage()V

    goto :goto_0
.end method

.method public bindHomeEnd()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->finishBindingItems()V

    const-string v1, "VerificationLog"

    const-string v2, "Executed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/FolderLock;->refreshHomeFolderItems()V

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/launcher2/FolderLock;->setBindHomeEnd(Z)V

    :cond_1
    return-void
.end method

.method public bindHomeFolders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindFolders(Ljava/util/Map;)V

    return-void
.end method

.method public bindHomeInsertFestivalPage()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFestivalPageManager:Lcom/android/launcher2/FestivalPageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFestivalPageManager:Lcom/android/launcher2/FestivalPageManager;

    invoke-virtual {v0}, Lcom/android/launcher2/FestivalPageManager;->getFestivalPageCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->bindHomeInsertFestivalPage()V

    goto :goto_0
.end method

.method public bindHomeItemsRemoved(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    const-string v9, "com.sec.android.app.launcher.prefs"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bindHomeItemsRemoved"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", time : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9, p1}, Lcom/android/launcher2/HomeView;->bindHomeItemsRemoved(Ljava/util/List;)V

    return-void
.end method

.method public bindHomeItemsUpdated(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/HomeView;->bindHomeItemsUpdated(Ljava/util/List;Z)V

    return-void
.end method

.method public bindHomePageAdjust(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindHomePageAdjust(I)V

    return-void
.end method

.method public bindHomePagesUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->bindHomePagesUpdated()V

    return-void
.end method

.method public bindHomeRemoveCurrentItem(Lcom/android/launcher2/HomeFolderItem;Lcom/android/launcher2/HomeItem;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lcom/android/launcher2/HomeFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1, v3}, Lcom/android/launcher2/Workspace;->removeCurrentItem(Lcom/android/launcher2/HomeItem;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/launcher2/Workspace;->removeRemainItems(Ljava/util/List;Lcom/android/launcher2/HomeFolderItem;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p2, v3}, Lcom/android/launcher2/Workspace;->removeCurrentItem(Lcom/android/launcher2/HomeItem;Z)V

    goto :goto_1
.end method

.method public bindHomeRemovePrvItem(Lcom/android/launcher2/HomeItem;)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/Workspace;->removeOldItem(Lcom/android/launcher2/HomeItem;Z)V

    :cond_0
    return-void
.end method

.method public bindHomeShortcut(Lcom/android/launcher2/HomeItem;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindItem(Lcom/android/launcher2/HomeItem;)V

    return-void
.end method

.method public bindHomeShortcuts(Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher2/HomeView;->bindItems(Ljava/util/List;II)V

    return-void
.end method

.method public bindHomeValidationCheck(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->checkItemValidation(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bindHotseatItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher2/HomeView;->sIsBindHotseat:Z

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->resetLayout()V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/HomeView;->bindHotseat(Ljava/util/List;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/HomeView;->sIsBindHotseat:Z

    return-void
.end method

.method public bindIsDragOnGoing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->isStartDragStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bindPackagesChanged(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getWidgetLoader()Lcom/android/launcher2/MenuWidgetsLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgetsLoader;->forceReload(Z)V

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/MenuView;->packagesChanged(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public bindRefreshItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindRefreshItems(Ljava/util/List;)V

    return-void
.end method

.method public bindRestoreItemsChange(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->updateRestoreItems(Ljava/util/HashSet;)V

    return-void
.end method

.method public bindSearchablesChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->updateGlobalSearchIcon()Z

    return-void
.end method

.method public bindWidgetsAfterConfigChange()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->bindWidgetsAfterConfigChange()V

    :cond_0
    return-void
.end method

.method public bindWidgetsRestored(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->widgetsRestored(Ljava/util/ArrayList;)V

    return-void
.end method

.method public callDisableDialog(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;)V
    .locals 12

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    if-eqz v11, :cond_5

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    if-nez v9, :cond_0

    const-string v0, "Launcher"

    const-string v1, "callDisableDialog appinfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :catch_0
    move-exception v10

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callDisableDialog NameNotFoundException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    invoke-virtual {v11, v9}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_1
    if-eqz v9, :cond_3

    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->shouldDisablePopupRepeat()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/DisableAppConfirmationDialog;->createAndShow(Landroid/content/Context;Lcom/android/launcher2/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILandroid/app/FragmentManager;ZLcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v11, v0, v1, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->shouldDisablePopupRepeat()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const/4 v7, 0x1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/DisableAppConfirmationDialog;->createAndShow(Landroid/content/Context;Lcom/android/launcher2/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILandroid/app/FragmentManager;ZLcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/Launcher;->mPackageTobeDisabled:Ljava/lang/String;

    sget-object v0, Lcom/android/launcher2/Launcher;->mPackageTobeDisabled:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->uninstallPackage(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "Launcher"

    const-string v1, "callDisableDialog PackageManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public changeEdgeHandleState(Z)V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isEdgeDevice()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.launcher.action.EDGE_HANDLE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isShow"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public changePageIndicatorColorIfNeeded(I)V
    .locals 4

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher2/PageIndicatorManager;->changePageIndicatorColor(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v2, :cond_0

    const-string v2, "Launcher"

    const-string v3, "Null Pointer Exception Occurred"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public clearDragEndCallBackEvent()V
    .locals 1

    sget-object v0, Lcom/android/launcher2/Launcher;->mDragEndCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public closePopupMenu()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->dismiss()V

    sput-boolean v1, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeOptionsMenu()V

    sput-boolean v1, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    return-void
.end method

.method public closeQuickoptionsPopup()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getCurrentQuickoptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getCurrentQuickoptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickOptionsPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method public createAppsPopupMenu(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not find anchor for menu button."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    new-instance v0, Lcom/android/launcher2/popup/PopupMenu;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/popup/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    new-instance v1, Lcom/android/launcher2/Launcher$15;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$15;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/PopupMenu;->setOnDismissListener(Lcom/android/launcher2/popup/PopupMenu$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsOptionsMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f120000

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppsOptionsMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/popup/PopupMenu;->setOnMenuItemClickListener(Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;)V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsOptionsMenu:Landroid/view/Menu;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->setupAppsOptionsMenu(Landroid/view/Menu;)Z

    return-void
.end method

.method public createPopupMenu(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setMarketLabel()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not find anchor for menu button."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    new-instance v0, Lcom/android/launcher2/popup/PopupMenu;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/popup/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    new-instance v1, Lcom/android/launcher2/Launcher$14;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$14;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/PopupMenu;->setOnDismissListener(Lcom/android/launcher2/popup/PopupMenu$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120001

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/popup/PopupMenu;->setOnMenuItemClickListener(Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;)V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->setupOptionsMenu(Landroid/view/Menu;)Z

    return-void
.end method

.method public deleteScreenBitmap()V
    .locals 1

    sget-object v0, Lcom/android/launcher2/Launcher;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/Launcher;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10

    const v8, 0x7f1100ae

    const v9, 0x7f1100a2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/HomeScreenOptionMenu;->getScreenGridSelectMenu()Lcom/android/launcher2/HomeScreenGridSelectMenu;

    move-result-object v2

    :cond_0
    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->requestFocuseHelpViewBtn()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_e

    if-nez v0, :cond_e

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    :cond_4
    :goto_1
    :sswitch_0
    return v5

    :sswitch_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/HomeScreenOptionMenu;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_1

    :sswitch_2
    move v5, v6

    goto :goto_1

    :sswitch_3
    const-string v5, "launcher_dump_state"

    invoke-static {v5}, Lcom/android/launcher2/Launcher;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->dumpState()V

    move v5, v6

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageReorderingEdit()Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->isActive()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->requestFocus()Z

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/HomeScreenOptionMenu;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/HomeScreenOptionMenu;->requestFocus()Z

    goto :goto_0

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->isShown()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_8
    move v5, v6

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isEmptyPage()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Hotseat;->requestFocus()Z

    move v5, v6

    goto :goto_1

    :sswitch_5
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageReorderingEdit()Z

    move-result v5

    if-eqz v5, :cond_b

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->isActive()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v2}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->requestFocus()Z

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/HomeScreenOptionMenu;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/HomeScreenOptionMenu;->requestFocus()Z

    goto/16 :goto_0

    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->isShown()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_c
    move v5, v6

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isEmptyPage()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Hotseat;->requestFocus()Z

    move v5, v6

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-ne v7, v6, :cond_3

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_6
    move v5, v6

    goto/16 :goto_1

    :sswitch_7
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/HomeScreenOptionMenu;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    goto/16 :goto_1

    :sswitch_8
    iget-boolean v7, p0, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    if-nez v7, :cond_19

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v7

    if-eqz v7, :cond_11

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/launcher2/MenuWidgets;->handleKeyEvent(I)Z

    move-result v7

    if-eqz v7, :cond_f

    move v5, v6

    goto/16 :goto_1

    :cond_f
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq v7, v8, :cond_4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuWidgets;->hasUninstallableWidgets()Z

    move-result v7

    if-nez v7, :cond_10

    invoke-static {p0}, Lcom/android/launcher2/Utilities;->isSamsungMembersEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_10
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const v7, 0x7f110114

    invoke-virtual {v5, v7}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v5}, Lcom/android/launcher2/popup/PopupMenu;->show()V

    sput-boolean v6, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    move v5, v6

    goto/16 :goto_1

    :cond_11
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v7, v8, :cond_12

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v7, v8, :cond_4

    :cond_12
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsGrid;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v7

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsGrid;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_13
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const v7, 0x7f1100a9

    invoke-virtual {v5, v7}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->createAppsPopupMenu(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v5}, Lcom/android/launcher2/popup/PopupMenu;->show()V

    sput-boolean v6, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    move v5, v6

    goto/16 :goto_1

    :cond_14
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v7, v8, :cond_4

    :cond_15
    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v5

    sget-object v7, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v5, v7, :cond_16

    move v5, v6

    goto/16 :goto_1

    :cond_16
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v9, :cond_18

    :cond_17
    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    :cond_18
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->closeFolders()V

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    invoke-direct {p0, v5}, Lcom/android/launcher2/Launcher;->setupOptionsMenu(Landroid/view/Menu;)Z

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v5}, Lcom/android/launcher2/popup/PopupMenu;->dismiss()V

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v5}, Lcom/android/launcher2/popup/PopupMenu;->show()V

    sput-boolean v6, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    move v5, v6

    goto/16 :goto_1

    :cond_19
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_1c

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v5

    sget-object v7, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v5, v7, :cond_1a

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    :cond_1a
    :goto_2
    move v5, v6

    goto/16 :goto_1

    :cond_1b
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    goto :goto_2

    :cond_1c
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/launcher2/MenuWidgets;->handleKeyEvent(I)Z

    move-result v7

    if-eqz v7, :cond_4

    move v5, v6

    goto/16 :goto_1

    :sswitch_9
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->isCurrentTabAppsTab()Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->isFolderOpened()Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v5, v7, :cond_1e

    :cond_1d
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v7, :cond_1f

    :cond_1e
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v5

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/FolderEditText;->setCursorVisible(Z)V

    :cond_1f
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageReorderingEdit()Z

    move-result v5

    if-eqz v5, :cond_21

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->isActive()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual {v2}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->requestFocus()Z

    goto/16 :goto_0

    :cond_20
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/HomeScreenOptionMenu;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/HomeScreenOptionMenu;->requestFocus()Z

    goto/16 :goto_0

    :cond_21
    move v5, v6

    goto/16 :goto_1

    :sswitch_a
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_23

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    if-eqz v1, :cond_22

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_22

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_22
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/HomeScreenOptionMenu;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/HomeScreenOptionMenu;->requestFocus()Z

    goto/16 :goto_0

    :cond_23
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->isCurrentTabAppsTab()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->isFolderOpened()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v5, v7, :cond_24

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v7, :cond_3

    :cond_24
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/FolderEditText;->setCursorVisible(Z)V

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->handleSearchKeycodeEvent()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    goto/16 :goto_1

    :sswitch_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->handleSearchKeycodeEvent()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x17 -> :sswitch_1
        0x19 -> :sswitch_3
        0x42 -> :sswitch_1
        0x52 -> :sswitch_0
        0x3eb -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_6
        0x13 -> :sswitch_9
        0x14 -> :sswitch_9
        0x15 -> :sswitch_9
        0x16 -> :sswitch_9
        0x17 -> :sswitch_7
        0x22 -> :sswitch_c
        0x3d -> :sswitch_a
        0x42 -> :sswitch_7
        0x52 -> :sswitch_8
        0x54 -> :sswitch_b
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mHasFocus:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->isCurrentTabAppsTab()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgets;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    sget-boolean v2, Lcom/android/launcher2/HomeView;->sIsDragState:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->isFolderOpened()Z

    move-result v2

    if-nez v2, :cond_5

    const v2, 0x7f09007a

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public enableVoiceSearch(Landroid/widget/SearchView;)V
    .locals 9

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportVoiceSearch()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "search"

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    :try_start_0
    invoke-virtual {v4, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-static {v6, p1, v7, v8}, Lcom/android/launcher2/Utilities;->spanSearchView(Landroid/content/res/Resources;Landroid/widget/SearchView;Lcom/android/launcher2/MenuView;Lcom/android/launcher2/HomeView;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v6, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableVoiceSearch:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v6, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IllegalStateException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public exitAllApps()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    return-void
.end method

.method public exitAllApps(ZZ)V
    .locals 8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/launcher2/Launcher$8;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Launcher$8;-><init>(Lcom/android/launcher2/Launcher;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/android/launcher2/utils/LiveIconUtils;->getClockPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/utils/LiveIconUtils;->clearLiveIconBitmap(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v3}, Lcom/android/launcher2/popup/PopupMenu;->dismiss()V

    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->onExitAllApps()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    if-eqz v2, :cond_a

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_6
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v3, v4, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    :cond_7
    :goto_1
    if-eqz p2, :cond_c

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, v7}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, v6}, Lcom/android/launcher2/HomeView;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, v6}, Lcom/android/launcher2/HomeView;->setScaleY(F)V

    if-eqz v2, :cond_9

    sget-boolean v3, Lcom/android/launcher2/Launcher;->mIsStartSetting:Z

    if-nez v3, :cond_9

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, v5, v7}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(ZZ)V

    :cond_8
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->isFolderOpened()Z

    move-result v3

    if-eqz v3, :cond_b

    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->setBackgroundDarken(F)V

    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->finishExitAllApps()V

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/launcher2/HomeScreenOptionMenu;->setMakeActive(Z)V

    goto :goto_1

    :cond_b
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->setBackgroundDarken(F)V

    goto :goto_2

    :cond_c
    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, v7}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    if-eqz p1, :cond_d

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, v5, v7}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(ZZ)V

    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->exitAllappsAnimation(Z)V

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v3

    const/16 v4, 0xc8

    invoke-virtual {v3, v7, v4}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurAnimation(ZI)V

    :cond_e
    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const/16 v4, 0x20

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f09007a

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(ILjava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public exitAllappsAnimation(Z)V
    .locals 12

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher$StateAnimatorProvider;

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4, v0}, Lcom/android/launcher2/Launcher$StateAnimatorProvider;->collectExitWidgetListAnimators(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {v4, v0}, Lcom/android/launcher2/Launcher$StateAnimatorProvider;->collectExitAllAppsWithDragAnimators(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    invoke-interface {v4, v0}, Lcom/android/launcher2/Launcher$StateAnimatorProvider;->collectExitAllAppsAnimators(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    if-eqz v7, :cond_4

    if-nez p1, :cond_4

    const v8, 0x7f060017

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v9

    if-eqz v9, :cond_3

    const v8, 0x7f060018

    :cond_3
    invoke-static {p0, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    sget-wide v10, Lcom/android/launcher2/Launcher;->EXIT_ALL_APPS_TRANSITION_DURATION:J

    invoke-virtual {v1, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-wide v2, Lcom/android/launcher2/Launcher;->EXIT_ALL_APPS_TRANSITION_DURATION:J

    sget-boolean v9, Lcom/android/launcher2/HomeScreenOptionMenu;->isWidgetTab:Z

    if-eqz v9, :cond_5

    sget-wide v2, Lcom/android/launcher2/Launcher;->HIDE_WIDGETS_TRANSITION_DURATION:J

    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v9

    long-to-int v10, v2

    invoke-virtual {v9, v10}, Lcom/android/launcher2/LauncherApplication;->acquireTouchBooster(I)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    sget-boolean v9, Lcom/android/launcher2/HomeScreenOptionMenu;->isWidgetTab:Z

    if-eqz v9, :cond_6

    invoke-virtual {v6, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_6
    new-instance v9, Lcom/android/launcher2/Launcher$9;

    invoke-direct {v9, p0}, Lcom/android/launcher2/Launcher$9;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    return-void
.end method

.method public getAnimationLayer()Lcom/android/launcher2/AnimationLayer;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    return-object v0
.end method

.method public getBackupItemsRecords()Lcom/android/launcher2/BackupItemsRecords;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    return-object v0
.end method

.method public getCurrentPageIndex()I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getCurrentPageIndex()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getCurrentTextColor()I
    .locals 3

    const/4 v2, 0x0

    const-string v1, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "need_dark_font"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getFestivalPageManager()Lcom/android/launcher2/FestivalPageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFestivalPageManager:Lcom/android/launcher2/FestivalPageManager;

    return-object v0
.end method

.method public getGameHomeManager()Lcom/android/launcher2/gamehome/GameHomeManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mGameHomeManager:Lcom/android/launcher2/gamehome/GameHomeManager;

    return-object v0
.end method

.method public getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v0

    return-object v0
.end method

.method public getHomeView()Lcom/android/launcher2/HomeView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method

.method getHotseat()Lcom/android/launcher2/Hotseat;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    return-object v0
.end method

.method public getHotwordServiceClient()Lcom/google/android/hotword/client/HotwordServiceClient;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    return-object v0
.end method

.method public getLauncherModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method public getMainWindowToken()Landroid/os/IBinder;
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWindowToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mWindowToken:Landroid/os/IBinder;

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWindowToken:Landroid/os/IBinder;

    return-object v1
.end method

.method public getMenuView()Lcom/android/launcher2/MenuView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    return-object v0
.end method

.method public getPreferredMenuPageIndex()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getPreferredPage()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getQuickViewWorkspaceOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShowEmptyPageMessagePref()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mShowEmptyPageMsg:Z

    return v0
.end method

.method public getTransitionToAllApps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    return v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method getZeropageStarting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mZeropageStarting:Z

    return v0
.end method

.method public getmWindowToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWindowToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateWindowToken()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public handleSearchKeycodeEvent()Z
    .locals 5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    const/16 v3, 0x54

    invoke-virtual {v1, v3}, Lcom/android/launcher2/MenuWidgets;->handleKeyEvent(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->isFolderOpened()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->isSearchAppListShown()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getmSearchAppListFragment()Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getmSearchAppListFragment()Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getSearchView()Landroid/widget/SearchView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SearchView;->requestFocus()Z

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getmSearchAppListFragment()Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->openKeyboard()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->isFolderOpened()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->isSearchAppListShown()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getmSearchAppListFragment()Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getmSearchAppListFragment()Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getSearchView()Landroid/widget/SearchView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SearchView;->requestFocus()Z

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getmSearchAppListFragment()Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->openKeyboard()V

    goto/16 :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->isFolderOpened()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->isCurrentTabAppGrid()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/launcher2/Launcher$10;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Launcher$10;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public initGameHomeManager()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mGameHomeManager:Lcom/android/launcher2/gamehome/GameHomeManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/gamehome/GameHomeManager;

    invoke-direct {v0, p0}, Lcom/android/launcher2/gamehome/GameHomeManager;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mGameHomeManager:Lcom/android/launcher2/gamehome/GameHomeManager;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mGameHomeManager:Lcom/android/launcher2/gamehome/GameHomeManager;

    invoke-virtual {v0}, Lcom/android/launcher2/gamehome/GameHomeManager;->init()V

    return-void
.end method

.method public isAlphabeticalGrid()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDialogChecked()Z
    .locals 3

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "add.toast.popup.dismissed.key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isEmptyPage()Z
    .locals 8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/HomeView;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher2/CellLayoutChildren;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_2

    invoke-virtual {v3, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v6, v1, Lcom/android/launcher2/AppIconView;

    if-nez v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public isExitingAllApps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    return v0
.end method

.method public isLauncherDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    return v0
.end method

.method public isPageEdit()Z
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPageReorderingEdit()Z
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    return v0
.end method

.method public isResumed_()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mResumed:Z

    return v0
.end method

.method public isTransitioningRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransitioningToShowAllApps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchOptionWallpaper()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->startWallpaper(I)V

    return-void
.end method

.method public menuWidgetsUpdated(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isOptionMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f11012a

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->updateWidgetButtonState()V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 25

    const/16 v22, 0x72

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    const/16 v22, -0x1

    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    const-string v22, "android.speech.extra.RESULTS"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    const/16 v23, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v22

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v8

    :goto_0
    if-nez v8, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v22

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v8

    :cond_0
    :goto_1
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->isSearchAppListShown()Z

    move-result v22

    if-eqz v22, :cond_4

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/launcher2/Folder;->onVoiceSearch(Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v22

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuView;->isCurrentTabAppGrid()Z

    move-result v22

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-virtual {v15}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v22

    if-eqz v22, :cond_1

    invoke-virtual {v15}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onVoiceSearch(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v22

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v21

    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/MenuWidgets;->getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v20

    if-eqz v20, :cond_1

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->onVoiceSearch(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/16 v22, 0x6f

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    if-eqz v17, :cond_8

    :try_start_0
    sget-object v22, Lcom/android/launcher2/Launcher;->mPackageTobeDisabled:Ljava/lang/String;

    const/16 v23, 0x2200

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v22, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    if-nez v22, :cond_7

    sget-object v22, Lcom/android/launcher2/Launcher;->mPackageTobeDisabled:Ljava/lang/String;

    const/16 v23, 0x3

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v7

    const-string v22, "Launcher"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onActivityResult pkg:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/android/launcher2/Launcher;->mPackageTobeDisabled:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v22

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v22

    const/16 v23, -0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/launcher2/MenuAppsGrid;->onPackageDeleteCompleted(I)V

    goto/16 :goto_2

    :cond_8
    const-string v22, "Launcher"

    const-string v23, "onActivityResult PackageManager is null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v22

    if-eqz v22, :cond_c

    const/16 v22, 0x70

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    const/16 v22, -0x1

    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_19

    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mLockedFolderIconView:Lcom/android/launcher2/FolderIconView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mLockedFolderIconView:Lcom/android/launcher2/FolderIconView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/launcher2/BaseItem;

    move/from16 v22, v0

    if-eqz v22, :cond_b

    move-object/from16 v12, v19

    check-cast v12, Lcom/android/launcher2/BaseItem;

    move-object/from16 v10, v19

    check-cast v10, Lcom/android/launcher2/FolderItem;

    iget-object v0, v12, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v22, v0

    sget-object v23, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v22

    check-cast v12, Lcom/android/launcher2/FolderItem;

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Lcom/android/launcher2/MenuAppsGrid;->openFolderAfterConfirm(Lcom/android/launcher2/FolderItem;Z)V

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mLockedFolderIconView:Lcom/android/launcher2/FolderIconView;

    :cond_a
    :goto_3
    invoke-interface {v10}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v22

    if-eqz v22, :cond_b

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v10, v0}, Lcom/android/launcher2/FolderLock;->addTempUnlockedFolder(Lcom/android/launcher2/FolderItem;Z)V

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v10, v0}, Lcom/android/launcher2/FolderItem;->setOpenOnce(Z)V

    :cond_b
    :goto_4
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    :cond_c
    :goto_5
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v22

    if-eqz v22, :cond_f

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v22

    if-eqz v22, :cond_f

    const/16 v22, 0x71

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    const/16 v22, -0x1

    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_1c

    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mLockedViewFromDrag:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mLockedViewFromDrag:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    check-cast v12, Lcom/android/launcher2/BaseItem;

    if-eqz v19, :cond_f

    iget-object v0, v12, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v22, v0

    sget-object v23, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_d

    iget-object v0, v12, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v22, v0

    sget-object v23, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1b

    :cond_d
    move-object/from16 v10, v19

    check-cast v10, Lcom/android/launcher2/FolderItem;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v10, v0}, Lcom/android/launcher2/FolderItem;->setIsLockFolder(Z)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v10, v0}, Lcom/android/launcher2/FolderItem;->setOpenOnce(Z)V

    invoke-virtual {v11, v12}, Lcom/android/launcher2/FolderLock;->unlockFolder(Lcom/android/launcher2/BaseItem;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/Launcher;->mLockedViewFromDrag:Landroid/view/View;

    check-cast v9, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v9}, Lcom/android/launcher2/FolderIconView;->refresh()V

    invoke-virtual {v9}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    instance-of v0, v12, Lcom/android/launcher2/AppFolderItem;

    move/from16 v22, v0

    if-eqz v22, :cond_e

    invoke-virtual {v9}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    move-object/from16 v14, v16

    check-cast v14, Lcom/android/launcher2/MenuAppIconView;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/launcher2/MenuAppIconView;->setUninstallIconVisibility(I)V

    :cond_e
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mLockedViewFromDrag:Landroid/view/View;

    :cond_f
    :goto_6
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isSSecureSupported()Z

    move-result v22

    if-eqz v22, :cond_11

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v22

    if-eqz v22, :cond_11

    const/16 v22, 0x73

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    const/16 v22, -0x1

    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d

    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mLockedViewFromDrag:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mLockedViewFromDrag:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    check-cast v12, Lcom/android/launcher2/BaseItem;

    if-eqz v11, :cond_10

    invoke-virtual {v11, v12}, Lcom/android/launcher2/FolderLock;->isLockedApp(Lcom/android/launcher2/BaseItem;)Z

    move-result v22

    if-eqz v22, :cond_10

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v12, v0}, Lcom/android/launcher2/FolderLock;->unlockApp(Lcom/android/launcher2/BaseItem;Z)V

    :cond_10
    invoke-virtual {v11, v12}, Lcom/android/launcher2/FolderLock;->sendAppHideIntent(Lcom/android/launcher2/BaseItem;)V

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mLockedViewFromDrag:Landroid/view/View;

    :cond_11
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/LauncherApplication;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/launcher2/LauncherApplication;->getActivityCallbacks(I)Lcom/android/launcher2/Launcher$ActivityResultCallback;

    move-result-object v6

    const-string v23, "Launcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onActivityResult "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    if-eqz v6, :cond_1e

    const/16 v22, 0x1

    :goto_8
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_1f

    instance-of v0, v6, Lcom/android/launcher2/HomeView;

    move/from16 v22, v0

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    :cond_12
    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v6, v0, v1, v2}, Lcom/android/launcher2/Launcher$ActivityResultCallback;->onActivityResult(IILandroid/content/Intent;)V

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/launcher2/LauncherApplication;->removeActivityCallbacks(I)V

    goto/16 :goto_2

    :cond_13
    iget-object v0, v12, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v22, v0

    sget-object v23, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v22

    check-cast v12, Lcom/android/launcher2/FolderItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mLockedFolderIconView:Lcom/android/launcher2/FolderIconView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v12, v1, v2}, Lcom/android/launcher2/Workspace;->openFolderAfterConfirm(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mLockedFolderIconView:Lcom/android/launcher2/FolderIconView;

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mLockedViewFromDrag:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v22, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mLockedViewFromDrag:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    check-cast v12, Lcom/android/launcher2/BaseItem;

    if-eqz v19, :cond_b

    iget-object v0, v12, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v22, v0

    sget-object v23, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_15

    iget-object v0, v12, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v22, v0

    sget-object v23, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_17

    :cond_15
    move-object/from16 v10, v19

    check-cast v10, Lcom/android/launcher2/FolderItem;

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v10, v0}, Lcom/android/launcher2/FolderItem;->setIsLockFolder(Z)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v10, v0}, Lcom/android/launcher2/FolderItem;->setOpenOnce(Z)V

    invoke-virtual {v11, v12}, Lcom/android/launcher2/FolderLock;->lockFolder(Lcom/android/launcher2/BaseItem;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/Launcher;->mLockedViewFromDrag:Landroid/view/View;

    check-cast v9, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v9}, Lcom/android/launcher2/FolderIconView;->refresh()V

    invoke-virtual {v9}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    instance-of v0, v12, Lcom/android/launcher2/AppFolderItem;

    move/from16 v22, v0

    if-eqz v22, :cond_16

    invoke-virtual {v9}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    move-object/from16 v14, v16

    check-cast v14, Lcom/android/launcher2/MenuAppIconView;

    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/launcher2/MenuAppIconView;->setUninstallIconVisibility(I)V

    :cond_16
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mLockedViewFromDrag:Landroid/view/View;

    goto/16 :goto_4

    :cond_17
    invoke-virtual {v11, v12}, Lcom/android/launcher2/FolderLock;->lockApp(Lcom/android/launcher2/BaseItem;)V

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mLockedViewFromDrag:Landroid/view/View;

    goto/16 :goto_4

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/BackupItemsRecords;->getFolderView()Lcom/android/launcher2/FolderIconView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v10

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v11, v10, v0}, Lcom/android/launcher2/FolderLock;->addTempUnlockedFolder(Lcom/android/launcher2/FolderItem;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/BackupItemsRecords;->getBaseItem()Lcom/android/launcher2/BaseItem;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Lcom/android/launcher2/FolderLock;->lockApp(Lcom/android/launcher2/BaseItem;Z)V

    goto/16 :goto_4

    :cond_19
    if-nez p2, :cond_c

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    sput-object v22, Lcom/android/launcher2/Launcher;->savedBaseItem:Ljava/util/ArrayList;

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    sput-object v22, Lcom/android/launcher2/Launcher;->savedItemView:Ljava/util/ArrayList;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mStateBeforeClick:Lcom/android/launcher2/Workspace$State;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mLockedFolderIconView:Lcom/android/launcher2/FolderIconView;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mLockedViewFromDrag:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->backupItemFromLockedFolder()V

    :cond_1a
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    goto/16 :goto_5

    :cond_1b
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v11, v12, v0}, Lcom/android/launcher2/FolderLock;->unlockApp(Lcom/android/launcher2/BaseItem;Z)V

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mLockedViewFromDrag:Landroid/view/View;

    goto/16 :goto_6

    :cond_1c
    if-nez p2, :cond_f

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    sput-object v22, Lcom/android/launcher2/Launcher;->savedBaseItem:Ljava/util/ArrayList;

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    sput-object v22, Lcom/android/launcher2/Launcher;->savedItemView:Ljava/util/ArrayList;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mLockedFolderIconView:Lcom/android/launcher2/FolderIconView;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mLockedViewFromDrag:Landroid/view/View;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mStateBeforeClick:Lcom/android/launcher2/Workspace$State;

    goto/16 :goto_6

    :cond_1d
    if-nez p2, :cond_11

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    sput-object v22, Lcom/android/launcher2/Launcher;->savedBaseItem:Ljava/util/ArrayList;

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    sput-object v22, Lcom/android/launcher2/Launcher;->savedItemView:Ljava/util/ArrayList;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mStateBeforeClick:Lcom/android/launcher2/Workspace$State;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mLockedFolderIconView:Lcom/android/launcher2/FolderIconView;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mLockedViewFromDrag:Landroid/view/View;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    goto/16 :goto_7

    :cond_1e
    const/16 v22, 0x0

    goto/16 :goto_8

    :cond_1f
    const/16 v22, 0xa

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/HomeView;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_2
.end method

.method public onAttachedToWindow()V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "Launcher"

    const-string v3, "onAttachedToWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/ActivityGroup;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHotword()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-virtual {v2}, Lcom/google/android/hotword/client/HotwordServiceClient;->onAttachedToWindow()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->setEnableHotWord(Z)V

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWallpaperTilt()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWindowToken:Landroid/os/IBinder;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mWindowToken:Landroid/os/IBinder;

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWindowToken:Landroid/os/IBinder;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/sec/dtl/launcher/WallpaperScroller;->setWindowToken(Landroid/os/IBinder;)V

    :cond_2
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/launcher2/Launcher;->setWallpaperRotation(I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.REQUEST_HOME_COUNT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.REQUEST_WIDGET_COUNT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.appwidget.action.APPWIDGET_INVALID_HOST_CALLBACKS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageVirtualScreen()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "com.sec.android.intent.action.SET_ZERO_PAGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_3
    const-string v2, "edm.intent.action.changeUninstallStatus"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    sget-object v2, Lcom/android/launcher2/Launcher;->mPendingIntent:Landroid/content/Intent;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mRemainSavedInstance:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/launcher2/Launcher;->mPendingIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->onNewIntent(Landroid/content/Intent;)V

    :cond_4
    const/4 v2, 0x0

    sput-object v2, Lcom/android/launcher2/Launcher;->mPendingIntent:Landroid/content/Intent;

    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->mRemainSavedInstance:Z

    return-void

    :cond_5
    const-string v2, "Launcher"

    const-string v3, "wallpaperscroller - mWindowToken is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTransitedRotation()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/ar/ARHelper;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeOptionsMenu()V

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->exitAllApps()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->onBackPressed()Z

    goto :goto_0
.end method

.method public onClickPopupMenuButton(Landroid/view/View;)V
    .locals 12

    const-wide/16 v10, 0x1f4

    const-wide/16 v8, 0xc8

    const/high16 v7, 0x10000

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-nez v2, :cond_1

    const-string v2, "Launcher"

    const-string v3, "onClickPopupMenuButton:MenuView is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClickPopupMenuButton:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->isCurrentTabAppGrid()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f1100e9

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_7

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher2/Launcher$19;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Launcher$19;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getEditButtonText()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getSearchButtonText()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getSearchButtonText()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportAtoZUndo()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher2/Launcher$16;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Launcher$16;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getEditButtonText()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getSearchButtonText()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v3, :cond_4

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/AlphabeticalSortConfirmationDialog;->createAndShow(Landroid/app/FragmentManager;)V

    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->resetAtoZPositionArray()V

    goto/16 :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->AtoZ:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher2/Launcher$17;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Launcher$17;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->AtoZ:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher2/Launcher$18;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Launcher$18;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :sswitch_3
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSearchBarApps()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getTabManager()Lcom/android/launcher2/tabs/TabManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "APPS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->createAppsPopupMenu(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v2}, Lcom/android/launcher2/popup/PopupMenu;->show()V

    sput-boolean v6, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    :cond_5
    :goto_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isVZWModel()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getTabManager()Lcom/android/launcher2/tabs/TabManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "APPS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->createAppsPopupMenu(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v2}, Lcom/android/launcher2/popup/PopupMenu;->show()V

    sput-boolean v6, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getTabManager()Lcom/android/launcher2/tabs/TabManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WIDGETS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq v2, v3, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v2}, Lcom/android/launcher2/popup/PopupMenu;->show()V

    sput-boolean v6, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getTabManager()Lcom/android/launcher2/tabs/TabManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "APPS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSearchBarApps()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->isFolderOpened()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getEditButtonText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->isHovered()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v5}, Landroid/view/View;->setHovered(Z)V

    :cond_8
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getEditButtonText()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher2/Launcher$20;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Launcher$20;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v1, v2, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v2, Lcom/android/launcher2/Launcher$21;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Launcher$21;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getEditButtonText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->isHovered()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0, v5}, Landroid/view/View;->setHovered(Z)V

    :cond_a
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getEditButtonText()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher2/Launcher$22;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Launcher$22;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v1, v2, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v2, Lcom/android/launcher2/Launcher$23;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Launcher$23;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getTabManager()Lcom/android/launcher2/tabs/TabManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WIDGETS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v2, :cond_c

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v2}, Lcom/android/launcher2/popup/PopupMenu;->show()V

    sput-boolean v6, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f110011 -> :sswitch_0
        0x7f110012 -> :sswitch_1
        0x7f110013 -> :sswitch_2
        0x7f1100c9 -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, 0x1

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged. orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget v1, Lcom/android/launcher2/Launcher;->sActivityOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTransitedRotation()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/ar/ARHelper;->getInstance()Lcom/android/launcher2/ar/ARHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher2/ar/ARHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportNfcHwKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/android/launcher2/Launcher;->mMobileKeyboardConfig:I

    iget v2, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v1, v2, :cond_1

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged. ChangeMobileKeyboard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    sput v1, Lcom/android/launcher2/Launcher;->mMobileKeyboardConfig:I

    sput-boolean v4, Lcom/android/launcher2/Launcher;->mChangeMobileKeyboard:Z

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HomeView;->setTakescreenshot(Z)V

    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    sput v1, Lcom/android/launcher2/Launcher;->sActivityOrientation:I

    sput-boolean v4, Lcom/android/launcher2/Launcher;->sIsConfigChanged:Z

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/IconConfig;->refreshAll()V

    sget-boolean v1, Lcom/android/launcher2/Launcher;->mChangeMobileKeyboard:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_4

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWallpaperTilt()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mWallpaperTiltSettingEnabled:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->changeTiltXYRange()V

    :cond_3
    sget-boolean v1, Lcom/android/launcher2/Launcher;->mChangeMobileKeyboard:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/launcher2/FolderIconHelper;->initFolderResources(Landroid/content/res/Resources;Z)V

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1, v4}, Lcom/android/launcher2/HomeView;->setMainHomeScreenshot(Z)V

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageVirtualScreen()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ZeroPageUtils;->loadZeropageAppItem()V

    :cond_4
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ZeroPageUtils;->setZeroPageAppName()V

    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/launcher2/utils/HomeBlurUtil;->getInstance()Lcom/android/launcher2/utils/HomeBlurUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/utils/HomeBlurUtil;->refresh()V

    :cond_6
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 24

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/launcher2/LauncherApplication;->setLauncher(Lcom/android/launcher2/Launcher;)V

    const-string v21, "VerificationLog"

    const-string v22, "onCreate"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v22, "Launcher"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onCreate. savedInstanceState: "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    if-nez p1, :cond_1a

    const-string v21, "null"

    :goto_0
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, ", Launcher: "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v23

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->checkSoftkeyDevice()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v21

    const/high16 v22, -0x80000000

    invoke-virtual/range {v21 .. v22}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz p1, :cond_1b

    const/16 v21, 0x1

    :goto_1
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Launcher;->mRemainSavedInstance:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v21, "Launcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "config.densityDpi : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v21, Lcom/android/launcher2/LauncherApplication;->sDensityDpi:I

    if-lez v21, :cond_2

    sget v21, Lcom/android/launcher2/LauncherApplication;->sDensityDpi:I

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/PkgResCache;->clear()V

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v21

    if-nez v21, :cond_1c

    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_1

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/theme/OpenThemeManager;->setStyleByDecision()V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/android/launcher2/FolderIconHelper;->initFolderResources(Landroid/content/res/Resources;Z)V

    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v21, v0

    sput v21, Lcom/android/launcher2/LauncherApplication;->sDensityDpi:I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWallpaperTilt()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "wallpaper_tilt_status"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_1d

    const/16 v21, 0x1

    :goto_3
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Launcher;->mWallpaperTiltSettingEnabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mSensorManager:Landroid/hardware/SensorManager;

    move-object/from16 v21, v0

    if-nez v21, :cond_3

    const-string v21, "sensor"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/hardware/SensorManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_3
    const v3, 0x1002b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mSensorManager:Landroid/hardware/SensorManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v13

    if-nez v13, :cond_1e

    const-string v21, "Launcher"

    const-string v22, "LauncherActivity::onCreate() - gyroSensor not support. SUPPORT_TILT_WALLPAPER set false. "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/launcher2/LauncherFeature;->mSupportWallpaperTilt:Z

    :cond_4
    :goto_4
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v21

    if-eqz v21, :cond_5

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v5, v0, [I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    const/16 v21, 0x0

    aget v21, v5, v21

    const/16 v22, 0x1

    aget v22, v5, v22

    invoke-static/range {v21 .. v22}, Lcom/android/launcher2/LauncherApplication;->setLauncherGridSize(II)V

    :cond_5
    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getSpanCalculator()Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/launcher2/FolderIconHelper;->initFolderResources(Landroid/content/res/Resources;Z)V

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v21, v0

    sput v21, Lcom/android/launcher2/Launcher;->sActivityOrientation:I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportLauncherHighPriority()Z

    move-result v21

    if-eqz v21, :cond_6

    const/16 v21, -0x4

    invoke-static/range {v21 .. v21}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->setLiveIconUpdate()V

    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/launcher2/Launcher;->SEC_PRODUCT_FEATURE_LAUNCHER_KITKAT_ADD_TO_HOMESCREEN_CONCEPT:Z

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRTLLayout()Z

    move-result v21

    if-eqz v21, :cond_20

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v21

    if-eqz v21, :cond_20

    const/16 v21, 0x1

    :goto_5
    sput-boolean v21, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    const-string v21, "com.sec.android.app.launcher.prefs"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    const-string v21, "SHOW_EMPTY_PAGE_MSG"

    const/16 v22, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Launcher;->mShowEmptyPageMsg:Z

    invoke-static {v4}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->saveHomeZeroPageOnOffState(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_21

    const/16 v21, 0x1

    :goto_6
    sput-boolean v21, Lcom/android/launcher2/Launcher;->UseQwertyKeypad:Z

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasMenuKey()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasSoftKey()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    sput v21, Lcom/android/launcher2/Launcher;->sSoftKeySize:I

    :cond_7
    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherModel;->initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v21

    if-nez v21, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    :cond_8
    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v21

    if-eqz v21, :cond_9

    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->updateCaptureFile(IZ)V

    :cond_9
    const v21, 0x7f040027

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->setContentView(I)V

    const v21, 0x7f110076

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/HomeView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const v21, 0x7f11009c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/MenuView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const v21, 0x7f110087

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mDarkenView:Landroid/view/View;

    const v21, 0x7f110089

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mWallpaperBlurView:Landroid/view/View;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportBackgroundBlur()Z

    move-result v21

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mWallpaperBlurView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mWallpaperBlurView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->init(Landroid/content/Context;Landroid/view/View;)V

    :cond_a
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v21

    if-eqz v21, :cond_b

    const v21, 0x7f110088

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mHomeBlurView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeBlurView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    invoke-static {}, Lcom/android/launcher2/utils/HomeBlurUtil;->getInstance()Lcom/android/launcher2/utils/HomeBlurUtil;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeBlurView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/launcher2/utils/HomeBlurUtil;->init(Landroid/content/Context;Landroid/view/View;)V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v19

    if-eqz p1, :cond_23

    const-string v21, "extra_home_view_hidden"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    const-string v21, "extra_menu_widgets_shown"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Launcher;->mWidgetsTabShown:Z

    if-eqz v20, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/launcher2/MenuView;->setVisibility(I)V

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Launcher;->mInMenu:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mDarkenView:Landroid/view/View;

    move-object/from16 v21, v0

    sget v22, Lcom/android/launcher2/Launcher;->sMenuBgDarkenAmountNormal:F

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setAlpha(F)V

    :goto_7
    invoke-virtual/range {v19 .. v19}, Landroid/app/FragmentTransaction;->commit()I

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v18

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v21

    if-nez v21, :cond_c

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeStyle()Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->getTransitionEffect()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/Launcher;->setWhichTransitionEffect(I)V

    :cond_c
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportContextServiceSurveyMode()Z

    move-result v21

    if-eqz v21, :cond_d

    new-instance v15, Lcom/android/launcher2/Logging;

    invoke-direct {v15}, Lcom/android/launcher2/Logging;-><init>()V

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/launcher2/Logging;->startFisrtLoggingForLauncherStatus(Landroid/app/Activity;)V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "tap_to_icon"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_24

    const/16 v21, 0x1

    :goto_8
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Launcher;->mIconTrayEnabled:Z

    sget-object v21, Lcom/android/launcher2/Launcher;->mDragEndCallbacks:Ljava/util/ArrayList;

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    move/from16 v21, v0

    if-nez v21, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/LauncherModel;->startLoader()V

    :cond_e
    new-instance v12, Landroid/content/IntentFilter;

    const-string v21, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v21, 0x7f0d0018

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    if-nez v21, :cond_f

    new-instance v21, Lcom/android/launcher2/ChangeCallAppReceiver;

    invoke-direct/range {v21 .. v21}, Lcom/android/launcher2/ChangeCallAppReceiver;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mChangeCallAppReceiver:Lcom/android/launcher2/ChangeCallAppReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mChangeCallAppReceiver:Lcom/android/launcher2/ChangeCallAppReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/launcher2/ChangeCallAppReceiver;->init(Lcom/android/launcher2/HomeView;)V

    :cond_f
    sget-boolean v21, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v21, :cond_10

    new-instance v21, Lcom/android/launcher2/FestivalPageManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/FestivalPageManager;-><init>(Lcom/android/launcher2/Launcher;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mFestivalPageManager:Lcom/android/launcher2/FestivalPageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mFestivalPageManager:Lcom/android/launcher2/FestivalPageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/launcher2/FestivalPageManager;->initFestivalPage(Lcom/android/launcher2/HomeView;)V

    :cond_10
    new-instance v21, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v21 .. v21}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    new-instance v21, Landroid/content/Intent;

    const-string v22, "android.intent.action.MAIN"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v22, "android.intent.category.APP_MARKET"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mActivityName:Landroid/content/ComponentName;

    const v21, 0x7f11008a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/AnimationLayer;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->setIndicatorTransparency()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v21

    if-eqz v21, :cond_25

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTransitedRotation()Z

    move-result v21

    if-nez v21, :cond_25

    const/16 v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    :goto_9
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportNfcHwKeyboard()Z

    move-result v21

    if-eqz v21, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v0, v6, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    move/from16 v21, v0

    sput v21, Lcom/android/launcher2/Launcher;->mMobileKeyboardConfig:I

    :cond_11
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, "android.intent.action.MAIN"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Launcher;->tryQueueWidgetAddViaIntent(Landroid/content/Intent;Ljava/lang/String;)Z

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->getRemovablePreloadEnabled()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->addRemovablePreloadAppToList()V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->addRemovableCustomerAppToList()V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->addRemovableAppToList()V

    :cond_12
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHotword()Z

    move-result v21

    if-eqz v21, :cond_13

    new-instance v21, Lcom/google/android/hotword/client/HotwordServiceClient;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/hotword/client/HotwordServiceClient;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "isBabyCryingEnable"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    sput v21, Lcom/android/launcher2/Launcher;->mIsBabyCryingEnable:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "isDoorbellEnable"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    sput v21, Lcom/android/launcher2/Launcher;->mIsDoorbellEnable:I

    const-string v21, "isBabyCryingEnable"

    invoke-static/range {v21 .. v21}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mBabyCryingDetector:Landroid/database/ContentObserver;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v21, "isDoorbellEnable"

    invoke-static/range {v21 .. v21}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mDoorbellDetector:Landroid/database/ContentObserver;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v21, "show_button_background"

    invoke-static/range {v21 .. v21}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mChangeShowButtonBackgroundObserver:Landroid/database/ContentObserver;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWallpaperTilt()Z

    move-result v21

    if-eqz v21, :cond_14

    const-string v21, "wallpaper_tilt_status"

    invoke-static/range {v21 .. v21}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->wallpaperTiltSettingChanged:Landroid/database/ContentObserver;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->setTextPageIndicatorColorIfNeeded()V

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v21

    if-eqz v21, :cond_17

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/ZeroPageUtils;->loadZeropageAppItem()V

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageVirtualScreen()Z

    move-result v21

    if-eqz v21, :cond_16

    new-instance v21, Landroid/os/HandlerThread;

    const-string v22, "VirtualScreenThread"

    invoke-direct/range {v21 .. v22}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mVirtualScreenThread:Landroid/os/HandlerThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mVirtualScreenThread:Landroid/os/HandlerThread;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/os/HandlerThread;->setPriority(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mVirtualScreenThread:Landroid/os/HandlerThread;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/HandlerThread;->start()V

    new-instance v21, Lcom/android/launcher2/Launcher$VirtualScreenHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mVirtualScreenThread:Landroid/os/HandlerThread;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Launcher$VirtualScreenHandler;-><init>(Lcom/android/launcher2/Launcher;Landroid/os/Looper;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mVirtualScreenHandler:Lcom/android/launcher2/Launcher$VirtualScreenHandler;

    new-instance v21, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;-><init>(Landroid/content/Context;)V

    sput-object v21, Lcom/android/launcher2/Launcher;->mVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v21

    if-eqz v21, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const/16 v22, 0x1

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Lcom/android/launcher2/Launcher;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->bindVirtualScreen()V

    :cond_15
    new-instance v21, Lcom/android/launcher2/Alarm;

    invoke-direct/range {v21 .. v21}, Lcom/android/launcher2/Alarm;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mVirtualScreenThreadExitAlarm:Lcom/android/launcher2/Alarm;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mVirtualScreenThreadExitAlarm:Lcom/android/launcher2/Alarm;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/launcher2/Launcher$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/Launcher$1;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual/range {v21 .. v22}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    :cond_16
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/ZeroPageUtils;->setZeroPageAppName()V

    :cond_17
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->changeEdgeHandleState(Z)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTransitedRotation()Z

    move-result v21

    if-eqz v21, :cond_18

    invoke-static {}, Lcom/android/launcher2/ar/ARHelper;->getInstance()Lcom/android/launcher2/ar/ARHelper;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mAnimatedRotationHelper:Lcom/android/launcher2/ar/ARHelper;

    :cond_18
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    const-string v21, "android.intent.action.DATE_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v21, "android.intent.action.TIME_SET"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v21, "android.intent.action.TIMEZONE_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v21, "com.samsung.action.MIDNIGHT_LIVEICONUPDATE"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    const-string v21, "com.samsung.settings.ICON_BACKGROUNDS_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mIconTrayChangedReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isDisableHighestGPU()Z

    move-result v21

    if-eqz v21, :cond_19

    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->setGpuBooster(Landroid/content/Context;)V

    :cond_19
    return-void

    :cond_1a
    const-string v21, "not null"

    goto/16 :goto_0

    :cond_1b
    const/16 v21, 0x0

    goto/16 :goto_1

    :cond_1c
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsDefaultTheme()Z

    move-result v8

    goto/16 :goto_2

    :cond_1d
    const/16 v21, 0x0

    goto/16 :goto_3

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    move-object/from16 v21, v0

    if-nez v21, :cond_1f

    new-instance v21, Lcom/sec/dtl/launcher/WallpaperScroller;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/sec/dtl/launcher/WallpaperScroller;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Launcher;->mWallpaperTiltSettingEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sec/dtl/launcher/GyroForShadow;->initialize(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/sec/dtl/launcher/WallpaperScroller;->start(Z)V

    goto/16 :goto_4

    :cond_20
    const/16 v21, 0x0

    goto/16 :goto_5

    :cond_21
    const/16 v21, 0x0

    goto/16 :goto_6

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/android/launcher2/MenuView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mDarkenView:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_7

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/android/launcher2/MenuView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_24
    const/16 v21, 0x0

    goto/16 :goto_8

    :cond_25
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    goto/16 :goto_9
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mBabyCryingDetector:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mDoorbellDetector:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mChangeShowButtonBackgroundObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWallpaperTilt()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->wallpaperTiltSettingChanged:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    sget-object v4, Lcom/android/launcher2/Launcher;->mDragEndCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->onDestroy()V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDestroy, Launcher: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    invoke-static {}, Lcom/android/launcher2/Utilities;->onDestroy()V

    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->onDestroyActivity()V

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v4

    if-ne v4, p0, :cond_b

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherModel;->stopLoader()V

    invoke-virtual {v0, v7}, Lcom/android/launcher2/LauncherApplication;->setLauncher(Lcom/android/launcher2/Launcher;)V

    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v4, :cond_1

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v4}, Lcom/android/launcher2/popup/PopupMenu;->dismiss()V

    iput-object v7, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    sput-boolean v3, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    :cond_1
    sget-object v4, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v4}, Lcom/sec/dtl/launcher/Talk;->shutdown()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTransitedRotation()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mAnimatedRotationHelper:Lcom/android/launcher2/ar/ARHelper;

    invoke-virtual {v4}, Lcom/android/launcher2/ar/ARHelper;->destroy()V

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWallpaperTilt()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/launcher2/Launcher;->mWallpaperTiltSettingEnabled:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    invoke-virtual {v4}, Lcom/sec/dtl/launcher/WallpaperScroller;->shutdown()V

    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->cancelCompressTask()V

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getWidgetLoader()Lcom/android/launcher2/MenuWidgetsLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuWidgetsLoader;->destroy()V

    iget-boolean v4, p0, Lcom/android/launcher2/Launcher;->mAutoRestart:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->mAutoRestart:Z

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/launcher2/Launcher;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x14000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x200000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mZeroPageScreenshotsObserver:Landroid/os/FileObserver;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mZeroPageScreenshotsObserver:Landroid/os/FileObserver;

    invoke-virtual {v4}, Landroid/os/FileObserver;->stopWatching()V

    iput-object v7, p0, Lcom/android/launcher2/Launcher;->mZeroPageScreenshotsObserver:Landroid/os/FileObserver;

    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v7, p0, Lcom/android/launcher2/Launcher;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    :cond_6
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mIconTrayChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mIconTrayChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v7, p0, Lcom/android/launcher2/Launcher;->mIconTrayChangedReceiver:Landroid/content/BroadcastReceiver;

    :cond_7
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageVirtualScreen()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mVirtualScreenHandler:Lcom/android/launcher2/Launcher$VirtualScreenHandler;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mVirtualScreenHandler:Lcom/android/launcher2/Launcher$VirtualScreenHandler;

    invoke-virtual {v4, v7}, Lcom/android/launcher2/Launcher$VirtualScreenHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_8
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mVirtualScreenThread:Landroid/os/HandlerThread;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mVirtualScreenThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_9
    invoke-static {}, Lcom/android/launcher2/Launcher;->unBindVirtualScreen()V

    :cond_a
    return-void

    :cond_b
    const-string v4, "Launcher"

    const-string v5, "onDestory(), app.getLauncher() != this"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 4

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDetachedFromWindow mAttached="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/ActivityGroup;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWallpaperTilt()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mWindowToken:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    if-eqz v1, :cond_0

    const-string v1, "Launcher"

    const-string v2, "WallpaperScroller window token set null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/sec/dtl/launcher/WallpaperScroller;->setWindowToken(Landroid/os/IBinder;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHotword()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-virtual {v1}, Lcom/google/android/hotword/client/HotwordServiceClient;->onDetachedFromWindow()V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->updateRunning()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window is not attached anymore! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReceiver not registered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v7

    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-lez v7, :cond_1

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v9, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    const/4 v9, 0x7

    if-lt p1, v9, :cond_4

    const/16 v9, 0x12

    if-gt p1, v9, :cond_4

    const/4 v6, 0x0

    const/4 v9, 0x7

    if-lt p1, v9, :cond_2

    const/16 v9, 0x10

    if-gt p1, v9, :cond_2

    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.DIAL"

    const-string v10, "tel:"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_1
    const-string v9, "firstKeycode"

    invoke-virtual {v6, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "isKeyTone"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->clearTypedText()V

    :cond_0
    :goto_2
    return v3

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/16 v9, 0x12

    if-ne p1, v9, :cond_3

    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.DIAL"

    const-string v10, "tel:"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v9, "isPoundKey"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.DIAL"

    const-string v10, "tel:"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    :cond_4
    const/16 v9, 0x1b

    if-ne p1, v9, :cond_7

    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x4000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v9, 0x10000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_3
    const/16 v9, 0x3ea

    if-ne p1, v9, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/launcher2/HomeView;->playSoundEffect(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    :cond_6
    if-nez v3, :cond_8

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->acceptFilter()Z

    move-result v9

    if-eqz v9, :cond_8

    if-eqz v5, :cond_8

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9, v10, v11, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    move-result v3

    goto/16 :goto_2

    :cond_7
    const/16 v9, 0x43

    if-ne p1, v9, :cond_5

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    goto :goto_3

    :cond_8
    const/16 v9, 0x52

    if-ne p1, v9, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_2
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 24

    invoke-super/range {p0 .. p1}, Landroid/app/ActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    const-string v19, "Launcher"

    const-string v20, "onNewIntent()"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v19, Lcom/android/launcher2/Launcher;->launcher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_0

    const-string v19, "Launcher"

    const-string v20, "onNewIntent reset launcher instance "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v19

    sget-object v20, Lcom/android/launcher2/Launcher;->launcher:Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    sput-object p0, Lcom/android/launcher2/Launcher;->launcher:Lcom/android/launcher2/Launcher;

    :cond_0
    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Launcher;->tryQueueWidgetAddViaIntent(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Launcher;->mAttached:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    sput-object p1, Lcom/android/launcher2/Launcher;->mPendingIntent:Landroid/content/Intent;

    const-string v19, "Launcher"

    const-string v20, "onNewIntent return by attached!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->closeQuickoptionsPopup()V

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/Launcher;->setIntent(Landroid/content/Intent;)V

    new-instance v19, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    sput-object v19, Lcom/android/launcher2/Launcher;->sInComingIntentHelpHub:Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_26

    const-string v19, "extra_enter_screen_grid"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v19

    if-eqz v19, :cond_4

    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    new-instance v19, Lcom/android/launcher2/Launcher$13;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/Launcher$13;-><init>(Lcom/android/launcher2/Launcher;)V

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    invoke-super/range {p0 .. p1}, Landroid/app/ActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    if-eqz v19, :cond_10

    const-string v19, "homescreen:guide_mode"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getRequestedOrientation()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Launcher;->mPrevOrientationHelp:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/CreateFolderDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/launcher2/CreateFolderDialog;->dismiss(Landroid/app/FragmentManager;Z)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/HomeView;->showWorkspace(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "homescreen:guide_mode"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_8
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v19

    const/high16 v20, 0x10a00000

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Launcher;->pressHomeKeyInLauncher:Z

    :cond_9
    const-string v19, "StartEdit"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v19

    sget-object v20, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    sget-boolean v19, Lcom/android/launcher2/HomeView;->sIsDragState:Z

    if-nez v19, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/launcher2/HomeView;->mHomeKeyPress:Z

    move/from16 v19, v0

    if-eqz v19, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/HomeView;->closeSystemDialogs(Ljava/lang/Boolean;)V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher2/CreateFolderDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v19

    if-eqz v19, :cond_c

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v5, v0}, Lcom/android/launcher2/CreateFolderDialog;->dismiss(Landroid/app/FragmentManager;Z)V

    :cond_c
    invoke-static {v5}, Lcom/android/launcher2/DisableAppConfirmationDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v19

    if-eqz v19, :cond_d

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/android/launcher2/DisableAppConfirmationDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commit()I

    :cond_d
    sget-object v19, Lcom/android/launcher2/Launcher;->mThemeWarningDialog:Landroid/app/AlertDialog;

    if-eqz v19, :cond_e

    sget-object v19, Lcom/android/launcher2/Launcher;->mThemeWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v19

    if-eqz v19, :cond_e

    sget-object v19, Lcom/android/launcher2/Launcher;->mThemeWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog;->dismiss()V

    :cond_e
    invoke-static {v5}, Lcom/android/launcher2/AppFolderRemoveDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/android/launcher2/AppFolderRemoveDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commit()I

    :cond_f
    :goto_3
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-static {}, Lcom/android/launcher2/utils/HomeBlurUtil;->getInstance()Lcom/android/launcher2/utils/HomeBlurUtil;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/utils/HomeBlurUtil;->getBlurView()Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getAlpha()F

    move-result v19

    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v19, v19, v20

    if-nez v19, :cond_1

    invoke-static {}, Lcom/android/launcher2/utils/HomeBlurUtil;->getInstance()Lcom/android/launcher2/utils/HomeBlurUtil;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/utils/HomeBlurUtil;->getBlurView()Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Launcher;->mHasFocus:Z

    move/from16 v19, v0

    if-eqz v19, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v19

    const/high16 v20, 0x400000

    and-int v19, v19, v20

    const/high16 v20, 0x400000

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_18

    const-string v19, "sec.android.intent.extra.LAUNCHER_ACTION"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v19

    if-eqz v19, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuView;->isNormalState()Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v20, v0

    if-nez v16, :cond_13

    const/16 v19, 0x1

    :goto_4
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuView;->onHomePressed(Z)Z

    move-result v19

    if-nez v19, :cond_12

    const-string v19, "streetlife"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onNewIntent exitAllApps isNormalState : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v19

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v19

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    :cond_11
    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->hasWindowFocus()Z

    move-result v19

    if-eqz v19, :cond_14

    if-eqz v10, :cond_14

    const/16 v19, 0x0

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    :cond_12
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_8

    invoke-virtual {v15}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v19

    if-eqz v19, :cond_8

    const-string v19, "input_method"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v15}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_1

    :cond_13
    const/16 v19, 0x0

    goto/16 :goto_4

    :cond_14
    const/16 v19, 0x1

    goto :goto_5

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v19

    sget-object v20, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    if-nez v16, :cond_17

    const/16 v19, 0x1

    :goto_7
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->onHomePressed(Z)Z

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v19

    sget-object v20, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->getIsDragOccuring()Z

    move-result v19

    if-nez v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    sget-object v20, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->isFolderOpened()Z

    move-result v19

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->closeFolder()V

    goto/16 :goto_6

    :cond_17
    const/16 v19, 0x0

    goto :goto_7

    :cond_18
    const-string v19, "sec.android.intent.extra.LAUNCHER_ACTION"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v19

    if-eqz v19, :cond_1a

    const-string v19, "sec.android.intent.extra.LAUNCHER_ACTION"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v19, "com.android.launcher2.IDLE"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    goto/16 :goto_1

    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->cancelAppFolderRemoveDialog()V

    goto/16 :goto_1

    :cond_1a
    const-string v19, "ZeroPageSetting"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/QuickViewWorkspace;->hideTitleBarImmediately()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v19

    sget v20, Lcom/android/launcher2/Launcher;->INDEX_OF_ZEROPAGE:I

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v19

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/launcher2/QuickViewWorkspace;->setVisibilityZeroPageOption(ZZ)V

    goto/16 :goto_1

    :cond_1b
    const-string v19, "android.intent.extra.FROM_HOME_KEY"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->setStatusBarColorIfNeeded()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v19

    if-eqz v19, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/Workspace;->closeFolder(Z)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v19

    if-eqz v19, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v19

    if-eqz v19, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    :cond_1d
    sget-object v19, Lcom/android/launcher2/Launcher;->mPendingIntent:Landroid/content/Intent;

    if-nez v19, :cond_1e

    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/launcher2/Launcher;->mIsStartSetting:Z

    const-string v19, "Launcher"

    const-string v20, "onNewIntent mPendingIntent is null startingSetting is false!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    sget-object v19, Lcom/android/launcher2/Launcher;->mRequestDialog:Landroid/app/AlertDialog;

    if-eqz v19, :cond_1f

    sget-object v19, Lcom/android/launcher2/Launcher;->mRequestDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog;->dismiss()V

    const/16 v19, 0x0

    sput-object v19, Lcom/android/launcher2/Launcher;->mRequestDialog:Landroid/app/AlertDialog;

    :cond_1f
    const-string v19, "StartEdit"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    if-nez v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v19

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v19

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeScreenOptionMenu;->isActive()Z

    move-result v19

    if-eqz v19, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/HomeScreenOptionMenu;->onHomePressed(Z)Z

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v19

    if-eqz v19, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v19

    if-eqz v19, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Launcher;->mStoped:Z

    move/from16 v19, v0

    if-eqz v19, :cond_22

    const/16 v19, 0x0

    :goto_9
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->onHomePressed(Z)Z

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurAnimation(Z)V

    goto/16 :goto_1

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    goto :goto_8

    :cond_22
    if-nez v16, :cond_23

    const/16 v19, 0x1

    goto :goto_9

    :cond_23
    const/16 v19, 0x0

    goto :goto_9

    :cond_24
    const/16 v19, 0x0

    goto :goto_9

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/HomeView;->closeSystemDialogs(Ljava/lang/Boolean;)V

    goto/16 :goto_2

    :cond_26
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportVoiceSearch()Z

    move-result v19

    if-eqz v19, :cond_f

    const-string v19, "android.intent.action.SEARCH"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    const-string v19, "query"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v19, "Launcher"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ACTION_SEARCH query :  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v19, 0x7f110112

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->clearFocus()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    if-eqz v19, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v6

    :goto_a
    if-nez v6, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v19

    if-eqz v19, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v6

    :cond_27
    :goto_b
    if-eqz v6, :cond_2a

    invoke-virtual {v6}, Lcom/android/launcher2/Folder;->isSearchAppListShown()Z

    move-result v19

    if-eqz v19, :cond_2a

    invoke-virtual {v6, v13}, Lcom/android/launcher2/Folder;->onVoiceSearch(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_28
    const/4 v6, 0x0

    goto :goto_a

    :cond_29
    const/4 v6, 0x0

    goto :goto_b

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v19

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuView;->isCurrentTabAppGrid()Z

    move-result v19

    if-eqz v19, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v12

    if-eqz v12, :cond_f

    invoke-virtual {v12}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v19

    if-eqz v19, :cond_f

    invoke-virtual {v12}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onVoiceSearch(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v19

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v18

    if-eqz v18, :cond_f

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/MenuWidgets;->getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v17

    if-eqz v17, :cond_f

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->onVoiceSearch(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v1, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->invalidateOptionsMenu()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->onOptionSelectedSearch()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->onOptionSelectedUninstall()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->onOptionSelectedEdit()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->onOptionSelectedAtoZ()V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->chooseViewType()V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->onOptionSelectedContactUs()V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->onOptionSelectedSearchRecommend()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f110124
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onOptionsMenuClosed(Landroid/view/Menu;)V

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->invalidateOptionsMenu()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    return-void
.end method

.method public onPause()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPause, Launcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->onPause()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWallpaperTilt()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWallpaperTiltSettingEnabled:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPeopleEdgeChangeReceiver:Lcom/sec/dtl/launcher/PeopleEdgeChangeReceiver;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPeopleEdgeChangeReceiver:Lcom/sec/dtl/launcher/PeopleEdgeChangeReceiver;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mPeopleEdgeChangeReceiver:Lcom/sec/dtl/launcher/PeopleEdgeChangeReceiver;

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    invoke-virtual {v2}, Lcom/sec/dtl/launcher/WallpaperScroller;->pause()V

    :cond_2
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mResumed:Z

    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mZeropageStarting:Z

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    sget-boolean v2, Lcom/android/launcher2/HomeView;->sIsDragState:Z

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeQuickoptionsPopup()V

    :cond_4
    invoke-direct {p0, v5}, Lcom/android/launcher2/Launcher;->setWallpaperRotation(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/AppFolderRemoveDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher2/AppFolderRemoveDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    :cond_5
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const/4 v3, 0x0

    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isSearchAppListShown()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isFolderOpenAnimationEnded()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderAnimator;->isAnimating()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v3, v3}, Lcom/android/launcher2/Folder;->close(ZZ)V

    :cond_3
    :goto_1
    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setMarketLabel()V

    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->setupOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    sput-boolean v3, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq v5, v6, :cond_3

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isSearchAppListShown()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isFolderOpenAnimationEnded()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v3, v3}, Lcom/android/launcher2/Folder;->close(ZZ)V

    goto :goto_1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {p3}, Lcom/android/launcher2/utils/PermissionUtils;->verifyPermissions([I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Launcher"

    const-string v4, "REQUEST_BACKUP_RESTORE, Permission is GRANTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getBackupRestoreIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/launcher2/XmlBackup;->backupRestoreService(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/launcher2/LauncherApplication;->setBackupRestoreIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v3, "Launcher"

    const-string v4, "REQUEST_BACKUP_RESTORE, Permission is denied"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-static {p3}, Lcom/android/launcher2/utils/PermissionUtils;->verifyPermissions([I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Launcher"

    const-string v4, "REQUEST_LAUCHER_EXTRACTOR, Permission is GRANTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/XmlBackup;->makeDefaultXml(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v3, "Launcher"

    const-string v4, "REQUEST_LAUCHER_EXTRACTOR, Permission is denied"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    invoke-static {p3}, Lcom/android/launcher2/utils/PermissionUtils;->verifyPermissions([I)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Launcher"

    const-string v4, "REQUEST_LAUCHER_START_OBSERVER, Permission is GRANTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->startZeroImageObserver()V

    goto :goto_0

    :cond_3
    const-string v3, "Launcher"

    const-string v4, "REQUEST_LAUCHER_START_OBSERVER, Permission is denied"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    invoke-static {p3}, Lcom/android/launcher2/utils/PermissionUtils;->verifyPermissions([I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Launcher"

    const-string v4, "REQUEST_LAUCHER_CAPTURE_ZEROPAGE, Permission is GRANTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->saveHomeZeroPageScreenshots()V

    goto :goto_0

    :cond_4
    const-string v3, "Launcher"

    const-string v4, "REQUEST_LAUCHER_CAPTURE_ZEROPAGE, Permission is denied"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    invoke-static {p3}, Lcom/android/launcher2/utils/PermissionUtils;->verifyPermissions([I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "Launcher"

    const-string v4, "REQUEST_LAUCHER_CAPTURE_QUICKVIEW, Permission is GRANTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace;->getZeroScreenShot(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_5
    const-string v3, "Launcher"

    const-string v4, "REQUEST_LAUCHER_CAPTURE_QUICKVIEW, Permission is denied"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_5
    invoke-static {p3}, Lcom/android/launcher2/utils/PermissionUtils;->verifyPermissions([I)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "Launcher"

    const-string v4, "REQUEST_LAUCHER_CAPTURE_HOME, Permission is GRANTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->startZeroImageObserver()V

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->BitmapCompress()V

    const/4 v3, 0x1

    :try_start_0
    sput-boolean v3, Lcom/android/launcher2/HomeView;->mZeroActivityLaunched:Z

    sget-object v3, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    const/high16 v4, 0x30200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v3, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    const v3, 0x7f05000a

    const v4, 0x7f05000b

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/Launcher;->overridePendingTransition(II)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mZeropageStarting:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/high16 v3, 0x7f090000

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    sget-boolean v3, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v3, :cond_6

    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch. intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    sget v4, Lcom/android/launcher2/Launcher;->NEXT_INDEX_OF_ZEROPAGE:I

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    sput-boolean v6, Lcom/android/launcher2/HomeView;->mZeroActivityLaunched:Z

    goto/16 :goto_0

    :cond_7
    array-length v3, p3

    if-lez v3, :cond_b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-static {p1}, Lcom/android/launcher2/utils/PermissionUtils;->getPermissions(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/android/launcher2/utils/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;Ljava/util/ArrayList;)I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/launcher2/utils/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v2, 0x1

    :cond_8
    if-eqz v2, :cond_9

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->showRequestDialog()V

    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mZeropageStarting:Z

    goto/16 :goto_0

    :cond_9
    :try_start_1
    sget-object v3, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    const/high16 v4, 0x30200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v3, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    const v3, 0x7f05000a

    const v4, 0x7f05000b

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/Launcher;->overridePendingTransition(II)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mZeropageStarting:Z

    const-string v3, "Launcher"

    const-string v4, "REQUEST_LAUCHER_CAPTURE_HOME, Permission is denied"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const/high16 v3, 0x7f090000

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    sget-boolean v3, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v3, :cond_a

    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch. intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    sget v4, Lcom/android/launcher2/Launcher;->NEXT_INDEX_OF_ZEROPAGE:I

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto/16 :goto_0

    :cond_b
    const-string v3, "Launcher"

    const-string v4, "Permission is not checked by interrupt"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onRestart()V
    .locals 3

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestart, Launcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/launcher2/Launcher;->mDragEndCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->onRestart()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->onRestart()V

    :cond_1
    invoke-super {p0}, Landroid/app/ActivityGroup;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 19

    const-string v3, "VerificationLog"

    const-string v4, "onResume"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume, Launcher: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p0}, Landroid/app/ActivityGroup;->onResume()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->setStatusBarColorIfNeeded()V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/Launcher;->mResumed:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/Launcher;->mPaused:Z

    sget-boolean v3, Lcom/android/launcher2/Launcher;->mBackToSetting:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurAnimation(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/Launcher;->mBackToSetting:Z

    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kids_home_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_home"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "high_text_contrast_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    sput-boolean v3, Lcom/android/launcher2/Launcher;->mIsEnableHighContrast:Z

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGalaxyLabs()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/launcher2/LauncherApplication;->sNeedModeChange:Z

    if-eqz v3, :cond_5

    const-string v3, "Launcher"

    const-string v4, "Launcher need mode change for Galaxy Labs"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/LauncherApplication;->sNeedModeChange:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v16

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v3, "galaxylabs_home_only_mode"

    const/4 v4, 0x0

    invoke-interface {v15, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/LauncherProvider;->getCurrentDBHomeOnlyMode()Z

    move-result v3

    if-eq v12, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->setVisibility(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    :cond_2
    invoke-virtual {v9, v12}, Lcom/android/launcher2/LauncherApplication;->writeHomeOnlyModeEnabled(Z)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/android/launcher2/LauncherProvider;->galaxylabsfeature(Z)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v3

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->isCloseAnimating()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->onResume()V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->clearTypedText()V

    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/Utilities;->broadcastStkIntent(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v3, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherModel;->startLoader()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/Launcher;->mIsSettingForIconTrayChanged:Z

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->closeFolder()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/Launcher;->mIsSettingForIconTrayChanged:Z

    :cond_b
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.launcher.action.HOME_MODE_CHANGE"

    invoke-virtual {v11, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "currentMode"

    const-string v4, "twlauncher"

    invoke-virtual {v11, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    const-string v3, "com.android.launcher2.ALL_APPS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-nez v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    :cond_c
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "StartEdit"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/launcher2/Launcher;->mIsStartSetting:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "PackageName"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/Launcher;->mSettingPackageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ClassName"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/Launcher;->mSettingActivityName:Ljava/lang/String;

    :cond_e
    sget-object v3, Lcom/android/launcher2/Launcher;->mPendingIntent:Landroid/content/Intent;

    if-eqz v3, :cond_f

    sget-object v3, Lcom/android/launcher2/Launcher;->mPendingIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_f

    sget-object v3, Lcom/android/launcher2/Launcher;->mPendingIntent:Landroid/content/Intent;

    const-string v4, "StartEdit"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/launcher2/Launcher;->mIsStartSetting:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "PackageName"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/Launcher;->mSettingPackageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ClassName"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/Launcher;->mSettingActivityName:Ljava/lang/String;

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/launcher2/HomeView;->mHomeKeyPress:Z

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v3}, Lcom/sec/dtl/launcher/Talk;->onResume()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWallpaperTilt()Z

    move-result v3

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/Launcher;->mWallpaperTiltSettingEnabled:Z

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mPeopleEdgeChangeReceiver:Lcom/sec/dtl/launcher/PeopleEdgeChangeReceiver;

    if-nez v3, :cond_10

    new-instance v3, Lcom/sec/dtl/launcher/PeopleEdgeChangeReceiver;

    invoke-direct {v3}, Lcom/sec/dtl/launcher/PeopleEdgeChangeReceiver;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Launcher;->mPeopleEdgeChangeReceiver:Lcom/sec/dtl/launcher/PeopleEdgeChangeReceiver;

    :cond_10
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.samsung.android.app.peoplestripeservice.CHANGED"

    invoke-virtual {v10, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mPeopleEdgeChangeReceiver:Lcom/sec/dtl/launcher/PeopleEdgeChangeReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/Launcher;->pressHomeKeyInLauncher:Z

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/dtl/launcher/WallpaperScroller;->resume(Z)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/Launcher;->pressHomeKeyInLauncher:Z

    :cond_11
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mWindowToken:Landroid/os/IBinder;

    if-nez v3, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_12

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Launcher;->mWindowToken:Landroid/os/IBinder;

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mWindowToken:Landroid/os/IBinder;

    if-eqz v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    if-eqz v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Lcom/sec/dtl/launcher/WallpaperScroller;->setWindowToken(Landroid/os/IBinder;)V

    :cond_13
    :goto_7
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/Launcher;->setWallpaperRotation(I)V

    sget-boolean v3, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v3, :cond_14

    new-instance v14, Landroid/util/DisplayMetrics;

    invoke-direct {v14}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resumed Orientation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resumed small width : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resumed density : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v14, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->addAnyPendingWidgetsToWorkspace()V

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v10, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_15

    new-instance v3, Lcom/android/launcher2/Launcher$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/launcher2/Launcher$3;-><init>(Lcom/android/launcher2/Launcher;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Launcher;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->setIconTrayIfNeeded()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->removeHoverScrollHandler()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    if-nez v3, :cond_17

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->isQuickViewWorkspaceOpend()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getBackgroundDarken()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_17

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getIsDragOccuring()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v3, v4, :cond_17

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/IconMoveContainer;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_17

    :cond_16
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->setBackgroundDarken(F)V

    :cond_17
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->isQuickViewWorkspaceOpend()Z

    move-result v3

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->setZeroPageFirst()V

    :cond_18
    invoke-static {}, Lcom/android/launcher2/Logging;->getZeroPageStayTime()J

    move-result-wide v6

    const-wide/16 v4, -0x1

    cmp-long v3, v6, v4

    if-eqz v3, :cond_19

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    const-string v4, "ZPST"

    invoke-static {v6, v7}, Lcom/android/launcher2/Logging;->classifyZeroPageStayTime(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_19
    sget-boolean v3, Lcom/android/launcher2/Launcher;->mIsStartSetting:Z

    if-eqz v3, :cond_3

    const-string v3, "Launcher"

    const-string v4, "Starting edit mode by setting menu!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/launcher2/QuickViewWorkspace;->mShowGridState:Z

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->getScreenGridSelectMenu()Lcom/android/launcher2/HomeScreenGridSelectMenu;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->cancelGridChange(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/HomeScreenOptionMenu;->hideScreenGridMenu(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/HomeScreenOptionMenu;->setVisibility(I)V

    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    if-eqz v3, :cond_1b

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/PageIndicatorManager;->layoutPageIndicator()V

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v3, v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/IconMoveContainer;->setVisibility(I)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->remainOrRemovePlusPage()V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/launcher2/Launcher$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lcom/android/launcher2/Launcher$4;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Workspace;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v13, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_4

    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v3, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    sget-boolean v3, Lcom/android/launcher2/HomeView;->sIsDragState:Z

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->isWaitingForResult()Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->isActivityResultResume()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_4

    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    goto/16 :goto_5

    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/dtl/launcher/WallpaperScroller;->resume(Z)V

    goto/16 :goto_6

    :cond_21
    new-instance v3, Lcom/sec/dtl/launcher/WallpaperScroller;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/dtl/launcher/WallpaperScroller;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/dtl/launcher/WallpaperScroller;->resume(Z)V

    goto/16 :goto_6

    :cond_22
    const-string v3, "Launcher"

    const-string v4, "wallpaperscroller - mWindowToken is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :catch_0
    move-exception v3

    goto/16 :goto_1

    :catch_1
    move-exception v3

    goto/16 :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "extra_home_view_hidden"

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "was_in_quick_view"

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getQuickViewWorkspaceOpen()Z

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "extra_menu_widgets_shown"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getCurrentFragment()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public onSearchRequested()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/android/launcher2/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    const v0, 0x7f050004

    const v1, 0x7f050005

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->overridePendingTransition(II)V

    return v2
.end method

.method protected onStart()V
    .locals 4

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStart, Launcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/ActivityGroup;->onStart()V

    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getFestivalScreenCount()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widget.myeventwidget.FESTIVAL_PERMISSION_CHECK_CALLBACK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mStoped:Z

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->onStart()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTransitedRotation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAnimatedRotationHelper:Lcom/android/launcher2/ar/ARHelper;

    invoke-virtual {v1}, Lcom/android/launcher2/ar/ARHelper;->enableRotationAnimation()V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop, Launcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTransitedRotation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAnimatedRotationHelper:Lcom/android/launcher2/ar/ARHelper;

    invoke-virtual {v1}, Lcom/android/launcher2/ar/ARHelper;->disableRotationAnimation()V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->onStop()V

    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->mResumed:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mStoped:Z

    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportLauncherHighPriority()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_2
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMemory. Level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onWindowFocusChanged(Z)V

    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mHasFocus:Z

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mUninstallIntentSent:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->readdRemoveReadyItem()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher2/utils/LiveIconUtils;->clearLiveIconBitmap(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public readdRemoveReadyItem()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mUninstallIntentSent:Z

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mRemoveReadyItem:Lcom/android/launcher2/BaseItem;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mRemoveReadyItem:Lcom/android/launcher2/BaseItem;

    instance-of v3, v3, Lcom/android/launcher2/HomeItem;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mRemoveReadyItem:Lcom/android/launcher2/BaseItem;

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iget-wide v4, v3, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x64

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mRemoveReadyItem:Lcom/android/launcher2/BaseItem;

    iget v4, v4, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mRemoveReadyItem:Lcom/android/launcher2/BaseItem;

    instance-of v3, v3, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mRemoveReadyItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mRemoveReadyItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3, v8}, Lcom/android/launcher2/BaseItem;->setNeetToIconVI(Z)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mRemoveReadyItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    :cond_2
    iput-object v9, p0, Lcom/android/launcher2/Launcher;->mRemoveReadyItem:Lcom/android/launcher2/BaseItem;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mRemoveReadyItem:Lcom/android/launcher2/BaseItem;

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iget-wide v4, v3, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x65

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mRemoveReadyItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mRemoveReadyItem:Lcom/android/launcher2/BaseItem;

    iget-object v4, v4, Lcom/android/launcher2/BaseItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher2/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mRemoveReadyItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mRemoveReadyItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3, v8}, Lcom/android/launcher2/BaseItem;->setNeetToIconVI(Z)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mRemoveReadyItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    :cond_5
    iput-object v9, p0, Lcom/android/launcher2/Launcher;->mRemoveReadyItem:Lcom/android/launcher2/BaseItem;

    goto/16 :goto_0
.end method

.method public removeStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public restorePopupMenu()Z
    .locals 4

    const/4 v1, 0x1

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const v3, 0x7f1100a2

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v2}, Lcom/android/launcher2/popup/PopupMenu;->show()V

    sput-boolean v1, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public runDragEndCallBackEvent()V
    .locals 2

    sget-object v1, Lcom/android/launcher2/Launcher;->mDragEndCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/launcher2/Launcher;->mDragEndCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/launcher2/Launcher;->mDragEndCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/launcher2/Launcher;->mDragEndCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public saveCurrentTextColor(I)V
    .locals 4

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "need_dark_font"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveHomeZeroPageScreenshots()V
    .locals 17

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const-string v12, "Launcher"

    const-string v13, "saveHomeZeroPageScreenshots() call"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v12, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sget v13, Lcom/android/launcher2/Launcher;->sSoftKeySize:I

    add-int v2, v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a02c8

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :try_start_0
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string v13, "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/briefing.jpg"

    invoke-direct {v11, v12, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    if-eq v12, v2, :cond_0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sget v13, Lcom/android/launcher2/Launcher;->sSoftKeySize:I

    sub-int v13, v2, v13

    if-ne v12, v13, :cond_3

    :cond_0
    const/4 v5, 0x1

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget v15, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v9, v13, v14, v15, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-direct {v10, v12, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v12

    if-eqz v12, :cond_2

    sget-boolean v12, Lcom/android/launcher2/Launcher;->iszerofile:Z

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    invoke-static {v12}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v12

    sget v13, Lcom/android/launcher2/Launcher;->INDEX_OF_ZEROPAGE:I

    invoke-virtual {v12, v13}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/android/launcher2/CellLayout;

    move-object v1, v0

    iget-boolean v12, v1, Lcom/android/launcher2/CellLayout;->mIsZeroPageCell:Z

    if-eqz v12, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportStatusBarMarginDisable()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v7, v0

    if-eqz v5, :cond_5

    const/4 v12, 0x0

    :goto_1
    iput v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, v7}, Lcom/android/launcher2/CellLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {v1, v10}, Lcom/android/launcher2/CellLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int v13, v2, v8

    if-ne v12, v13, :cond_4

    const/4 v5, 0x0

    move-object v10, v11

    goto :goto_0

    :cond_4
    const-string v12, "Launcher"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ZeroImg Size error : zeroImage height = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", disHeight = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", sSoftKeySize = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/android/launcher2/Launcher;->sSoftKeySize:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v10, v11

    goto :goto_2

    :cond_5
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a02c8

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v12

    goto :goto_1

    :cond_6
    :try_start_5
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v12

    if-eqz v12, :cond_7

    sget-boolean v12, Lcom/android/launcher2/Launcher;->iszerofile:Z

    if-eqz v12, :cond_7

    const/4 v12, 0x0

    invoke-static {v12}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v12

    sget v13, Lcom/android/launcher2/Launcher;->INDEX_OF_ZEROPAGE:I

    invoke-virtual {v12, v13}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/android/launcher2/CellLayout;

    move-object v1, v0

    iget-boolean v12, v1, Lcom/android/launcher2/CellLayout;->mIsZeroPageCell:Z

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/QuickViewWorkspace;->getDefaultZeroImg()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/launcher2/CellLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_7
    move-object v10, v11

    goto/16 :goto_2

    :catch_0
    move-exception v4

    :goto_3
    const-string v12, "Launcher"

    const-string v13, "fail to create zeroImage BitmapDrawable"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_1
    move-exception v4

    move-object v10, v11

    goto :goto_3
.end method

.method public saveToastPopup(Ljava/lang/Boolean;)V
    .locals 4

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "add.toast.popup.dismissed.key"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveToastPopupForDisableDialog(Ljava/lang/Boolean;)V
    .locals 4

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "disable.toast.popup.dismissed.key"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method setClickedView(Lcom/android/launcher2/FolderIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mLockedFolderIconView:Lcom/android/launcher2/FolderIconView;

    return-void
.end method

.method public setDefaultZeroPageImage()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    sget v2, Lcom/android/launcher2/Launcher;->INDEX_OF_ZEROPAGE:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iget-boolean v1, v0, Lcom/android/launcher2/CellLayout;->mIsZeroPageCell:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/ZeroPageUtils;->getZeroPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ZeroPageListItem;

    invoke-virtual {v1}, Lcom/android/launcher2/ZeroPageListItem;->getPreview()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setEnableHotWord(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotwordServiceClient()Lcom/google/android/hotword/client/HotwordServiceClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_2

    sget v1, Lcom/android/launcher2/Launcher;->mIsBabyCryingEnable:I

    if-nez v1, :cond_1

    sget v1, Lcom/android/launcher2/Launcher;->mIsDoorbellEnable:I

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v1}, Lcom/sec/dtl/launcher/Talk;->isTalkbackEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotwordServiceClient()Lcom/google/android/hotword/client/HotwordServiceClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/hotword/client/HotwordServiceClient;->requestHotwordDetection(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotwordServiceClient()Lcom/google/android/hotword/client/HotwordServiceClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/hotword/client/HotwordServiceClient;->requestHotwordDetection(Z)V

    goto :goto_0

    :cond_2
    const-string v1, "Launcher"

    const-string v2, "setEnableHotWord is called by other thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEnableMenuButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method setExtraClear()V
    .locals 2

    sget-boolean v0, Lcom/android/launcher2/Launcher;->mIsStartSetting:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->mIsStartSetting:Z

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "StartEdit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "Launcher"

    const-string v1, "setExtraClear()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setLoadOnResume()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mStoped:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setLockedViewFromDrag(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mLockedViewFromDrag:Landroid/view/View;

    return-void
.end method

.method setParamsBeforeDrag(Lcom/android/launcher2/BackupItemsRecords;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mBackupItemsRecord:Lcom/android/launcher2/BackupItemsRecords;

    return-void
.end method

.method public setRemoveReadyItem(Lcom/android/launcher2/BaseItem;)V
    .locals 6

    if-nez p1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mRemoveReadyItem:Lcom/android/launcher2/BaseItem;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x64

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mRemoveReadyItem:Lcom/android/launcher2/BaseItem;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mRemoveReadyItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_0

    :cond_3
    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    goto :goto_1
.end method

.method public setShowEmptyPageMessagePref(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mShowEmptyPageMsg:Z

    return-void
.end method

.method setStateBeforeClick(Lcom/android/launcher2/Workspace$State;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mStateBeforeClick:Lcom/android/launcher2/Workspace$State;

    return-void
.end method

.method public setStatusBarColorIfNeeded()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "need_dark_statusbar"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    and-int/lit16 v2, v2, -0x2001

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method setSystemUiTransparency(Z)V
    .locals 8

    const v7, -0x7ffff400

    const/high16 v6, -0x80000000

    const v5, 0x4000c00

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz p1, :cond_1

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android.wallpaper.settings_systemui_transparency"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/view/Window;->setFlags(II)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launcher::setSystemUiTransparency(): getSystemUiVisibility() after setting  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string v3, "Launcher"

    const-string v4, "setSystemUiTransparency.SettingNotFoundException : set as TRUE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    goto :goto_1
.end method

.method public setTextPageIndicatorColorIfNeeded()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "need_dark_font"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->changeTextColorIfNeeded(I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->changePageIndicatorColorIfNeeded(I)V

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "need_dark_color Salecode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTransitionToAllApps(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    return-void
.end method

.method public setUninstallIntentSent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mUninstallIntentSent:Z

    return-void
.end method

.method public setUseAtoZButton(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/launcher2/Launcher;->mUseAtoZButton:Z

    return-void
.end method

.method public setWhichTransitionEffect(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->NONE:Lcom/android/launcher2/PagedView$TransitionEffect;

    :goto_0
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting default transition effect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Workspace;->setDefaultTransitionEffect(Lcom/android/launcher2/PagedView$TransitionEffect;)V

    :cond_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->NONE:Lcom/android/launcher2/PagedView$TransitionEffect;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->CASCADE:Lcom/android/launcher2/PagedView$TransitionEffect;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->OUTERCUBE:Lcom/android/launcher2/PagedView$TransitionEffect;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->INNERCUBE:Lcom/android/launcher2/PagedView$TransitionEffect;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->CAROUSAL:Lcom/android/launcher2/PagedView$TransitionEffect;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->PLAIN:Lcom/android/launcher2/PagedView$TransitionEffect;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->CONVEYOR:Lcom/android/launcher2/PagedView$TransitionEffect;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->SPIRAL:Lcom/android/launcher2/PagedView$TransitionEffect;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public shouldDisablePopupRepeat()Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "disable.toast.popup.dismissed.key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public shouldToastRepeat()Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "add.toast.popup.dismissed.key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public showAllApps()V
    .locals 13

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "Launcher"

    const-string v8, "showAllApps() : mTransitionAnimator.isRunning()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v4, Lcom/android/launcher2/HomeScreenOptionMenu;->isWidgetTab:Z

    sget-wide v2, Lcom/android/launcher2/Launcher;->SHOW_ALL_APPS_TRANSITION_DURATION:J

    if-eqz v4, :cond_2

    sget-wide v2, Lcom/android/launcher2/Launcher;->SHOW_WIDGETS_TRANSITION_DURATION:J

    :cond_2
    invoke-static {}, Lcom/android/launcher2/utils/LiveIconUtils;->getClockPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher2/utils/LiveIconUtils;->clearLiveIconBitmap(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    long-to-int v8, v2

    invoke-virtual {v7, v8}, Lcom/android/launcher2/LauncherApplication;->acquireTouchBooster(I)V

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->updateRunning()V

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->closeFolder()V

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->onPreShowAllApps()V

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7, v12}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->onShowAllApps()V

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->cancel()V

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher$StateAnimatorProvider;

    if-eqz v4, :cond_7

    invoke-interface {v5, v0}, Lcom/android/launcher2/Launcher$StateAnimatorProvider;->collectShowWidgetListAnimators(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->selectWidgetsTab()V

    :cond_6
    sput-boolean v10, Lcom/android/launcher2/HomeScreenOptionMenu;->isWidgetTab:Z

    goto :goto_1

    :cond_7
    invoke-interface {v5, v0}, Lcom/android/launcher2/Launcher$StateAnimatorProvider;->collectShowAllAppsAnimators(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_8
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v7, v8, :cond_9

    sget-boolean v7, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v7, :cond_f

    const v7, 0x7f06000e

    invoke-static {p0, v7}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    :goto_3
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    sget-wide v8, Lcom/android/launcher2/Launcher;->SHOW_ALL_APPS_TRANSITION_DURATION:J

    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-boolean v7, p0, Lcom/android/launcher2/Launcher;->mFirstAppsAnim:Z

    if-nez v7, :cond_a

    iget-boolean v7, p0, Lcom/android/launcher2/Launcher;->mFirstWidgetsAnim:Z

    if-eqz v7, :cond_b

    :cond_a
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7, v11}, Lcom/android/launcher2/MenuView;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7, v10}, Lcom/android/launcher2/MenuView;->setVisibility(I)V

    :cond_b
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    if-eqz v4, :cond_c

    invoke-virtual {v6, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_c
    new-instance v7, Lcom/android/launcher2/Launcher$6;

    invoke-direct {v7, p0}, Lcom/android/launcher2/Launcher$6;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-boolean v12, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    iput-boolean v12, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    sput-boolean v12, Lcom/android/launcher2/Launcher;->sDisableOrUninstallAppFromApps:Z

    iget-boolean v7, p0, Lcom/android/launcher2/Launcher;->mFirstAppsAnim:Z

    if-eqz v7, :cond_d

    if-eqz v4, :cond_e

    :cond_d
    iget-boolean v7, p0, Lcom/android/launcher2/Launcher;->mFirstWidgetsAnim:Z

    if-eqz v7, :cond_11

    if-eqz v4, :cond_11

    :cond_e
    if-eqz v4, :cond_10

    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mFirstWidgetsAnim:Z

    :goto_4
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/android/launcher2/Launcher$7;

    invoke-direct {v8, p0, v6}, Lcom/android/launcher2/Launcher$7;-><init>(Lcom/android/launcher2/Launcher;Landroid/animation/AnimatorSet;)V

    const-wide/16 v10, 0x64

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_5
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v7, v8, :cond_0

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurAnimation(Z)V

    goto/16 :goto_0

    :cond_f
    const v7, 0x7f06000b

    invoke-static {p0, v7}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_3

    :cond_10
    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mFirstAppsAnim:Z

    goto :goto_4

    :cond_11
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getAlpha()F

    move-result v7

    cmpl-float v7, v7, v11

    if-nez v7, :cond_12

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lcom/android/launcher2/MenuView;->setAlpha(F)V

    const-string v7, "Launcher"

    const-string v8, "MenuView is VISIBLE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7, v10}, Lcom/android/launcher2/MenuView;->setVisibility(I)V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_5
.end method

.method startActivitySafely(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 22

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isSafeMode()Z

    move-result v18

    if-eqz v18, :cond_2

    if-eqz p3, :cond_2

    const/4 v6, 0x1

    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/android/launcher2/AppItem;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v18, p3

    check-cast v18, Lcom/android/launcher2/AppItem;

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    const/4 v6, 0x0

    :cond_0
    :goto_0
    if-nez v6, :cond_2

    const v18, 0x7f090021

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    const/16 v18, 0x0

    :goto_1
    return v18

    :cond_1
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/android/launcher2/HomeShortcutItem;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v8, p3

    check-cast v8, Lcom/android/launcher2/HomeShortcutItem;

    iget v0, v8, Lcom/android/launcher2/HomeShortcutItem;->isDisabled:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    const/high16 v18, 0x10000000

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const-string v19, "APP_LAUNCH"

    const/16 v20, 0x15

    invoke-static/range {v18 .. v20}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v4

    if-eqz v4, :cond_3

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_3
    :goto_2
    :try_start_2
    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v17

    const-string v18, "profile"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    const-string v18, "profile"

    const-wide/16 v20, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Lcom/android/launcher2/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v16

    :cond_4
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const/4 v13, 0x0

    if-eqz v7, :cond_6

    sget-boolean v18, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v18, :cond_5

    const-string v18, "Launcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "shortcut extras:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v18, "shortcutIntent"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v9

    if-eqz v9, :cond_6

    const/16 v18, 0x0

    :try_start_3
    move/from16 v0, v18

    invoke-static {v9, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v13

    :cond_6
    :goto_4
    if-eqz v13, :cond_9

    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    :goto_5
    const/16 v18, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v5

    const-string v18, "Launcher"

    const-string v19, "appLauncherBooster is failed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_1
    move-exception v5

    const/high16 v18, 0x7f090000

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    sget-boolean v18, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v18, :cond_7

    const-string v18, "Launcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unable to launch. tag="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " intent="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_6
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_8
    :try_start_5
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/android/launcher2/BaseItem;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p3

    check-cast v0, Lcom/android/launcher2/BaseItem;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/BaseItem;->getUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v16

    goto/16 :goto_3

    :catch_2
    move-exception v5

    const-string v18, "Launcher"

    const-string v19, "failed to parse shortcut intent URI"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_3
    move-exception v5

    const/high16 v18, 0x7f090000

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    sget-boolean v18, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v18, :cond_7

    const-string v18, "Launcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Launcher does not have the permission to launch "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "or use the exported attribute for this activity. "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "tag="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " intent="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_9
    if-eqz v16, :cond_a

    :try_start_6
    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    :cond_a
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v11

    :try_start_7
    new-instance v18, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct/range {v18 .. v18}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/app/ActivityOptions;->semMakeCustomScaleUpAnimation(Landroid/view/View;II)Landroid/app/ActivityOptions;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {v11}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    :try_end_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_5

    :catch_4
    move-exception v5

    const/high16 v18, 0x7f090000

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    sget-boolean v18, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v18, :cond_7

    const-string v18, "Launcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unable to launch  for disabled profile UserHandle tag="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " intent="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " user:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    :catch_5
    move-exception v5

    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-static {v11}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto/16 :goto_5

    :catchall_0
    move-exception v18

    invoke-static {v11}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    throw v18

    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/android/launcher2/compat/LauncherAppsCompat;->startActivityForProfile(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_5
.end method

.method public startActivityWithTransitionForHeadlines(Landroid/content/Intent;Z)V
    .locals 6

    const/high16 v4, 0x7f090000

    const/4 v5, 0x0

    const/high16 v2, 0x30200000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/Launcher;->updateCaptureFile(IZ)V

    sget-boolean v2, Lcom/android/launcher2/Launcher;->mStartZeorpageByIndicator:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/launcher2/Launcher;->mStartZeorpageByIndicator:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    const v2, 0x7f050006

    const v3, 0x7f050009

    invoke-static {p0, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    sget-boolean v2, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v2, :cond_2

    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch. intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    sget v3, Lcom/android/launcher2/Launcher;->NEXT_INDEX_OF_ZEROPAGE:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    sput-boolean v5, Lcom/android/launcher2/HomeView;->mZeroActivityLaunched:Z

    goto :goto_0

    :cond_3
    const v2, 0x7f050007

    const v3, 0x7f050008

    :try_start_1
    invoke-static {p0, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    sget-boolean v2, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v2, :cond_4

    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launcher does not have the permission to launch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "or use the exported attribute for this activity. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    sget v3, Lcom/android/launcher2/Launcher;->NEXT_INDEX_OF_ZEROPAGE:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    sput-boolean v5, Lcom/android/launcher2/HomeView;->mZeroActivityLaunched:Z

    goto/16 :goto_0
.end method

.method public startDownloadZeroPage(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.mobilesrepublic.sohu.launcher"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "samsungapps://ProductDetail/com.mobilesrepublic.sohu.launcher"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    const-string v1, "type"

    const-string v2, "cover"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x14000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "samsungapps://ProductDetail/flipboard.boxer.app"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "source"

    const-string v2, "launcher-search"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public startWidgetConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/appwidget/AppWidgetHost;Lcom/android/launcher2/Launcher$ActivityResultCallback;)V
    .locals 7

    const/4 v5, 0x5

    invoke-static {p0}, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/AppWidgetManagerCompat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v6, v5, p4}, Lcom/android/launcher2/LauncherApplication;->putActivityCallbacks(ILcom/android/launcher2/Launcher$ActivityResultCallback;)V

    move-object v1, p1

    move v2, p2

    move-object v3, p0

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V

    return-void
.end method

.method public startZeroImageObserver()V
    .locals 9

    new-instance v0, Ljava/io/File;

    const-string v5, "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v5, "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/briefing.jpg"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    :try_start_0
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mZeroPageScreenshotsObserver:Landroid/os/FileObserver;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mZeroPageScreenshotsObserver:Landroid/os/FileObserver;

    invoke-virtual {v5}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher2/Launcher;->mZeroPageScreenshotsObserver:Landroid/os/FileObserver;

    :cond_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v5, "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    move-object v3, v4

    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mZeroPageScreenshotsObserver:Landroid/os/FileObserver;

    if-nez v5, :cond_4

    new-instance v5, Lcom/android/launcher2/Launcher$26;

    const-string v6, "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/briefing.jpg"

    invoke-direct {v5, p0, v6}, Lcom/android/launcher2/Launcher$26;-><init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/launcher2/Launcher;->mZeroPageScreenshotsObserver:Landroid/os/FileObserver;

    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mZeroPageScreenshotsObserver:Landroid/os/FileObserver;

    invoke-virtual {v5}, Landroid/os/FileObserver;->startWatching()V

    return-void

    :catch_0
    move-exception v1

    :try_start_3
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startZeroImageObserver write IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v4

    :goto_2
    :try_start_4
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startZeroImageObserver FileNotFoundException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startZeroImageObserver close IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v1

    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startZeroImageObserver close IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    goto/16 :goto_1

    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_5
    :goto_4
    throw v5

    :catch_4
    move-exception v1

    const-string v6, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startZeroImageObserver close IOException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/launcher2/Launcher;->iszerofile:Z

    goto/16 :goto_1

    :catchall_1
    move-exception v5

    move-object v3, v4

    goto :goto_3

    :catch_5
    move-exception v1

    goto/16 :goto_2
.end method

.method public terminateGameHome()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mGameHomeManager:Lcom/android/launcher2/gamehome/GameHomeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mGameHomeManager:Lcom/android/launcher2/gamehome/GameHomeManager;

    invoke-virtual {v0}, Lcom/android/launcher2/gamehome/GameHomeManager;->onTerminate()V

    :cond_0
    return-void
.end method

.method public unbindAllHomeItems()V
    .locals 6

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/IconMoveContainer;->clearItems()V

    :cond_2
    sget-object v1, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    goto :goto_0
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0x6f

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/android/launcher2/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;ILcom/android/launcher2/Launcher$ActivityResultCallback;)V

    return-void
.end method

.method public updateCaptureFile(IZ)V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScreenShot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/utils/PermissionUtils;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/android/launcher2/utils/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v1

    if-ne v1, v5, :cond_2

    if-eqz p2, :cond_0

    invoke-static {v0, p1}, Lcom/android/launcher2/utils/PermissionUtils;->requestPermissions(Ljava/util/ArrayList;I)V

    :cond_0
    if-ne p1, v6, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/QuickViewWorkspace;->setZeroPageBgImageFile(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const-string v2, "Launcher"

    const-string v3, "updateScreenShot: PERMISSIONS_STORAGE, CHECK_ERROR_PERMISSION"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->startZeroImageObserver()V

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    if-ne p1, v2, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->saveHomeZeroPageScreenshots()V

    goto :goto_0

    :cond_5
    if-ne p1, v6, :cond_6

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getZeroScreenShot(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x6

    if-ne p1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->BitmapCompress()V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->startZeroImageObserver()V

    sput-boolean v5, Lcom/android/launcher2/HomeView;->mZeroActivityLaunched:Z

    sget-object v2, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    const/high16 v3, 0x30200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v2, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    const v2, 0x7f05000a

    const v3, 0x7f05000b

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/Launcher;->overridePendingTransition(II)V

    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mZeropageStarting:Z

    goto :goto_0
.end method

.method public waitUntilDragEnd(Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->waitUntilDragEnd(Ljava/lang/Runnable;Z)Z

    move-result v0

    return v0
.end method

.method public waitUntilDragEnd(Ljava/lang/Runnable;Z)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getIsDragOccuring()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "Launcher"

    const-string v2, "waitUntilDragEnd(), add runnable event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    :cond_2
    sget-object v1, Lcom/android/launcher2/Launcher;->mDragEndCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_3
    sget-object v1, Lcom/android/launcher2/Launcher;->mDragEndCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_0
.end method
