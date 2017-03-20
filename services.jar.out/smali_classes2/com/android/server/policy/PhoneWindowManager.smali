.class public Lcom/android/server/policy/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManager$10;,
        Lcom/android/server/policy/PhoneWindowManager$11;,
        Lcom/android/server/policy/PhoneWindowManager$12;,
        Lcom/android/server/policy/PhoneWindowManager$13;,
        Lcom/android/server/policy/PhoneWindowManager$14;,
        Lcom/android/server/policy/PhoneWindowManager$1;,
        Lcom/android/server/policy/PhoneWindowManager$2;,
        Lcom/android/server/policy/PhoneWindowManager$3;,
        Lcom/android/server/policy/PhoneWindowManager$4;,
        Lcom/android/server/policy/PhoneWindowManager$5;,
        Lcom/android/server/policy/PhoneWindowManager$6;,
        Lcom/android/server/policy/PhoneWindowManager$7;,
        Lcom/android/server/policy/PhoneWindowManager$8;,
        Lcom/android/server/policy/PhoneWindowManager$9;,
        Lcom/android/server/policy/PhoneWindowManager$HdmiControl;,
        Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;,
        Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;,
        Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;,
        Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;,
        Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;,
        Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_WIFI_DISPLAY_VIDEO:Ljava/lang/String; = "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

.field static final APPLICATION_ABOVE_SUB_PANEL_SUBLAYER:I = 0x3

.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field private static final BRIGHTNESS_STEPS:I = 0xa

.field static DEBUG:Z = false

.field static DEBUG_INPUT:Z = false

.field static DEBUG_KEYGUARD:Z = false

.field static DEBUG_LAYOUT:Z = false

.field static DEBUG_STARTING_WINDOW:Z = false

.field static DEBUG_WAKEUP:Z = false

.field private static final DISMISS_KEYGUARD_CONTINUE:I = 0x2

.field private static final DISMISS_KEYGUARD_NONE:I = 0x0

.field private static final DISMISS_KEYGUARD_START:I = 0x1

.field static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field static final DOUBLE_TAP_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = false

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final LAST_LONG_PRESS_HOME_BEHAVIOR:I = 0x2

.field static final LONG_PRESS_BACK_FREEFORM_MODE:I = 0x2

.field static final LONG_PRESS_BACK_GO_TO_VOICE_ASSIST:I = 0x1

.field static final LONG_PRESS_BACK_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_ASSIST:I = 0x2

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM:I = 0x3

.field private static final MSG_BACK_LONG_PRESS:I = 0x12

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_DISPATCH_SHOW_GLOBAL_ACTIONS:I = 0xa

.field private static final MSG_DISPATCH_SHOW_RECENTS:I = 0x9

.field private static final MSG_DISPOSE_INPUT_CONSUMER:I = 0x13

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field private static final MSG_HIDE_BOOT_MESSAGE:I = 0xb

.field private static final MSG_KEYGUARD_DRAWN_COMPLETE:I = 0x5

.field private static final MSG_KEYGUARD_DRAWN_TIMEOUT:I = 0x6

.field private static final MSG_LAUNCH_VOICE_ASSIST_WITH_WAKE_LOCK:I = 0xc

.field private static final MSG_NOTIFY_FREEFORM_MODE_CHANGE:I = 0x65

.field private static final MSG_NOTIFY_TOGGLE_SPLIT_SCREEN_TIMEOUT:I = 0x66

.field private static final MSG_POWER_DELAYED_PRESS:I = 0xd

.field private static final MSG_POWER_LONG_PRESS:I = 0xe

.field private static final MSG_REQUEST_TRANSIENT_BARS:I = 0x10

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_NAVIGATION:I = 0x1

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_STATUS:I = 0x0

.field private static final MSG_SHOW_TV_PICTURE_IN_PICTURE_MENU:I = 0x11

.field private static final MSG_UPDATE_DREAMING_SLEEP_TOKEN:I = 0xf

.field private static final MSG_WINDOW_MANAGER_DRAWN_COMPLETE:I = 0x7

.field static final MULTI_PRESS_POWER_BRIGHTNESS_BOOST:I = 0x2

.field static final MULTI_PRESS_POWER_CURTAIN_MODE:I = 0x3

.field static final MULTI_PRESS_POWER_NOTHING:I = 0x0

.field static final MULTI_PRESS_POWER_PANIC_MODE:I = 0x5

.field static final MULTI_PRESS_POWER_REASON_PANIC_MODE:Ljava/lang/String; = "PanicMode"

.field static final MULTI_PRESS_POWER_SOS_MESSAGE_MODE:I = 0x4

.field static final MULTI_PRESS_POWER_THEATER_MODE:I = 0x1

.field private static final NAV_BAR_BOTTOM:I = 0x0

.field private static final NAV_BAR_LEFT:I = 0x2

.field static final NAV_BAR_OPAQUE_WHEN_FREEFORM_OR_DOCKED:I = 0x0

.field private static final NAV_BAR_RIGHT:I = 0x1

.field static final NAV_BAR_TRANSLUCENT_WHEN_FREEFORM_OPAQUE_OTHERWISE:I = 0x1

.field static final NAV_BAR_TRANSPARENT_WHEN_FREEFORM_OR_DOCKED:I = 0x63

.field private static final PANIC_GESTURE_EXPIRATION:J = 0x7530L

.field static final PRINT_ANIM:Z = false

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final SHORT_PRESS_POWER_GO_HOME:I = 0x4

.field static final SHORT_PRESS_POWER_GO_TO_SLEEP:I = 0x1

.field static final SHORT_PRESS_POWER_NOTHING:I = 0x0

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP:I = 0x2

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME:I = 0x3

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP:I = 0x0

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME:I = 0x1

.field static final SHORT_PRESS_WINDOW_NOTHING:I = 0x0

.field static final SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE:I = 0x1

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_UI_CHANGING_LAYOUT:I = -0x3fff7ff2

.field private static final SYSUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final SYSUI_SCREENSHOT_ERROR_RECEIVER:Ljava/lang/String; = "com.android.systemui.screenshot.ScreenshotServiceErrorReceiver"

.field private static final SYSUI_SCREENSHOT_SERVICE:Ljava/lang/String; = "com.android.systemui.screenshot.TakeScreenshotService"

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x3e8

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static localLOGV:Z

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDecorFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpNavigationFrame:Landroid/graphics/Rect;

.field static final mTmpOutsetFrame:Landroid/graphics/Rect;

.field static final mTmpOverscanFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field private static final mTmpRect:Landroid/graphics/Rect;

.field static final mTmpStableFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAbsPhoneWindownManager:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

.field mAccelerometerDefault:Z

.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field mAllowAllRotations:I

.field mAllowLockscreenWhenOn:Z

.field private mAllowTheaterModeWakeFromCameraLens:Z

.field mAllowTheaterModeWakeFromKey:Z

.field mAllowTheaterModeWakeFromLidSwitch:Z

.field private mAllowTheaterModeWakeFromMotion:Z

.field private mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

.field private mAllowTheaterModeWakeFromPowerKey:Z

.field private mAllowTheaterModeWakeFromWakeGesture:Z

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mAppSwitchKeyConsumed:Z

.field mAppsThatDismissKeyguard:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/IApplicationToken;",
            ">;"
        }
    .end annotation
.end field

.field mAppsToBeHidden:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/IApplicationToken;",
            ">;"
        }
    .end annotation
.end field

.field mAssistKeyLongPressed:Z

.field mAwake:Z

.field volatile mBackKeyHandled:Z

.field volatile mBeganFromNonInteractive:Z

.field mBootMessageNeedsHiding:Z

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

.field mCalendarDateVibePattern:[J

.field volatile mCameraGestureTriggeredDuringGoingToSleep:Z

.field mCameraLensCoverState:I

.field mCanHideNavigationBar:Z

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field private final mClearHideNavigationFlag:Ljava/lang/Runnable;

.field mClockTickVibePattern:[J

.field mConsumeSearchKeyUp:Z

.field mContentBottom:I

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mContextClickVibePattern:[J

.field mCurBottom:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field mCurrentUserId:I

.field mCustomBootMsgDialog:Lcom/samsung/android/app/CustomBootMsgDialog;

.field private mDeferBindKeyguard:Z

.field mDemoHdmiRotation:I

.field mDemoHdmiRotationLock:Z

.field mDemoRotation:I

.field mDemoRotationLock:Z

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field mDismissKeyguard:I

.field mDisplay:Landroid/view/Display;

.field private mDisplayRotation:I

.field mDockBottom:I

.field mDockLayer:I

.field mDockLeft:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDockRight:I

.field mDockTop:I

.field final mDockedStackBounds:Landroid/graphics/Rect;

.field mDoublePressOnPowerBehavior:I

.field private mDoubleTapOnHomeBehavior:I

.field mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field mDreamReceiver:Landroid/content/BroadcastReceiver;

.field mDreamingLockscreen:Z

.field mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field mDreamingSleepTokenNeeded:Z

.field private mEnableCarDockHomeCapture:Z

.field mEnableShiftMenuBugReports:Z

.field volatile mEndCallKeyHandled:Z

.field private final mEndCallLongPress:Ljava/lang/Runnable;

.field mEndcallBehavior:I

.field private final mFallbackActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/KeyCharacterMap$FallbackAction;",
            ">;"
        }
    .end annotation
.end field

.field mFocusedApp:Landroid/view/IApplicationToken;

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mForceClearedSystemUiFlags:I

.field private mForceDefaultOrientation:Z

.field mForceShowSystemBars:Z

.field mForceStatusBar:Z

.field mForceStatusBarFromKeyguard:Z

.field private mForceStatusBarTransparent:Z

.field mForcingShowNavBar:Z

.field mForcingShowNavBarLayer:I

.field mGlobalActions:Lcom/android/server/policy/GlobalActions;

.field private mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

.field private mGoToSleepOnButtonPressTheaterMode:Z

.field volatile mGoingToSleep:Z

.field private mGrxDobleClickVol:Z

.field private mGrxDobleTapVol:Ljava/lang/Runnable;

.field public mGrxEsLongVol:Z

.field final mGrxLongVol:Ljava/lang/Runnable;

.field private mGrxSkipTracks:Z

.field public mGrxTeclaVol:I

.field public mGrxTeclaVolDobleTapPendiente:Z

.field public mGrxTeclaVolNumClicks:I

.field private mGrxTimeOutVolumen:I

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field mHandler:Landroid/os/Handler;

.field private mHasFeatureWatch:Z

.field mHasNavigationBar:Z

.field mHasSoftInput:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

.field mHdmiPlugged:Z

.field private final mHiddenNavPanic:Ljava/lang/Runnable;

.field mHideLockScreen:Z

.field final mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

.field private mHideSDKeyguard:Z

.field mHomeConsumed:Z

.field mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mHomeIntent:Landroid/content/Intent;

.field mHomePressed:Z

.field private mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

.field mIncallPowerBehavior:I

.field mInitialMetaState:I

.field mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

.field mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private mIsKnoxContainer2Supported:Z

.field mKeyboardTapVibePattern:[J

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field mKeyguardDrawComplete:Z

.field final mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

.field private mKeyguardDrawnOnce:Z

.field private mKeyguardHidden:Z

.field volatile mKeyguardOccluded:Z

.field private mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

.field mKeyguardSecure:Z

.field mKeyguardSecureIncludingHidden:Z

.field mKnoxUserToShowKeyguard:I

.field mLandscapeRotation:I

.field mLanguageSwitchKeyPressed:Z

.field final mLastDockedStackBounds:Landroid/graphics/Rect;

.field mLastDockedStackSysUiFlags:I

.field mLastFocusNeedsMenu:Z

.field mLastFullscreenStackSysUiFlags:I

.field mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field final mLastNonDockedStackBounds:Landroid/graphics/Rect;

.field mLastSystemUiFlags:I

.field mLidControlsScreenLock:Z

.field mLidControlsSleep:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpenRotation:I

.field mLidState:I

.field private final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private final mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

.field mLongPressOnBackBehavior:I

.field private mLongPressOnHomeBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field mMetaState:I

.field mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

.field mMultitapKeyManager:Lcom/android/server/policy/MultitapKeyPolicy;

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mNavBarOpacityMode:I

.field mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mNavigationBarCanMove:Z

.field private final mNavigationBarController:Lcom/android/server/policy/BarController;

.field mNavigationBarHeightForRotationDefault:[I

.field mNavigationBarHeightForRotationInCarMode:[I

.field mNavigationBarPosition:I

.field mNavigationBarWidthForRotationDefault:[I

.field mNavigationBarWidthForRotationInCarMode:[I

.field final mNonDockedStackBounds:Landroid/graphics/Rect;

.field mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mOverscanBottom:I

.field mOverscanLeft:I

.field mOverscanRight:I

.field mOverscanScreenHeight:I

.field mOverscanScreenLeft:I

.field mOverscanScreenTop:I

.field mOverscanScreenWidth:I

.field mOverscanTop:I

.field mPendingCapsLockToggle:Z

.field mPendingMetaAction:Z

.field private mPendingPanicGestureUptime:J

.field private mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

.field mPointerLocationMode:I

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field volatile mPowerKeyHandled:Z

.field volatile mPowerKeyPressCounter:I

.field mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field mPreloadedRecentApps:Z

.field mRecentAppsHeldModifiers:I

.field volatile mRecentsVisible:Z

.field mResettingSystemUiFlags:I

.field mRestrictedOverscanScreenHeight:I

.field mRestrictedOverscanScreenLeft:I

.field mRestrictedOverscanScreenTop:I

.field mRestrictedOverscanScreenWidth:I

.field mRestrictedScreenHeight:I

.field mRestrictedScreenLeft:I

.field mRestrictedScreenTop:I

.field mRestrictedScreenWidth:I

.field mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

.field mSafeMode:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

.field mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field mScreenOnEarly:Z

.field mScreenOnFully:Z

.field mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

.field private mScreenshotChordEnabled:Z

.field private mScreenshotChordPowerKeyTime:J

.field private mScreenshotChordPowerKeyTriggered:Z

.field private mScreenshotChordVolumeDownKeyConsumed:Z

.field private mScreenshotChordVolumeDownKeyTime:J

.field private mScreenshotChordVolumeDownKeyTriggered:Z

.field private mScreenshotChordVolumeUpKeyTriggered:Z

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field final mScreenshotLock:Ljava/lang/Object;

.field mScreenshotReceiver:Landroid/content/BroadcastReceiver;

.field private final mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field mSearchKeyShortcutPending:Z

.field mSearchManager:Landroid/app/SearchManager;

.field mSeascapeRotation:I

.field private mSecureDismissingKeyguard:Z

.field private mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field final mServiceAquireLock:Ljava/lang/Object;

.field mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

.field mShortPressOnPowerBehavior:I

.field mShortPressOnSleepBehavior:I

.field mShortPressWindowBehavior:I

.field private mShortcutKeyServices:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/internal/policy/IShortcutService;",
            ">;"
        }
    .end annotation
.end field

.field mShortcutManager:Lcom/android/server/policy/ShortcutManager;

.field mShowingDream:Z

.field mShowingLockscreen:Z

.field mStableBottom:I

.field mStableFullscreenBottom:I

.field mStableFullscreenLeft:I

.field mStableFullscreenRight:I

.field mStableFullscreenTop:I

.field mStableLeft:I

.field mStableRight:I

.field mStableTop:I

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private final mStatusBarController:Lcom/android/server/policy/StatusBarController;

.field mStatusBarHeight:I

.field mStatusBarLayer:I

.field mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSupportAutoRotation:Z

.field private mSupportLongPressPowerWhenNonInteractive:Z

.field mSystemBooted:Z

.field mSystemBottom:I

.field private mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

.field mSystemLeft:I

.field mSystemReady:Z

.field mSystemRight:I

.field mSystemTop:I

.field mSystemUIReplacedReceiver:Landroid/content/BroadcastReceiver;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTmpBoolean:Landroid/util/MutableBoolean;

.field mToggleRunning:Z

.field mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mTouchScreen:Z

.field mTranslucentDecorEnabled:Z

.field mTriplePressOnPowerBehavior:I

.field volatile mTvPictureInPictureVisible:Z

.field mUiMode:I

.field mUiModeManager:Landroid/app/IUiModeManager;

.field mUndockedHdmiRotation:I

.field mUnrestrictedScreenHeight:I

.field mUnrestrictedScreenLeft:I

.field mUnrestrictedScreenTop:I

.field mUnrestrictedScreenWidth:I

.field mUpsideDownRotation:I

.field mUseTvRouting:Z

.field mUserRotation:I

.field mUserRotationMode:I

.field mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J

.field mVoiceContentBottom:I

.field mVoiceContentLeft:I

.field mVoiceContentRight:I

.field mVoiceContentTop:I

.field mWakeGestureEnabledSetting:Z

.field mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

.field mWifiDisplayConnected:Z

.field mWifiDisplayCustomRotation:I

.field mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

.field private mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field private mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

.field mWindowManager:Landroid/view/IWindowManager;

.field final mWindowManagerDrawCallback:Ljava/lang/Runnable;

.field mWindowManagerDrawComplete:Z

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Landroid/view/WindowManagerInternal;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/BarController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/PhoneWindowManager;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    return-wide p1
.end method

.method static synthetic -wrap0(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleHideBootMessage()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->notifyScreenshotError()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/policy/PhoneWindowManager;JZI)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->showNavigationBarInFullscreen()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/policy/PhoneWindowManager;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(ZZ)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->showTvPictureInPictureMenuInternal()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->takeScreenshot(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/PhoneWindowManager;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->updateDreamingSleepToken(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->backLongPress()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->disablePointerLocation()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$InputConsumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->disposeInputConsumer(Landroid/view/WindowManagerPolicy$InputConsumer;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->enablePointerLocation()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishWindowsDrawn()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_STARTING_WINDOW:Z

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.intent.category.APP_BROWSER"

    const/16 v2, 0x40

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.intent.category.APP_EMAIL"

    const/16 v2, 0x41

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.intent.category.APP_CONTACTS"

    const/16 v2, 0xcf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.intent.category.APP_CALENDAR"

    const/16 v2, 0xd0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.intent.category.APP_MUSIC"

    const/16 v2, 0xd1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.intent.category.APP_CALCULATOR"

    const/16 v2, 0xd2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.intent.category.APP_MESSAGING"

    const/16 v2, 0x430

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    const/16 v0, 0x7d3

    const/16 v1, 0x7da

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/4 v4, 0x1

    const/4 v1, 0x4

    const/4 v3, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCanHideNavigationBar:Z

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationInCarMode:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationInCarMode:[I

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$2;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackBounds:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchKeyConsumed:Z

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTouchScreen:Z

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mToggleRunning:Z

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/policy/LogDecelerateInterpolator;

    const/16 v1, 0x64

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/LogDecelerateInterpolator;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v2}, Landroid/util/MutableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayConnected:Z

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayCustomRotation:I

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideSDKeyguard:Z

    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsKnoxContainer2Supported:Z

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    new-instance v0, Lcom/android/server/policy/StatusBarController;

    invoke-direct {v0}, Lcom/android/server/policy/StatusBarController;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    new-instance v0, Lcom/android/server/policy/BarController;

    const-string/jumbo v1, "NavigationBar"

    const/high16 v2, 0x8000000

    const/high16 v3, 0x20000000

    const/high16 v4, -0x80000000

    const/4 v5, 0x2

    const/high16 v6, 0x8000000

    const v7, 0x8000

    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/BarController;-><init>(Ljava/lang/String;IIIIII)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$Torch;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$Torch;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$4;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-direct {v0, p0, v8}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$5;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$6;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$8;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$9;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$10;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$11;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$12;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemUIReplacedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHiddenNavPanic:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$14;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$14;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mCustomBootMsgDialog:Lcom/samsung/android/app/CustomBootMsgDialog;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    const v7, 0x0

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxTeclaVolNumClicks:I

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxTeclaVol:I

    const v7, 0x258

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxTimeOutVolumen:I

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxTeclaVolDobleTapPendiente:Z

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxDobleClickVol:Z

    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxSkipTracks:Z

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$GrxDobleTapVol;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$GrxDobleTapVol;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxDobleTapVol:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$GrxLongVol;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$GrxLongVol;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxLongVol:Ljava/lang/Runnable;

    return-void
.end method

.method private applyLidSwitchState()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->applyLidSwitchState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_2
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsScreenLock:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->lockDeviceNow()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;)V
    .locals 2

    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_3

    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_4

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    :cond_0
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    :cond_1
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    :cond_2
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    :cond_5
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    :cond_6
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    :cond_7
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private areTranslucentBarsAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    return v0
.end method

.method private static awakenDreams()V
    .locals 2

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private backLongPress()V
    .locals 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VOICE_ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private calculateRelevantTaskInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 6

    const/4 v5, 0x0

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v5, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int v1, v4, v5

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, v5

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sget-object v5, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sget-object v5, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    invoke-virtual {p2, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private canHideNavigationBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method private canReceiveInput(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x20000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    move v0, v4

    :goto_1
    xor-int v2, v1, v0

    if-eqz v2, :cond_2

    :goto_2
    return v3

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method private cancelPendingBackKeyAction()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private cancelPreloadRecentApps()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->cancelPreloadRecentApps()V

    :cond_0
    return-void
.end method

.method private clearClearableFlagsLw()V
    .locals 2

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    or-int/lit8 v0, v1, 0x7

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    :cond_0
    return-void
.end method

.method private configureNavBarOpacity(IZZZ)I
    .locals 2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarOpaqueFlag(I)I

    move-result p1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    :cond_2
    return p1

    :cond_3
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    if-eqz p4, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarTranslucentFlag(I)I

    move-result p1

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    if-eqz p4, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarTranslucentFlag(I)I

    move-result p1

    goto :goto_0
.end method

.method private disablePointerLocation()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    :cond_0
    return-void
.end method

.method private dismissKeyboardShortcutsMenu()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->dismissKeyboardShortcutsMenu()V

    :cond_0
    return-void
.end method

.method private dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v3, 0x1005

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    sparse-switch v7, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    const-string/jumbo v5, "WindowManager"

    const/4 v1, 0x1

    const/high16 v2, -0x80000000

    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Error dispatching volume up in dispatchTvAudioEvent."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :sswitch_1
    :try_start_1
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    const-string/jumbo v5, "WindowManager"

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v6

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Error dispatching volume down in dispatchTvAudioEvent."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    const-string/jumbo v5, "WindowManager"

    const/16 v1, 0x65

    const/high16 v2, -0x80000000

    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v6

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Error dispatching mute in dispatchTvAudioEvent."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_1
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method

.method private disposeInputConsumer(Landroid/view/WindowManagerPolicy$InputConsumer;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$InputConsumer;->dismiss()V

    :cond_0
    return-void
.end method

.method private drawsSystemBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private enablePointerLocation()V
    .locals 5

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/internal/widget/PointerLocationView;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x518

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_0
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string/jumbo v2, "PointerLocation"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    :cond_1
    return-void
.end method

.method private finishKeyguardDrawn()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/WindowManagerInternal;->waitForAllWindowsDrawn(Ljava/lang/Runnable;J)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private finishPowerKeyPress()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private finishScreenTurningOn()V
    .locals 7

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    sget-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "finishScreenTurningOn: mAwake="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mScreenOnEarly="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mScreenOnFully="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mKeyguardDrawComplete="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mWindowManagerDrawComplete="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    if-eqz v3, :cond_6

    :cond_1
    sget-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WindowManager"

    const-string/jumbo v5, "Finished screen turning on..."

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    const/4 v0, 0x1

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hideBootMessages()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    :goto_0
    monitor-exit v4

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    :cond_4
    if-eqz v0, :cond_5

    :try_start_2
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->enableScreenIfNeeded()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->finishScreenTurningOn()V

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    :cond_6
    monitor-exit v4

    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private finishWindowsDrawn()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    sget-boolean v0, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_AOD:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getAODWindowPolicy()Lcom/android/server/policy/AODWindowPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/AODWindowPolicy;->finishWindowsDrawn()V

    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private forcesDrawStatusBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .locals 3

    const-string/jumbo v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method static getDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 1

    const-string/jumbo v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method private getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "hdmi_control"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiControlManager;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    invoke-direct {v2, v0, v4}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Lcom/android/server/policy/PhoneWindowManager$HdmiControl;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    return-object v2
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    array-length v3, v0

    new-array v2, v3, [J

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    aget v3, v0, v1

    int-to-long v4, v3

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getNavigationBarWidth(II)I
    .locals 2

    and-int/lit8 v0, p2, 0xf

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationInCarMode:[I

    aget v0, v0, p1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getResolvedLongPressOnPowerBehavior()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isBlockedPowerKeyByKeyTest()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x3

    return v0

    :cond_2
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    return v0
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method private getSemPersonaManagerLocked()Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsKnoxContainer2Supported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0

    :cond_1
    return-object v1
.end method

.method private handleDoubleTapOnHome()V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    :cond_0
    return-void
.end method

.method private handleHideBootMessage()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCustomBootMsgDialog:Lcom/samsung/android/app/CustomBootMsgDialog;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "handleHideBootMessage: mCustomBootMsgDialog dismissing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCustomBootMsgDialog:Lcom/samsung/android/app/CustomBootMsgDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/CustomBootMsgDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCustomBootMsgDialog:Lcom/samsung/android/app/CustomBootMsgDialog;

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "handleHideBootMessage: dismissing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method private handleShortPressOnHome()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    return-void
.end method

.method private hasLongPressOnBackBehavior()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private hasLongPressOnPowerBehavior()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private hideRecentApps(ZZ)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->hideRecentApps(ZZ)V

    :cond_0
    return-void
.end method

.method private interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v6
.end method

.method private interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v4

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    move-result v5

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZZ)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHiddenNavPanic:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v0, :cond_7

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v12

    const/4 v8, 0x0

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v12}, Landroid/telecom/TelecomManager;->silenceRinger()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    const-string/jumbo v1, "VCPS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    const-class v0, Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/GestureLauncherService;

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    invoke-virtual {v6, p1, p2, v0}, Lcom/android/server/GestureLauncherService;->interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z

    move-result v7

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    iget-boolean v0, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    :cond_5
    if-nez v8, :cond_9

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isCombinationKeyTriggered()Z

    move-result v0

    :goto_2
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_6

    if-eqz p2, :cond_a

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v10, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->interceptPowerKeyDown()V

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    invoke-virtual {v12}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v12}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v8

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    const-string/jumbo v1, "VCPE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const/4 v0, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v10, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v9

    const/4 v0, 0x1

    if-gt v9, v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    goto :goto_3

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    goto :goto_3
.end method

.method private interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V
    .locals 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p3, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    :goto_0
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    if-nez v2, :cond_3

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    if-ge v7, v3, :cond_2

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    move v5, v6

    :cond_0
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/16 v10, 0xd

    invoke-virtual {v7, v10, v5, v8, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-direct {p0, v0, v1, p2, v5}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    return-void
.end method

.method private interceptScreenshotChord()V
    .locals 8

    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v2, v4}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-nez v2, :cond_0

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_0

    return v0

    :cond_0
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v2, :cond_2

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v2, :cond_2

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v2, v3, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private isGlobalAccessibilityGestureEnabled()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "enable_accessibility_global_gesture_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isImmersiveMode(I)Z
    .locals 3

    const/4 v1, 0x0

    const/16 v0, 0x1800

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_0

    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_0

    and-int/lit16 v2, p1, 0x1800

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v1

    :cond_0
    return v1
.end method

.method private isKnoxKeyguardShownForKioskMode()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSemPersonaManagerLocked()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isKnoxKeyguardShownForKioskMode(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSemPersonaManagerLocked()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isKnoxKeyguardWindow(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.knox.kss"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.knox.securefolder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "/.keyguard."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isLandscapeOrSeascape(I)Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNavBarEmpty(I)Z
    .locals 3

    const/high16 v2, 0x1600000

    const/high16 v0, 0x1600000

    and-int v1, p0, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isResizeMode(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isRoundWindow()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

    return v0
.end method

.method private isSharedDeviceEnabled()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "shared_device_status"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    return v4

    :cond_1
    return v3
.end method

.method private isTheaterModeEnabled()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "theater_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isValidGlobalKey(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x1

    return v0

    :sswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_0
        0xdf -> :sswitch_0
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method private isWakeKeyWhenScreenOff(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    return v0

    :sswitch_0
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    return v1

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_0
        0xde -> :sswitch_1
        0x42d -> :sswitch_1
    .end sparse-switch
.end method

.method private launchAssistAction(Ljava/lang/String;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v2, -0x80000000

    if-le p2, v2, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "assist"

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, p1, v3, v0}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz p1, :cond_5

    if-nez v0, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_4
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->startAssist(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private launchAssistLongPressAction()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v4, v3, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    const-string/jumbo v3, "assist"

    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    :cond_0
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "WindowManager"

    const-string/jumbo v4, "No activity to handle assist long press action."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private layoutNavigationBar(IIIIIIILandroid/graphics/Rect;ZZZZZ)Z
    .locals 15

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    move-result v14

    invoke-direct/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->navigationBarPosition(III)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-nez v2, :cond_6

    sub-int v2, p2, p7

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    move-result v3

    sub-int v13, v2, v3

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sub-int v3, p2, p7

    const/4 v4, 0x0

    move/from16 v0, p1

    invoke-virtual {v2, v4, v13, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    if-nez v14, :cond_0

    if-eqz p9, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    :goto_0
    if-eqz p9, :cond_1

    if-eqz p10, :cond_5

    :cond_1
    :goto_1
    if-nez v14, :cond_2

    if-eqz p9, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isMobileKeyboardEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-nez v2, :cond_c

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    :cond_2
    :goto_2
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    if-nez p13, :cond_3

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v3, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v9, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    move-object/from16 v8, p8

    invoke-interface/range {v2 .. v10}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mNavigationBar frame: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->checkHiddenLw()Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    return v2

    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto/16 :goto_0

    :cond_5
    if-nez p11, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    goto/16 :goto_1

    :cond_6
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    sub-int v2, p1, p6

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    move-result v3

    sub-int v11, v2, v3

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sub-int v3, p1, p6

    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-virtual {v2, v11, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    if-nez v14, :cond_7

    if-eqz p9, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    :goto_3
    if-eqz p9, :cond_1

    if-nez p10, :cond_1

    if-nez p11, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    goto/16 :goto_1

    :cond_8
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_3

    :cond_9
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    move-result v2

    add-int v12, p5, v2

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v2, v0, v3, v12, v1}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    if-nez v14, :cond_a

    if-eqz p9, :cond_b

    :cond_a
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    :goto_4
    if-eqz p9, :cond_1

    if-nez p10, :cond_1

    if-nez p11, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    goto/16 :goto_1

    :cond_b
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_4

    :cond_c
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    goto/16 :goto_2

    :cond_d
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    goto/16 :goto_2

    :cond_e
    const/4 v2, 0x0

    return v2
.end method

.method private layoutStatusBar(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZ)Z
    .locals 11

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iput v0, p4, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iput v0, p4, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iput v0, p4, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v0, p4, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    if-nez p8, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p4

    move-object v5, p4

    move-object/from16 v6, p5

    move-object v7, p4

    move-object v8, p4

    invoke-interface/range {v0 .. v8}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->isExpandedDockedStack()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    :cond_1
    const/high16 v0, 0x4000000

    and-int v0, v0, p6

    if-eqz v0, :cond_5

    const/4 v9, 0x1

    :goto_0
    const v0, 0x40000008    # 2.000002f

    and-int v0, v0, p6

    if-eqz v0, :cond_6

    const/4 v10, 0x1

    :goto_1
    if-nez p7, :cond_2

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v0

    and-int/2addr v10, v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v9, :cond_7

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0}, Lcom/android/server/policy/StatusBarController;->checkHiddenLw()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_5
    const/4 v9, 0x0

    goto :goto_0

    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->isExpandedDockedStack()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    :cond_8
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Status bar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "dock=[%d,%d][%d,%d] content=[%d,%d][%d,%d] cur=[%d,%d][%d,%d]"

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x9

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xa

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xb

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    if-nez v9, :cond_4

    if-nez v10, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0}, Lcom/android/server/policy/StatusBarController;->wasRecentlyTranslucent()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    goto/16 :goto_3

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private navigationBarPosition(III)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_1

    if-le p1, p2, :cond_1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private notifyScreenshotError()V
    .locals 4

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.screenshot.ScreenshotServiceErrorReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    if-le v1, v0, :cond_0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    :cond_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    if-le v1, v0, :cond_1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    if-le v1, v0, :cond_2

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    :cond_2
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Input method: mDockBottom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mContentBottom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mCurBottom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private offsetVoiceInputWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    if-le v1, v0, :cond_0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    :cond_0
    return-void
.end method

.method private powerLongPress()V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->ignorePowerKeyInEncrypting()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    invoke-virtual {p0, v4, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    goto :goto_0

    :pswitch_2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    invoke-virtual {p0, v4, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    const-string/jumbo v3, "globalactions"

    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    :goto_1
    invoke-interface {v3, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private powerPress(JZI)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Suppressed redundant power key press while already in the process of turning the screen on."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p4, v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :cond_2
    const/4 v0, 0x3

    if-ne p4, v0, :cond_3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, v3, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, v3, v2}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, v3, v2}, Landroid/os/PowerManager;->goToSleep(JII)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v2, v4}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private preloadRecentApps()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->preloadRecentApps()V

    :cond_0
    return-void
.end method

.method private readCameraLensCoverState()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getCameraLensCoverState()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    :cond_0
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    :cond_1
    const v1, 0x10e005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-le v1, v4, :cond_3

    :cond_2
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    :cond_3
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressWindowBehavior:I

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.software.picture_in_picture"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressWindowBehavior:I

    :cond_4
    const v1, 0x10e009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    return-void
.end method

.method private readRotation(I)I
    .locals 3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    return v2

    :sswitch_0
    const/4 v2, 0x0

    return v2

    :sswitch_1
    const/4 v2, 0x1

    return v2

    :sswitch_2
    const/4 v2, 0x2

    return v2

    :sswitch_3
    const/4 v2, 0x3

    return v2

    :catch_0
    move-exception v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 6

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Not showing transient bar, becuase Factory mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isLockTaskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Not showing transient bar, becuase LockTask mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    monitor-exit v3

    return-void

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->checkShowTransientBarLw()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->checkShowTransientBarLw()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v0, 0x0

    :goto_0
    if-nez v1, :cond_4

    if-eqz v0, :cond_d

    :cond_4
    if-nez v0, :cond_8

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_8

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v4, "Not showing transient bar, wrong swipe target"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit v3

    return-void

    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    :try_start_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isKnoxDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_9

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v4, "Not showing transient bar, becuase KnoxDesktop mode"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-void

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :try_start_3
    const-string/jumbo v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestTransientBars to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : sb= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,nb= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    :cond_b
    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->showTransient()V

    :cond_c
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v2}, Lcom/android/server/policy/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_d
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private selectDockedDividerAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 12

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getDockedDividerInsetsLw()I

    move-result v2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_6

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-nez v9, :cond_2

    iget v9, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v2

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-lt v9, v10, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-le v9, v10, :cond_7

    move v3, v7

    :goto_1
    if-eqz v3, :cond_a

    iget v9, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v2

    if-lez v9, :cond_8

    iget v9, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->right:I

    if-lt v9, v10, :cond_9

    const/4 v5, 0x1

    :goto_2
    if-nez v3, :cond_d

    iget v9, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v2

    if-lez v9, :cond_b

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    if-lt v9, v10, :cond_c

    const/4 v6, 0x1

    :goto_3
    if-nez v5, :cond_e

    move v4, v6

    :goto_4
    if-nez v0, :cond_1

    if-eqz v4, :cond_f

    :cond_1
    return v8

    :cond_2
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v9, v7, :cond_3

    iget v9, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v2

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    if-ge v9, v10, :cond_0

    :cond_3
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v9, v11, :cond_5

    iget v9, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v2

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->right:I

    if-gt v9, v10, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    move v3, v8

    goto :goto_1

    :cond_8
    const/4 v5, 0x1

    goto :goto_2

    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    :cond_a
    const/4 v5, 0x0

    goto :goto_2

    :cond_b
    const/4 v6, 0x1

    goto :goto_3

    :cond_c
    const/4 v6, 0x0

    goto :goto_3

    :cond_d
    const/4 v6, 0x0

    goto :goto_3

    :cond_e
    const/4 v4, 0x1

    goto :goto_4

    :cond_f
    if-eq p2, v7, :cond_10

    const/4 v7, 0x3

    if-ne p2, v7, :cond_11

    :cond_10
    const/high16 v7, 0x10a0000

    return v7

    :cond_11
    if-ne p2, v11, :cond_12

    const v7, 0x10a0001

    return v7

    :cond_12
    return v8
.end method

.method private setKeyguardOccludedLw(Z)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x100001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    return v5

    :cond_1
    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return v5

    :cond_2
    return v3
.end method

.method private setNavBarOpaqueFlag(I)I
    .locals 1

    const v0, 0x7fff7fff

    and-int/2addr p1, v0

    return p1
.end method

.method private setNavBarTranslucentFlag(I)I
    .locals 1

    const v0, -0x8001

    and-int/2addr p1, v0

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    return p1
.end method

.method private shouldDispatchInputWhenNonInteractive()Z
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getState()I

    move-result v5

    if-ne v5, v3, :cond_3

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v5, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_5

    :cond_2
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v1

    if-eqz v1, :cond_6

    :try_start_0
    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_6

    return v3

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    return v4

    :cond_5
    return v3

    :catch_0
    move-exception v2

    const-string/jumbo v3, "WindowManager"

    const-string/jumbo v5, "RemoteException when checking if dreaming"

    invoke-static {v3, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    return v4
.end method

.method private shouldEnableWakeGestureLp()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-eqz v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->isSupported()Z

    move-result v0

    goto :goto_0
.end method

.method private shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-eq v2, v3, :cond_0

    const v2, 0x2000400

    and-int/2addr v2, p2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private showNavigationBarInFullscreen()V
    .locals 4

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->showNavigationBarInFullscreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showRecentApps(ZZ)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showRecentApps(ZZ)V

    :cond_0
    return-void
.end method

.method private showTvPictureInPictureMenu(Landroid/view/KeyEvent;)V
    .locals 5

    const/16 v4, 0x11

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showTvPictureInPictureMenu event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private showTvPictureInPictureMenuInternal()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showTvPictureInPictureMenu()V

    :cond_0
    return-void
.end method

.method private sleepPress(J)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    :cond_0
    return-void
.end method

.method private sleepRelease(J)V
    .locals 3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "sleepRelease() calling goToSleep(GO_TO_SLEEP_REASON_SLEEP_BUTTON)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private takeScreenshot(I)V
    .locals 8

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v4

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.systemui"

    const-string/jumbo v5, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v1, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$19;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$19;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const v6, 0x2000001

    invoke-virtual {v3, v2, v0, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private toggleKeyboardShortcutsMenu(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleKeyboardShortcutsMenu(I)V

    :cond_0
    return-void
.end method

.method private toggleSplitScreen()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreenByKey()V

    :cond_0
    return-void
.end method

.method private updateDreamingSleepToken(Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v1, "Dream"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->acquireSleepToken(Ljava/lang/String;)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_0
.end method

.method private updateLightStatusBarLw(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq v1, p3, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1, v2}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->isFreeformWindow(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    move-object v0, p3

    :goto_0
    if-eqz v0, :cond_3

    if-eq v0, p2, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, v1, :cond_6

    if-eq v0, p3, :cond_6

    :cond_2
    and-int/lit16 p1, p1, -0x2001

    invoke-static {v0, v3}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    or-int/2addr p1, v1

    sget-boolean v1, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_LIGHT_NAVIGATION_BAR:Z

    if-eqz v1, :cond_3

    and-int/lit8 p1, p1, -0x11

    invoke-static {v0, v3}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    or-int/2addr p1, v1

    :cond_3
    :goto_1
    return p1

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_3

    and-int/lit16 p1, p1, -0x2001

    sget-boolean v1, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_LIGHT_NAVIGATION_BAR:Z

    if-eqz v1, :cond_3

    or-int/lit8 p1, p1, 0x10

    goto :goto_1
.end method

.method private updateLockScreenTimeout()V
    .locals 6

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v1, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v1, v0, :cond_1

    if-eqz v0, :cond_3

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v3, "setting lockscreen timer"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    :try_start_1
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v3, "clearing lockscreen timer"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private updateScreenOffSleepToken(Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v1, "ScreenOff"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->acquireSleepToken(Ljava/lang/String;)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_0
.end method

.method private updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .locals 38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    move-object/from16 v34, v0

    const/16 v35, 0x3

    invoke-virtual/range {v34 .. v35}, Landroid/view/WindowManagerInternal;->isStackVisible(I)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    move-object/from16 v34, v0

    const/16 v35, 0x2

    invoke-virtual/range {v34 .. v35}, Landroid/view/WindowManagerInternal;->isStackVisible(I)Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/WindowManagerInternal;->isDockedDividerResizing()Z

    move-result v29

    sget-boolean v34, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v34, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->hasDockedStack()Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    move/from16 v34, v0

    if-eqz v34, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    move/from16 v34, v0

    if-eqz v34, :cond_10

    :cond_0
    const/4 v12, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v34

    if-eqz v34, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    move/from16 v34, v0

    if-eqz v34, :cond_11

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->needUpdateSystemBarsForCoverLw()Z

    move-result v34

    if-eqz v34, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/policy/StatusBarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/policy/BarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-virtual/range {v34 .. v37}, Lcom/android/server/policy/StatusBarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->drawsSystemBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v34

    if-eqz v34, :cond_12

    const/high16 v34, 0x40000000    # 2.0f

    and-int v34, v34, p3

    if-nez v34, :cond_12

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->drawsSystemBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v34

    if-eqz v34, :cond_13

    const/high16 v34, 0x40000000    # 2.0f

    and-int v34, v34, v10

    if-nez v34, :cond_13

    const/4 v8, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->isExpandedDockedStack()Z

    move-result v34

    if-eqz v34, :cond_3

    or-int/lit8 p3, p3, 0x4

    :cond_3
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v33, v0

    const/16 v34, 0x7d0

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_14

    const/16 v30, 0x1

    :goto_5
    if-eqz v30, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v34

    if-eqz v34, :cond_15

    :cond_4
    :goto_6
    if-eqz v14, :cond_18

    if-eqz v8, :cond_18

    or-int/lit8 p3, p3, 0x8

    const v34, -0x40000001    # -1.9999999f

    and-int p3, p3, v34

    :cond_5
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v29

    invoke-direct {v0, v1, v9, v13, v2}, Lcom/android/server/policy/PhoneWindowManager;->configureNavBarOpacity(IZZZ)I

    move-result p3

    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x1000

    move/from16 v34, v0

    if-eqz v34, :cond_1a

    const/16 v21, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v34, v0

    if-eqz v34, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v34

    move/from16 v0, v34

    and-int/lit16 v0, v0, 0x400

    move/from16 v34, v0

    if-eqz v34, :cond_1b

    const/16 v19, 0x1

    :goto_9
    and-int/lit8 v34, p3, 0x4

    if-eqz v34, :cond_1d

    const/16 v18, 0x1

    :goto_a
    and-int/lit8 v34, p3, 0x2

    if-eqz v34, :cond_1e

    const/16 v17, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v34, v0

    if-eqz v34, :cond_23

    if-nez v30, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    move/from16 v34, v0

    if-nez v34, :cond_22

    if-nez v19, :cond_20

    if-eqz v18, :cond_21

    move/from16 v32, v21

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->isExpandedDockedStack()Z

    move-result v34

    if-eqz v34, :cond_6

    const/16 v32, 0x1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v34, v0

    if-eqz v34, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    move/from16 v34, v0

    if-eqz v34, :cond_24

    :cond_7
    const/16 v31, 0x0

    :goto_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    cmp-long v34, v34, v36

    if-eqz v34, :cond_26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    move-wide/from16 v34, v0

    sub-long v34, v24, v34

    const-wide/16 v36, 0x7530

    cmp-long v34, v34, v36

    if-gtz v34, :cond_25

    const/16 v27, 0x1

    :goto_e
    if-eqz v27, :cond_8

    if-eqz v17, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v34

    if-eqz v34, :cond_27

    :cond_8
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/policy/StatusBarController;->isTransientShowRequested()Z

    move-result v34

    if-eqz v34, :cond_9

    if-eqz v32, :cond_28

    :cond_9
    const/4 v7, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/policy/BarController;->isTransientShowRequested()Z

    move-result v34

    if-eqz v34, :cond_2a

    if-eqz v31, :cond_29

    const/4 v6, 0x0

    :goto_11
    if-nez v7, :cond_a

    if-nez v6, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    move/from16 v34, v0

    if-eqz v34, :cond_b

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->clearClearableFlagsLw()V

    and-int/lit8 p3, p3, -0x8

    :cond_b
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x800

    move/from16 v34, v0

    if-eqz v34, :cond_2b

    const/16 v20, 0x1

    :goto_12
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x1000

    move/from16 v34, v0

    if-eqz v34, :cond_2c

    const/16 v21, 0x1

    :goto_13
    if-nez v20, :cond_2d

    move/from16 v22, v21

    :goto_14
    if-eqz v17, :cond_c

    if-eqz v22, :cond_2e

    :cond_c
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v32

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    move-result p3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v23

    if-eqz p1, :cond_d

    move/from16 v0, v26

    move/from16 v1, v23

    if-eq v0, v1, :cond_d

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    move-object/from16 v34, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v35

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v36

    invoke-static/range {v36 .. v36}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    move-result v36

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    move/from16 v2, v23

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/ImmersiveModeConfirmation;->immersiveModeChangedLw(Ljava/lang/String;ZZZ)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v31

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/BarController;->updateVisibilityLw(ZII)I

    move-result p3

    return p3

    :cond_e
    if-nez v9, :cond_f

    if-nez v13, :cond_f

    move/from16 v34, v29

    :goto_16
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    goto/16 :goto_0

    :cond_f
    const/16 v34, 0x1

    goto :goto_16

    :cond_10
    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->forcesDrawStatusBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v14

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->forcesDrawStatusBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v8

    goto/16 :goto_4

    :cond_14
    const/16 v30, 0x0

    goto/16 :goto_5

    :cond_15
    const/16 v11, 0x3806

    sget-boolean v34, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_LIGHT_NAVIGATION_BAR:Z

    if-eqz v34, :cond_16

    const/16 v11, 0x3816

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    move/from16 v34, v0

    if-eqz v34, :cond_17

    const/high16 v34, -0x40000000    # -2.0f

    or-int v11, v11, v34

    :cond_17
    not-int v0, v11

    move/from16 v34, v0

    and-int v34, v34, p3

    and-int v35, p2, v11

    or-int p3, v34, v35

    goto/16 :goto_6

    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v34

    if-nez v34, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    if-eq v15, v0, :cond_19

    :goto_17
    const v34, -0x40000009    # -1.9999989f

    and-int p3, p3, v34

    goto/16 :goto_7

    :cond_19
    if-eqz v12, :cond_5

    goto :goto_17

    :cond_1a
    const/16 v21, 0x0

    goto/16 :goto_8

    :cond_1b
    const/16 v19, 0x0

    goto/16 :goto_9

    :cond_1c
    const/16 v19, 0x0

    goto/16 :goto_9

    :cond_1d
    const/16 v18, 0x0

    goto/16 :goto_a

    :cond_1e
    const/16 v17, 0x0

    goto/16 :goto_b

    :cond_1f
    const/16 v32, 0x1

    goto/16 :goto_c

    :cond_20
    const/16 v32, 0x1

    goto/16 :goto_c

    :cond_21
    const/16 v32, 0x0

    goto/16 :goto_c

    :cond_22
    const/16 v32, 0x0

    goto/16 :goto_c

    :cond_23
    const/16 v32, 0x0

    goto/16 :goto_c

    :cond_24
    if-eqz v17, :cond_7

    move/from16 v31, v21

    goto/16 :goto_d

    :cond_25
    const/16 v27, 0x0

    goto/16 :goto_e

    :cond_26
    const/16 v27, 0x0

    goto/16 :goto_e

    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    move/from16 v34, v0

    if-eqz v34, :cond_8

    const-wide/16 v34, 0x0

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    invoke-static/range {p3 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    move-result v34

    if-nez v34, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/policy/BarController;->showTransient()V

    goto/16 :goto_f

    :cond_28
    move/from16 v7, v18

    goto/16 :goto_10

    :cond_29
    const/4 v6, 0x1

    goto/16 :goto_11

    :cond_2a
    const/4 v6, 0x0

    goto/16 :goto_11

    :cond_2b
    const/16 v20, 0x0

    goto/16 :goto_12

    :cond_2c
    const/16 v21, 0x0

    goto/16 :goto_13

    :cond_2d
    const/16 v22, 0x1

    goto/16 :goto_14

    :cond_2e
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v34

    const/16 v35, 0x7e6

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_c

    and-int/lit8 p3, p3, -0x3

    goto/16 :goto_15
.end method

.method private updateSystemUiVisibilityLw()I
    .locals 15

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0, v1}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->isFreeformWindow(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    :goto_0
    if-nez v7, :cond_2

    return v14

    :cond_1
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_2
    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v0, :cond_3

    return v14

    :cond_3
    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getHideSViewCover()I

    move-result v0

    if-eqz v0, :cond_4

    return v14

    :cond_4
    invoke-static {v7, v13}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    not-int v1, v1

    and-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    not-int v1, v1

    and-int v12, v0, v1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v0, :cond_5

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    if-ge v0, v1, :cond_5

    const/4 v0, 0x7

    invoke-static {v7, v0}, Lcom/android/server/policy/PolicyControl;->adjustClearableFlags(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v0

    not-int v0, v0

    and-int/2addr v12, v0

    :cond_5
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0, v1, v7}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->adjustImmersiveFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v0

    not-int v0, v0

    and-int/2addr v12, v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->updateSystemUiVisibilityLw()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v14, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateLightStatusBarLw(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v14, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateLightStatusBarLw(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-interface {v0, v14, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getStackBounds(ILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    const/4 v13, 0x3

    invoke-interface {v0, v13, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getStackBounds(ILandroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-direct {p0, v7, v0, v12}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result v2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    xor-int v9, v2, v0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFullscreenStackSysUiFlags:I

    xor-int v11, v3, v0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackSysUiFlags:I

    xor-int v10, v4, v0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7, v0}, Landroid/view/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v8

    if-nez v9, :cond_7

    if-nez v11, :cond_7

    if-nez v10, :cond_7

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-ne v0, v8, :cond_7

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v14

    :cond_7
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFullscreenStackSysUiFlags:I

    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackSysUiFlags:I

    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v5, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v6, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$24;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/policy/PhoneWindowManager$24;-><init>(Lcom/android/server/policy/PhoneWindowManager;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/WindowManagerPolicy$WindowState;Z)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v9
.end method

.method private updateWakeGestureListenerLp()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->requestWakeUpTrigger()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->cancelWakeUpTrigger()V

    goto :goto_0
.end method

.method private wakeUpFromPowerKey(J)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZI)Z

    return-void
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;Landroid/graphics/Bitmap;I)Landroid/view/View;
    .locals 24

    if-nez p2, :cond_0

    const/16 v20, 0x0

    return-object v20

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    sget-boolean v20, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_STARTING_WINDOW:Z

    if-eqz v20, :cond_1

    const-string/jumbo v20, "WindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "addStartingWindow mWinShowWhenLocked="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " so skip adding startig window."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v20, 0x0

    return-object v20

    :cond_2
    const/16 v19, 0x0

    const/16 v17, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-boolean v20, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_STARTING_WINDOW:Z

    if-eqz v20, :cond_3

    const-string/jumbo v20, "WindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "addStartingWindow "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ": nonLocalizedLabel="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " theme="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v4}, Landroid/content/Context;->getThemeResId()I
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v20

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    if-eqz p6, :cond_5

    :cond_4
    const/16 v20, 0x0

    :try_start_1
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    :goto_0
    if-eqz p10, :cond_8

    :try_start_2
    sget-object v20, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    move-object/from16 v0, p10

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_8

    sget-boolean v20, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_STARTING_WINDOW:Z

    if-eqz v20, :cond_6

    const-string/jumbo v20, "WindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "addStartingWindow: creating context based on overrideConfig"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " for starting window"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/content/Context;->setTheme(I)V

    sget-object v20, Lcom/android/internal/R$styleable;->Window:[I

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v16

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v11, v15}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    if-eqz v20, :cond_8

    sget-boolean v20, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_STARTING_WINDOW:Z

    if-eqz v20, :cond_7

    const-string/jumbo v20, "WindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "addStartingWindow: apply overrideConfig"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " to starting window resId="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object v4, v11

    :cond_8
    new-instance v18, Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setIsStartingWindow(Z)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, p6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_e

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    :goto_1
    const/16 v20, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v20

    monitor-enter v20
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    move/from16 v21, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v21, :cond_9

    const/high16 v21, 0x80000

    or-int p9, p9, v21

    :cond_9
    :try_start_4
    monitor-exit v20

    or-int/lit8 v20, p9, 0x10

    or-int/lit8 v20, v20, 0x8

    const/high16 v21, 0x20000

    or-int v20, v20, v21

    or-int/lit8 v21, p9, 0x10

    or-int/lit8 v21, v21, 0x8

    const/high16 v22, 0x20000

    or-int v21, v21, v22

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    move-object/from16 v0, v18

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setDefaultIcon(I)V

    move-object/from16 v0, v18

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setDefaultLogo(I)V

    const/16 v20, -0x1

    const/16 v21, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    move-object/from16 v0, p1

    iput-object v0, v14, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object/from16 v0, p2

    iput-object v0, v14, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v20

    const/16 v21, 0x8

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    move/from16 v0, v20

    iput v0, v14, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    iput v0, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x10

    move/from16 v0, v20

    iput v0, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v20

    if-nez v20, :cond_a

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v20, v0

    move/from16 v0, v20

    or-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_a
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Starting "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v20, "window"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Landroid/view/WindowManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;
    :try_end_4
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v17

    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/4 v9, 0x0

    if-eqz p11, :cond_10

    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v20, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object/from16 v0, p11

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setSystemUiVisibility(I)V

    move-object/from16 v17, v9

    const-string/jumbo v20, "WindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "CustomStartingWindow for IMAGE "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v12

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/view/InflateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_b
    :goto_2
    :try_start_6
    sget-boolean v20, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_STARTING_WINDOW:Z

    if-eqz v20, :cond_c

    const-string/jumbo v21, "WindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Adding starting window for "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v22, " / "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v22, ": "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    if-eqz v20, :cond_12

    move-object/from16 v20, v17

    :goto_3
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v14}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_6
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v20

    if-eqz v20, :cond_13

    move-object/from16 v20, v17

    :goto_4
    if-eqz v17, :cond_d

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    if-nez v21, :cond_d

    const-string/jumbo v21, "WindowManager"

    const-string/jumbo v22, "view not successfully added to wm, removing view"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_d
    return-object v20

    :cond_e
    const/16 v20, 0x0

    :try_start_7
    move-object/from16 v0, v18

    move-object/from16 v1, p5

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V
    :try_end_7
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    :catch_0
    move-exception v7

    :try_start_8
    const-string/jumbo v20, "WindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " already running, starting window not displayed. "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v17, :cond_f

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    if-nez v20, :cond_f

    const-string/jumbo v20, "WindowManager"

    const-string/jumbo v21, "view not successfully added to wm, removing view"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_f
    :goto_5
    const/16 v20, 0x0

    return-object v20

    :catchall_0
    move-exception v21

    :try_start_9
    monitor-exit v20

    throw v21
    :try_end_9
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_1
    move-exception v8

    :try_start_a
    const-string/jumbo v20, "WindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " failed creating starting window"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v17, :cond_f

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    if-nez v20, :cond_f

    const-string/jumbo v20, "WindowManager"

    const-string/jumbo v21, "view not successfully added to wm, removing view"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_5

    :cond_10
    if-lez p12, :cond_b

    :try_start_b
    move-object/from16 v0, v18

    move/from16 v1, p12

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setContentView(I)V

    const-string/jumbo v20, "WindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "CustomStartingWindow for LAYOUT "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v12

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/view/InflateException; {:try_start_b .. :try_end_b} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_2

    :catch_2
    move-exception v6

    :try_start_c
    const-string/jumbo v20, "WindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "CustomStartingWindow just show original starting window. Due to : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_2

    :catchall_1
    move-exception v20

    if-eqz v17, :cond_11

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    if-nez v21, :cond_11

    const-string/jumbo v21, "WindowManager"

    const-string/jumbo v22, "view not successfully added to wm, removing view"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_11
    throw v20

    :cond_12
    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_13
    const/16 v20, 0x0

    goto/16 :goto_4

    :catch_3
    move-exception v5

    goto/16 :goto_0
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x1

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v1, :cond_1

    if-ne p2, v1, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_2

    iput v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v1, :cond_3

    if-ne p3, v1, :cond_4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iput v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "adjustSystemUiVisibilityLw : vis= 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v1, v4, p1}, Lcom/android/server/policy/StatusBarController;->adjustSystemUiVisibilityLw(II)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v1, v4, p1}, Lcom/android/server/policy/BarController;->adjustSystemUiVisibilityLw(II)V

    and-int/lit16 v1, p1, 0x4000

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    const/high16 v1, 0x10000

    and-int/2addr v1, p1

    if-lez v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTvPictureInPictureVisible:Z

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    and-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    not-int v1, v1

    and-int/2addr v1, p1

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    not-int v2, v2

    and-int/2addr v1, v2

    return v1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;II)V

    return-void
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;II)V
    .locals 6

    const/4 v5, -0x1

    const v4, -0x10000001

    const/high16 v3, -0x80000000

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d0

    if-eq v1, v2, :cond_1

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/2addr v1, v4

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    :cond_2
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :goto_1
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v3

    if-nez v1, :cond_3

    if-eqz v0, :cond_4

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v1, v5, :cond_4

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v5, :cond_4

    :cond_3
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    :cond_4
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x967

    if-ne v1, v2, :cond_5

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/2addr v1, v3

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    :cond_5
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.permission.SAMSUNG_INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    :cond_6
    return-void

    :sswitch_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x18

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :sswitch_1
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v1, :cond_8

    :cond_7
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x100001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_8
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getHideSViewCover()I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/2addr v1, v4

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_1
        0x7d6 -> :sswitch_0
        0x7df -> :sswitch_0
        0x968 -> :sswitch_0
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKnoxKeyguardShownForKioskMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 18

    sget-boolean v15, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v15, :cond_0

    const-string/jumbo v15, "WindowManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Win "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ": isVisibleOrBehindKeyguardLw="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static/range {p1 .. p2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v15, :cond_2

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7db

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x960

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    :cond_1
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    :cond_2
    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d0

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v15, v15, 0x400

    if-eqz v15, :cond_3

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    :cond_3
    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v15, v15, 0x1000

    if-eqz v15, :cond_4

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    :cond_4
    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d0

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v16, 0x10000000

    and-int v15, v15, v16

    if-eqz v15, :cond_e

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v15}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getHideSViewCover()I

    move-result v15

    if-nez v15, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v15}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isForceHideBySViewCover()Z

    move-result v9

    :goto_1
    if-nez v8, :cond_5

    if-eqz v9, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->setForceStatusBarFromSViewCover(Z)V

    :cond_6
    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-lt v15, v0, :cond_12

    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d0

    move/from16 v0, v16

    if-ge v15, v0, :cond_11

    const/4 v4, 0x1

    :goto_2
    const/high16 v15, 0x80000

    and-int/2addr v15, v6

    if-eqz v15, :cond_13

    const/4 v12, 0x1

    :goto_3
    const/high16 v15, 0x400000

    and-int/2addr v15, v6

    if-eqz v15, :cond_14

    const/4 v5, 0x1

    :goto_4
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v15, :cond_7

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v15

    if-eqz v15, :cond_15

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v15, :cond_9

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v15

    if-nez v15, :cond_8

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v15

    if-eqz v15, :cond_9

    :cond_8
    if-eqz v4, :cond_9

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    if-eqz v15, :cond_9

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_9
    :goto_5
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v15

    if-eqz v15, :cond_34

    :cond_a
    const/4 v10, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v15, :cond_b

    if-eqz v10, :cond_b

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-static {v13}, Landroid/app/ActivityManager$StackId;->normallyFullscreenWindows(I)Z

    move-result v15

    if-eqz v15, :cond_b

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v15, :cond_c

    if-eqz v10, :cond_c

    if-eqz v4, :cond_c

    if-nez p3, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v15

    if-eqz v15, :cond_c

    const/4 v15, 0x3

    if-ne v13, v15, :cond_c

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v15, :cond_c

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v15, :cond_d

    if-eqz v10, :cond_d

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v15

    if-eqz v15, :cond_d

    const/4 v15, 0x3

    if-ne v13, v15, :cond_d

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v15, v0, v1, v2, v12}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;Z)V

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-interface {v15, v0, v1, v2}, Lcom/android/server/policy/EdgeWindowPolicy;->applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_14
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_15
    and-int/lit16 v15, v6, 0x800

    if-eqz v15, :cond_19

    sget-boolean v15, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v15, :cond_16

    invoke-static {v13}, Landroid/app/ActivityManager$StackId;->normallyFullscreenWindows(I)Z

    move-result v15

    if-eqz v15, :cond_19

    :cond_16
    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v15, v15, 0x400

    if-eqz v15, :cond_24

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    :cond_17
    :goto_7
    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v16, 0x10000000

    and-int v15, v15, v16

    if-eqz v15, :cond_18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->setForceStatusBarFromSViewCover(Z)V

    :cond_18
    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v16, 0x80000

    and-int v15, v15, v16

    if-eqz v15, :cond_19

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    const-string/jumbo v15, "Shared devices"

    const-string/jumbo v16, "Force status bar SD type privflag"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v16, 0x10000000

    and-int v15, v15, v16

    if-eqz v15, :cond_1a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->setShowingSViewCover(Z)V

    :cond_1a
    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7e7

    move/from16 v0, v16

    if-ne v15, v0, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v15, :cond_1b

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v15

    if-eqz v15, :cond_1c

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v15

    if-eqz v15, :cond_1c

    :cond_1b
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    const/4 v4, 0x1

    :cond_1c
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v3

    if-eqz v4, :cond_9

    if-nez p3, :cond_9

    const/4 v11, 0x1

    if-eqz v12, :cond_27

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v15, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    invoke-virtual {v15, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-boolean v15, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v15, :cond_1d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v15}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getFocusedAppTokenLw()Landroid/view/IApplicationToken;

    move-result-object v7

    invoke-static {v13}, Landroid/app/ActivityManager$StackId;->tasksAreFloating(I)Z

    move-result v15

    if-eqz v15, :cond_25

    if-eq v7, v3, :cond_1d

    const/4 v11, 0x0

    :cond_1d
    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v15}, Ljava/util/HashSet;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_21

    if-eqz v5, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    if-eqz v15, :cond_26

    :cond_1e
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v15

    if-nez v15, :cond_1f

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v15

    if-eqz v15, :cond_20

    :cond_1f
    if-eqz v11, :cond_20

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    :cond_20
    :goto_9
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideSDKeyguard:Z

    :cond_21
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v15

    if-eqz v15, :cond_22

    invoke-static {v13}, Landroid/app/ActivityManager$StackId;->normallyFullscreenWindows(I)Z

    move-result v15

    if-nez v15, :cond_2a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v15}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isKnoxDesktopMode()Z

    move-result v15

    if-eqz v15, :cond_22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->isFreeformWindow(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v15

    if-eqz v15, :cond_22

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isInMultiWindowMode()Z

    move-result v15

    if-eqz v15, :cond_2a

    :cond_22
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    if-nez v15, :cond_23

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v15, :cond_23

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v15}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v16

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_23

    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v16, 0x80000

    and-int v15, v15, v16

    if-nez v15, :cond_23

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    :cond_23
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v15

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    const/16 v15, 0x64

    if-gt v15, v14, :cond_9

    const/16 v15, 0xc8

    if-gt v14, v15, :cond_9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mKnoxUserToShowKeyguard:I

    if-eq v14, v15, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getSemPersonaManagerLocked()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v15

    if-eqz v15, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getSemPersonaManagerLocked()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->inState(Lcom/samsung/android/knox/SemPersonaState;)Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->isKnoxKeyguardWindow(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v15

    if-nez v15, :cond_9

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->isResizeMode(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v15

    if-nez v15, :cond_9

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isInMultiWindowMode()Z

    move-result v15

    if-nez v15, :cond_9

    if-nez v12, :cond_9

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/policy/PhoneWindowManager;->mKnoxUserToShowKeyguard:I

    goto/16 :goto_5

    :cond_24
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    invoke-interface {v15}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->isExpandedDockedStack()Z

    move-result v15

    if-nez v15, :cond_17

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    goto/16 :goto_7

    :cond_25
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v15, :cond_1d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v15}, Ljava/util/HashSet;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1d

    if-ne v7, v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v15}, Ljava/util/HashSet;->clear()V

    goto/16 :goto_8

    :cond_26
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    invoke-virtual {v15, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_27
    if-eqz v5, :cond_29

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    if-eqz v15, :cond_28

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v15, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    invoke-virtual {v15, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_28
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v15, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_29
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v15, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_2a
    sget-boolean v15, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v15, :cond_2b

    const-string/jumbo v15, "WindowManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Fullscreen window: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v15, :cond_2c

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_2c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    invoke-virtual {v15}, Ljava/util/HashSet;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_31

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    if-nez v15, :cond_31

    sget-boolean v15, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v15, :cond_2d

    const-string/jumbo v15, "WindowManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Setting mDismissKeyguard true by win "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v15, v0, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mSecureDismissingKeyguard:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_2f

    const/4 v15, 0x2

    :goto_d
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mSecureDismissingKeyguard:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    if-eqz v15, :cond_30

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    :goto_e
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    :cond_2e
    :goto_f
    and-int/lit8 v15, v6, 0x1

    if-eqz v15, :cond_22

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    goto/16 :goto_b

    :cond_2f
    const/4 v15, 0x1

    goto :goto_d

    :cond_30
    const/4 v15, 0x0

    goto :goto_e

    :cond_31
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v15}, Ljava/util/HashSet;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_2e

    if-eqz v12, :cond_2e

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v15

    if-nez v15, :cond_32

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v15

    if-eqz v15, :cond_2e

    :cond_32
    sget-boolean v15, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v15, :cond_33

    const-string/jumbo v15, "WindowManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Setting mHideLockScreen to true by win "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v15, v0, v1}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->applyForceUserActivityTimeoutWin(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_f

    :cond_34
    const/4 v10, 0x1

    goto/16 :goto_6
.end method

.method public beginLayoutLw(ZIIII)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->beginLayoutLw(ZIIIIZI)V

    return-void
.end method

.method public beginLayoutLw(ZIIIIZI)V
    .locals 39

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    move/from16 v34, v0

    if-eqz p1, :cond_7

    packed-switch p4, :pswitch_data_0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    :goto_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    sub-int v4, p2, v9

    sub-int/2addr v4, v10

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    sub-int v4, p3, v31

    sub-int/2addr v4, v11

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iput v4, v5, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iput v4, v5, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    sub-int v4, p2, v10

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    sub-int v4, p3, v11

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    const/high16 v4, 0x10000000

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    sget-object v32, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    sget-object v26, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    sget-object v30, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    sget-object v38, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    sget-object v12, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, v38

    iput v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v30

    iput v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v32

    iput v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v38

    iput v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v30

    iput v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v32

    iput v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, v38

    iput v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v30

    iput v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v32

    iput v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v38

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v30

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v32

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz p1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    move/from16 v36, v0

    and-int/lit8 v4, v36, 0x2

    if-nez v4, :cond_8

    const/4 v13, 0x1

    :goto_1
    const v4, -0x7fff8000

    and-int v4, v4, v36

    if-eqz v4, :cond_9

    const/4 v14, 0x1

    :goto_2
    move/from16 v0, v36

    and-int/lit16 v4, v0, 0x800

    if-eqz v4, :cond_a

    const/16 v27, 0x1

    :goto_3
    move/from16 v0, v36

    and-int/lit16 v4, v0, 0x1000

    if-eqz v4, :cond_b

    const/16 v28, 0x1

    :goto_4
    if-nez v27, :cond_c

    move/from16 v15, v28

    :goto_5
    if-eqz v28, :cond_d

    const/4 v4, 0x0

    :goto_6
    and-int/2addr v14, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isStatusBarSViewCover()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v4, :cond_e

    const/16 v29, 0x0

    :goto_7
    if-nez v29, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v4

    and-int/2addr v14, v4

    :cond_0
    if-nez v29, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_10

    const/16 v16, 0x1

    :goto_8
    if-nez v13, :cond_1

    if-eqz v15, :cond_12

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    const/16 v7, 0x13

    invoke-virtual {v5, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    :cond_2
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v4, 0x0

    :goto_a
    or-int/2addr v13, v4

    move-object/from16 v4, p0

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v17, p6

    invoke-direct/range {v4 .. v17}, Lcom/android/server/policy/PhoneWindowManager;->layoutNavigationBar(IIIIIIILandroid/graphics/Rect;ZZZZZ)Z

    move-result v37

    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "mDock rect: (%d,%d - %d,%d)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p7

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->beginLayoutLw(IIII)V

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    move/from16 v24, v0

    move/from16 v18, p2

    move/from16 v19, p3

    move/from16 v20, p4

    invoke-interface/range {v17 .. v24}, Lcom/android/server/policy/EdgeWindowPolicy;->beginLayoutLw(IIIIIII)V

    move-object/from16 v17, p0

    move-object/from16 v18, v32

    move-object/from16 v19, v26

    move-object/from16 v20, v30

    move-object/from16 v21, v38

    move-object/from16 v22, v12

    move/from16 v23, v36

    move/from16 v24, v29

    move/from16 v25, p6

    invoke-direct/range {v17 .. v25}, Lcom/android/server/policy/PhoneWindowManager;->layoutStatusBar(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZ)Z

    move-result v4

    or-int v37, v37, v4

    if-eqz v37, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    :cond_4
    if-eqz p6, :cond_5

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isForceHideBySViewCover()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz p1, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-interface {v4, v0, v1, v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->beginCoverLayoutLw(III)V

    :cond_6
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    goto/16 :goto_0

    :cond_7
    const/4 v9, 0x0

    const/16 v31, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_a
    const/16 v27, 0x0

    goto/16 :goto_3

    :cond_b
    const/16 v28, 0x0

    goto/16 :goto_4

    :cond_c
    const/4 v15, 0x1

    goto/16 :goto_5

    :cond_d
    const/4 v4, 0x1

    goto/16 :goto_6

    :cond_e
    const/16 v29, 0x1

    goto/16 :goto_7

    :cond_f
    const/16 v29, 0x0

    goto/16 :goto_7

    :cond_10
    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->addInputConsumer(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;)Landroid/view/WindowManagerPolicy$InputConsumer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    goto/16 :goto_9

    :cond_13
    const/4 v4, 0x1

    goto/16 :goto_a

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public beginPostLayoutPolicyLw(II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideSDKeyguard:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecureIncludingHidden:Z

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKnoxUserToShowKeyguard:I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->beginPostLayoutPolicyLw(II)V

    return-void
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v2, :sswitch_data_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v2

    const/16 v3, 0x7d0

    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v3

    if-ge v2, v3, :cond_0

    :goto_0
    return v0

    :sswitch_0
    return v1

    :pswitch_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x7ed -> :sswitch_0
        0x832 -> :sswitch_0
        0x833 -> :sswitch_0
        0x8ac -> :sswitch_0
        0x8ad -> :sswitch_0
        0x8cf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x8de
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public canMagnifyWindow(I)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isEasyOneHandEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    return v2

    :sswitch_0
    return v1

    :cond_0
    sparse-switch p1, :sswitch_data_1

    return v2

    :sswitch_1
    return v1

    :sswitch_data_0
    .sparse-switch
        0x8ca -> :sswitch_0
        0x8cf -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7db -> :sswitch_1
        0x7dc -> :sswitch_1
        0x7e3 -> :sswitch_1
        0x7eb -> :sswitch_1
        0x960 -> :sswitch_1
        0x968 -> :sswitch_1
    .end sparse-switch
.end method

.method cancelPendingPowerKeyAction()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    :cond_0
    return-void
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
    .locals 13

    const/16 v12, 0x7d0

    const/16 v9, 0x3e8

    const/4 v8, -0x1

    const/4 v11, -0x8

    const/4 v10, 0x0

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    aput v8, p2, v10

    const/4 v7, 0x1

    if-lt v5, v7, :cond_0

    const/16 v7, 0x63

    if-le v5, v7, :cond_3

    :cond_0
    if-lt v5, v9, :cond_1

    const/16 v7, 0x7cf

    if-le v5, v7, :cond_3

    :cond_1
    if-lt v5, v12, :cond_2

    const/16 v7, 0xbb7

    if-le v5, v7, :cond_3

    :cond_2
    const/16 v7, -0xa

    return v7

    :cond_3
    if-lt v5, v12, :cond_4

    const/16 v7, 0xbb7

    if-le v5, v7, :cond_5

    :cond_4
    return v10

    :cond_5
    const/4 v4, 0x0

    sparse-switch v5, :sswitch_data_0

    const-string/jumbo v4, "android.permission.INTERNAL_SYSTEM_WINDOW"

    :goto_0
    :sswitch_0
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v7}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isGearVrSupport()Z

    move-result v7

    if-eqz v7, :cond_6

    const-class v7, Lcom/android/server/vr/GearVrManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/vr/GearVrManagerInternal;

    if-eqz v6, :cond_6

    aget v7, p2, v10

    if-ne v7, v8, :cond_6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v7, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v1, v5}, Lcom/android/server/vr/GearVrManagerInternal;->isOverlayRestrictionWindow(Ljava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x40

    aput v7, p2, v10

    :cond_6
    if-eqz v4, :cond_c

    const-string/jumbo v7, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v1, v9, :cond_7

    return v10

    :sswitch_1
    const/16 v7, 0x2d

    aput v7, p2, v10

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "android.permission.SYSTEM_ALERT_WINDOW"

    const/16 v7, 0x18

    aput v7, p2, v10

    goto :goto_0

    :cond_7
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    aget v8, p2, v10

    iget-object v9, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v1, v9}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    const/4 v7, 0x3

    if-ne v3, v7, :cond_8

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    aget v8, p2, v10

    iget-object v9, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8, v1, v9}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->changeAppOpsMode(IILjava/lang/String;)I

    move-result v3

    :cond_8
    packed-switch v3, :pswitch_data_0

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_a

    return v11

    :pswitch_0
    return v10

    :pswitch_1
    :try_start_0
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v8, 0x17

    if-ge v7, v8, :cond_9

    return v10

    :catch_0
    move-exception v2

    :cond_9
    return v11

    :cond_a
    return v10

    :cond_b
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_c

    return v11

    :cond_c
    return v10

    :sswitch_data_0
    .sparse-switch
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_2
        0x7d5 -> :sswitch_1
        0x7d6 -> :sswitch_2
        0x7d7 -> :sswitch_2
        0x7da -> :sswitch_2
        0x7db -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x7ee -> :sswitch_0
        0x7ef -> :sswitch_0
        0x7f0 -> :sswitch_0
        0x7f3 -> :sswitch_0
        0x830 -> :sswitch_0
        0x831 -> :sswitch_0
        0x832 -> :sswitch_0
        0x833 -> :sswitch_2
        0x964 -> :sswitch_2
        0x965 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v2, :sswitch_data_0

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_0

    return v0

    :cond_0
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7d0 -> :sswitch_0
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_0
        0x7d7 -> :sswitch_0
        0x7d8 -> :sswitch_0
        0x7d9 -> :sswitch_0
        0x7de -> :sswitch_0
        0x7e1 -> :sswitch_0
        0x7e2 -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x7e5 -> :sswitch_0
        0x7e6 -> :sswitch_0
        0x7e8 -> :sswitch_0
        0x7ea -> :sswitch_0
        0x7eb -> :sswitch_0
        0x7ed -> :sswitch_0
        0x7ee -> :sswitch_0
        0x7f2 -> :sswitch_0
        0x833 -> :sswitch_0
        0x8fe -> :sswitch_0
    .end sparse-switch
.end method

.method completeToggleSplitScreen()V
    .locals 2

    const/16 v1, 0x66

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mToggleRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTouchScreen:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->onTouchEnd()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mToggleRunning:Z

    return-void
.end method

.method public createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;
    .locals 5

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v4, 0x10a006f

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const v3, 0x10a0070

    :goto_0
    invoke-static {v4, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    check-cast v2, Landroid/view/animation/AnimationSet;

    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    const v3, 0x10a006e

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public createForceHideWallpaperExitAnimation(Z)Landroid/view/animation/Animation;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a0073

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .locals 8

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    if-ne v4, v6, :cond_0

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    if-eqz v4, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    move-object v3, v2

    :goto_0
    if-nez v3, :cond_6

    return-object v7

    :cond_0
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    :cond_1
    move-object v3, v2

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_5

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    move-object v3, v2

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v4, v6, :cond_3

    :cond_5
    move-object v3, v2

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    const v6, 0x10080

    invoke-virtual {v4, v3, v6, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_7
    if-eqz v0, :cond_8

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "android.dock_home"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v2

    :cond_8
    return-object v7
.end method

.method public dismissKeyguardLw()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyguardLw(I)V

    return-void
.end method

.method dismissKeyguardLw(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "PWM.dismissKeyguardLw"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$20;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$20;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 5

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    const/4 v4, 0x1

    invoke-static {p1, v2, v3, v4, v1}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dispatchMediaKeyRepeatWithWakeLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dispatchMediaKeyWithWakeLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "dispatchMediaKeyWithWakeLock: canceled repeat"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_3

    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .locals 2

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    :cond_0
    return-void
.end method

.method public dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 23

    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unhandled key: win="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", flags="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", scanCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", metaState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", repeatCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", policyFlags="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v18, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_5

    const/16 v19, 0x1

    :goto_0
    if-eqz v19, :cond_7

    invoke-virtual/range {v20 .. v22}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v17

    :goto_1
    if-eqz v17, :cond_3

    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Fallback: keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget v6, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " metaState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget v6, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v14, v4, 0x400

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    move-object/from16 v0, v17

    iget v9, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    move-object/from16 v0, v17

    iget v11, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v4 .. v16}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->recycle()V

    const/16 v18, 0x0

    :cond_2
    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    :goto_2
    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_4

    if-nez v18, :cond_9

    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "No fallback."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    return-object v18

    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/KeyCharacterMap$FallbackAction;

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    goto :goto_2

    :cond_9
    const-string/jumbo v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Performing fallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSafeMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mSystemBooted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mLidOpenRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mCameraLensCoverState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eqz v0, :cond_14

    :cond_0
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastFocusNeedsMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWakeGestureEnabledSetting="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSupportAutoRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUiMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mEnableCarDockHomeCapture="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mCarDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mDeskDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUserRotationMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mUserRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mAllowAllRotations="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCurrentAppOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLidKeyboardAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mLidNavigationAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mLidControlsScreenLock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsScreenLock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, " mLidControlsSleep="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mLongPressOnBackBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShortPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDoublePressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mTriplePressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHasSoftInput="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAwake="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mKeyguardDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mWindowManagerDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOrientationSensorEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOverscanScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    if-eqz v0, :cond_15

    :cond_3
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOverscan left="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " top="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " right="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " bottom="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRestrictedOverscanScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUnrestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStableFullscreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStable=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSystem=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCur=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContent=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVoiceContent=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDock=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDockLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mStatusBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShowingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mShowingDream="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mDreamingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mDreamingSleepToken="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_5

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastInputMethodWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_6

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastInputMethodTargetWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_7

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, " isStatusBarKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_9

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_a

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFocusedApp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_b

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_c

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_d

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopFullscreenOpaqueOrDimmingWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_d
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v0, :cond_e

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mForcingShowNavBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "mForcingShowNavBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mHideLockScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mForceStatusBarFromKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDismissKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, " mHomePressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mLockScreenTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mLockScreenTimerActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mEndcallBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mIncallPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mLongPressOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLandscapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mSeascapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPortraitRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mUpsideDownRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDemoHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mDemoHdmiRotationLock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUndockedHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/GlobalKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/StatusBarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/server/policy/PolicyControl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/BurnInProtectionHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/EdgeWindowPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    sget-boolean v0, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_AOD:Z

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getAODWindowPolicy()Lcom/android/server/policy/AODWindowPolicy;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/AODWindowPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_13
    return-void

    :cond_14
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_15
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    if-eqz v0, :cond_4

    goto/16 :goto_1
.end method

.method public enableKeyguard(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    :cond_0
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    :cond_0
    return-void
.end method

.method public finishLayoutLw()V
    .locals 0

    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 13

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v10

    if-eq v9, v10, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v11, 0x100000

    or-int/2addr v10, v11

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_0
    const/4 v0, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    :goto_0
    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    if-nez v9, :cond_c

    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xf

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_1
    const/4 v5, 0x0

    sget-boolean v9, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_AOD:Z

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getAODWindowPolicy()Lcom/android/server/policy/AODWindowPolicy;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/server/policy/AODWindowPolicy;->finishPostLayoutPolicyLw()I

    move-result v9

    or-int/lit8 v0, v9, 0x0

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getAODWindowPolicy()Lcom/android/server/policy/AODWindowPolicy;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/server/policy/AODWindowPolicy;->isNightClockVisible()Z

    move-result v5

    :cond_2
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_3

    if-eqz v5, :cond_d

    :cond_3
    :goto_2
    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eq v9, v8, :cond_5

    if-nez v8, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    :cond_5
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_9

    sget-boolean v9, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v9, :cond_6

    const-string/jumbo v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "finishPostLayoutPolicyLw: mHideKeyguard="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isSharedDeviceEnabled()Z

    move-result v9

    if-eqz v9, :cond_32

    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideSDKeyguard:Z

    if-eqz v9, :cond_32

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getPersonaManagerServiceLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v9

    if-eqz v9, :cond_32

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    iget-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideSDKeyguard:Z

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v10, v11}, Lcom/android/server/pm/PersonaManagerService;->notifyActivityDrawn(IZZ)V

    :cond_7
    :goto_3
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v9, :cond_8

    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    if-eqz v9, :cond_33

    :cond_8
    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v9, :cond_35

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Lcom/android/server/policy/EdgeWindowPolicy;->requestEdgeScreenWakeupIfNeeded(Landroid/view/WindowManagerPolicy$WindowState;Z)V

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    move-result v9

    if-eqz v9, :cond_9

    or-int/lit8 v0, v0, 0x7

    :cond_9
    :goto_4
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v9

    const v10, -0x3fff7ff2

    and-int/2addr v9, v10

    if-eqz v9, :cond_a

    or-int/lit8 v0, v0, 0x1

    :cond_a
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v9, v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->finishPostLayoutPolicyLw(I)I

    move-result v9

    or-int/2addr v0, v9

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    return v0

    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_c
    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    if-nez v9, :cond_1

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xf

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :cond_d
    sget-boolean v9, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v9, :cond_e

    const-string/jumbo v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "force="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " forcefkg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " top="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    if-eqz v9, :cond_f

    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    if-eqz v9, :cond_15

    :cond_f
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_17

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/policy/StatusBarController;->setShowTransparent(Z)V

    :cond_10
    :goto_6
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_19

    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_19

    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    if-eqz v9, :cond_18

    const/4 v7, 0x0

    :goto_7
    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    if-nez v9, :cond_11

    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-nez v9, :cond_11

    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    if-nez v9, :cond_11

    if-eqz v7, :cond_1b

    :cond_11
    sget-boolean v9, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v9, :cond_12

    const-string/jumbo v9, "WindowManager"

    const-string/jumbo v10, "Showing status bar: forced"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v9

    if-eqz v9, :cond_13

    or-int/lit8 v0, v0, 0x1

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_13

    or-int/lit8 v0, v0, 0x10

    :cond_13
    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v9, :cond_1a

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v8

    :goto_8
    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v9}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v10, v11}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    :cond_14
    if-eqz v7, :cond_3

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    move-result v9

    if-eqz v9, :cond_3

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_15
    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v9, :cond_16

    const/4 v9, 0x0

    :goto_9
    move v4, v9

    goto/16 :goto_5

    :cond_16
    const/4 v9, 0x1

    goto :goto_9

    :cond_17
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v9

    if-nez v9, :cond_10

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/policy/StatusBarController;->setShowTransparent(Z)V

    goto/16 :goto_6

    :cond_18
    const/4 v7, 0x1

    goto/16 :goto_7

    :cond_19
    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_1a
    const/4 v8, 0x0

    goto :goto_8

    :cond_1b
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v9}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isForceStatusBarFromSViewCover()Z

    move-result v9

    if-eqz v9, :cond_1f

    sget-boolean v9, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v9, :cond_1c

    const-string/jumbo v9, "WindowManager"

    const-string/jumbo v10, "Showing status bar: forcefsvc"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v9

    if-eqz v9, :cond_1d

    or-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x10

    :cond_1d
    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v9, :cond_1e

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v8

    :goto_a
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v9}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v10, v11}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    goto/16 :goto_2

    :cond_1e
    const/4 v8, 0x0

    goto :goto_a

    :cond_1f
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_30

    const/4 v9, 0x0

    invoke-static {v9, v3}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    sget-boolean v9, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v9, :cond_20

    const-string/jumbo v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "frame: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v11}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " shown position: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v11}, Landroid/view/WindowManagerPolicy$WindowState;->getShownPositionLw()Landroid/graphics/Point;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "attr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v11}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " lp.flags=0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    and-int/lit16 v9, v2, 0x400

    if-nez v9, :cond_22

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_23

    const/4 v8, 0x1

    :goto_b
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v9}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getHideSViewCover()I

    move-result v9

    if-eqz v9, :cond_21

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v9}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getHideSViewCoverWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v9

    if-eqz v9, :cond_21

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v10}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getHideSViewCoverWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v10

    if-eq v9, v10, :cond_21

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v9}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getHideSViewCoverWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    and-int/lit16 v9, v1, 0x400

    if-eqz v9, :cond_24

    and-int/lit16 v9, v1, 0x800

    if-nez v9, :cond_24

    const/4 v8, 0x1

    :cond_21
    :goto_c
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v9}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    move-result v9

    if-eqz v9, :cond_26

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v9

    if-eqz v9, :cond_3

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_22
    const/4 v8, 0x1

    goto :goto_b

    :cond_23
    const/4 v8, 0x0

    goto :goto_b

    :cond_24
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_25

    const/4 v8, 0x1

    goto :goto_c

    :cond_25
    const/4 v8, 0x0

    goto :goto_c

    :cond_26
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    invoke-interface {v9}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->isExpandedDockedStack()Z

    move-result v9

    if-eqz v9, :cond_27

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v9

    if-eqz v9, :cond_3

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_27
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v9}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isKnoxDesktopMode()Z

    move-result v9

    if-eqz v9, :cond_29

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v9

    if-eqz v9, :cond_3

    sget-boolean v9, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v9, :cond_28

    const-string/jumbo v9, "WindowManager"

    const-string/jumbo v10, "** HIDING status bar by DesktopMode"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_29
    if-eqz v8, :cond_2b

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/view/WindowManagerInternal;->isStackVisible(I)Z

    move-result v9

    if-eqz v9, :cond_2a

    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v9, :cond_2b

    :cond_2a
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/view/WindowManagerInternal;->isStackVisible(I)Z

    move-result v9

    if-eqz v9, :cond_2d

    :cond_2b
    sget-boolean v9, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v9, :cond_2c

    const-string/jumbo v9, "WindowManager"

    const-string/jumbo v10, "** SHOWING status bar: top is not fullscreen"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v9

    if-eqz v9, :cond_3

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_2d
    sget-boolean v9, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v9, :cond_2e

    const-string/jumbo v9, "WindowManager"

    const-string/jumbo v10, "** HIDING status bar"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(ZZ)Z

    move-result v9

    if-eqz v9, :cond_2f

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_2f
    sget-boolean v9, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v9, :cond_3

    const-string/jumbo v9, "WindowManager"

    const-string/jumbo v10, "Status bar already hiding"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_30
    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v9}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    move-result v9

    if-eqz v9, :cond_31

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v9

    if-eqz v9, :cond_3

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_31
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    invoke-interface {v9}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->isExpandedDockedStack()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v9

    if-eqz v9, :cond_3

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_32
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mKnoxUserToShowKeyguard:I

    const/16 v10, -0x2710

    if-eq v9, v10, :cond_7

    const-string/jumbo v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "KnoxKeyguard : show for user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mKnoxUserToShowKeyguard:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSemPersonaManagerLocked()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v9

    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mKnoxUserToShowKeyguard:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/knox/SemPersonaManager;->showKeyguard(II)V

    goto/16 :goto_3

    :cond_33
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/android/server/policy/EdgeWindowPolicy;->requestEdgeScreenWakeupIfNeeded(Landroid/view/WindowManagerPolicy$WindowState;Z)V

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    move-result v9

    if-eqz v9, :cond_34

    or-int/lit8 v0, v0, 0x7

    :cond_34
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v9}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/policy/PhoneWindowManager$17;

    invoke-direct {v10, p0}, Lcom/android/server/policy/PhoneWindowManager$17;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :cond_35
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v9, :cond_37

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    move-result v9

    if-eqz v9, :cond_36

    or-int/lit8 v0, v0, 0x7

    :cond_36
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/policy/PhoneWindowManager$18;

    invoke-direct {v10, p0}, Lcom/android/server/policy/PhoneWindowManager$18;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :cond_37
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mSecureDismissingKeyguard:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    move-result v9

    if-eqz v9, :cond_9

    or-int/lit8 v0, v0, 0x7

    goto/16 :goto_4
.end method

.method public finishedGoingToSleep(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v2, 0x11170

    invoke-static {v2, v5}, Landroid/util/EventLog;->writeEvent(II)I

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Finished going to sleep... (why="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "screen_timeout"

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportAppLock()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityManager;->clearAppLockedUnLockedApp()V

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    invoke-virtual {v2, p1, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedGoingToSleep(IZ)V

    :cond_2
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getPersonaManagerServiceLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getPersonaManagerServiceLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PersonaManagerService;->onFinishedGoingToSleep(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getHideSViewCoverWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getHideSViewCoverWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/samsung/android/view/IWindowStateBridge;->disableHideSViewCoverOnce(Z)V

    :cond_4
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isSharedDeviceEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.sec.enterprise.knox.shareddevice.keyguard"

    const-string/jumbo v4, "com.sec.enterprise.knox.shareddevice.keyguard.SharedDeviceKeyguardService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "SharedDeviceKeyguardEventFlag"

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Shared devices screen OFF completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "isScreenOff"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_5
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v2

    invoke-interface {v2, v5, v6}, Lcom/android/server/policy/EdgeWindowPolicy;->requestEdgeScreenWakeup(ZI)V

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public finishedWakingUp()V
    .locals 2

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Finished waking up..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 3

    const/4 v2, 0x0

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->focusChangedLw()V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    const v1, -0x3fff7ff2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public getConfigDisplayHeight(IIII)I
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->getConfigDisplayHeight(IIIII)I

    move-result v0

    return v0
.end method

.method public getConfigDisplayHeight(IIIII)I
    .locals 2

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayHeight(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getConfigDisplayWidth(IIII)I
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayWidth(IIIII)I

    move-result v0

    return v0
.end method

.method public getConfigDisplayWidth(IIIII)I
    .locals 1

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayWidth(IIIII)I

    move-result v0

    return v0
.end method

.method public getContentRectLw(Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getInputMethodWindowVisibleHeightLw()I
    .locals 2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 15

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v9

    move-object/from16 v0, p1

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v8, v9, v11

    if-eqz p8, :cond_2

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v6}, Lcom/android/server/policy/PhoneWindowManager;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v10

    :goto_0
    if-eqz v10, :cond_0

    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/util/ScreenShapeHelper;->getWindowOutsetBottomPx(Landroid/content/res/Resources;)I

    move-result v7

    if-lez v7, :cond_0

    if-nez p3, :cond_3

    move-object/from16 v0, p8

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v7

    move-object/from16 v0, p8

    iput v11, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    :goto_1
    const v11, 0x10100

    and-int/2addr v11, v6

    const v12, 0x10100

    if-ne v11, v12, :cond_c

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v11

    if-eqz v11, :cond_6

    and-int/lit16 v11, v8, 0x200

    if-eqz v11, :cond_6

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int v5, v11, v12

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int v4, v11, v12

    :goto_2
    and-int/lit16 v11, v8, 0x100

    if-eqz v11, :cond_8

    and-int/lit16 v11, v6, 0x400

    if-eqz v11, :cond_7

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    iget v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    sub-int v13, v5, v13

    iget v14, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    sub-int v14, v4, v14

    move-object/from16 v0, p6

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    :goto_3
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iget v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    sub-int v13, v5, v13

    iget v14, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    sub-int v14, v4, v14

    move-object/from16 v0, p7

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->calculateRelevantTaskInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    move-object/from16 v0, p2

    move-object/from16 v1, p7

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->calculateRelevantTaskInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    :cond_1
    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    return v11

    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    :cond_3
    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_4

    move-object/from16 v0, p8

    iget v11, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v7

    move-object/from16 v0, p8

    iput v11, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_4
    const/4 v11, 0x2

    move/from16 v0, p3

    if-ne v0, v11, :cond_5

    move-object/from16 v0, p8

    iget v11, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v7

    move-object/from16 v0, p8

    iput v11, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_1

    :cond_5
    const/4 v11, 0x3

    move/from16 v0, p3

    if-ne v0, v11, :cond_0

    move-object/from16 v0, p8

    iget v11, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v7

    move-object/from16 v0, p8

    iput v11, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    :cond_6
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int v5, v11, v12

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int v4, v11, v12

    goto/16 :goto_2

    :cond_7
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iget v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    sub-int v13, v5, v13

    iget v14, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    sub-int v14, v4, v14

    move-object/from16 v0, p6

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :cond_8
    and-int/lit16 v11, v6, 0x400

    if-nez v11, :cond_9

    const/high16 v11, 0x2000000

    and-int/2addr v11, v6

    if-eqz v11, :cond_a

    :cond_9
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_3

    :cond_a
    and-int/lit16 v11, v8, 0x404

    if-nez v11, :cond_b

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    iget v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    sub-int v13, v5, v13

    iget v14, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    sub-int v14, v4, v14

    move-object/from16 v0, p6

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_3

    :cond_b
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    iget v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    sub-int v13, v5, v13

    iget v14, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    sub-int v14, v4, v14

    move-object/from16 v0, p6

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_3

    :cond_c
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->setEmpty()V

    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    return v11
.end method

.method getMaxMultiPressPowerCount()I
    .locals 2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isSafetyAssuranceEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x3

    return v0

    :cond_2
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isDoubleTapOnPowerEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    return v0
.end method

.method getNavigationBarHeight(II)I
    .locals 2

    and-int/lit8 v0, p2, 0xf

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationInCarMode:[I

    aget v0, v0, p1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method public getNonDecorDisplayHeight(IIII)I
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayHeight(IIIII)I

    move-result v0

    return v0
.end method

.method public getNonDecorDisplayHeight(IIIII)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_0

    if-ge p1, p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isKnoxDesktopMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    move-result v0

    sub-int/2addr p2, v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0, p1, p2, p5}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result p2

    :cond_2
    return p2
.end method

.method public getNonDecorDisplayWidth(IIII)I
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayWidth(IIIII)I

    move-result v0

    return v0
.end method

.method public getNonDecorDisplayWidth(IIIII)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_0

    if-le p1, p2, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isKnoxDesktopMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    move-result v0

    sub-int/2addr p1, v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0, p1, p2, p5}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getNonDecorDisplayWidth(III)I

    move-result p1

    :cond_1
    return p1
.end method

.method public getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/policy/PhoneWindowManager;->navigationBarPosition(III)I

    move-result v0

    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-virtual {p0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    move-result v1

    iput v1, p4, Landroid/graphics/Rect;->bottom:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    move-result v1

    iput v1, p4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    move-result v1

    iput v1, p4, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method getPersonaManagerServiceLocked()Lcom/android/server/pm/PersonaManagerService;
    .locals 2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "persona"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaManagerService;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    return-object v1
.end method

.method public getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    return-object v0
.end method

.method public getStableInsetsLw(IIILandroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    iput v0, p4, Landroid/graphics/Rect;->top:I

    :cond_0
    return-void
.end method

.method getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getSystemDecorLayerLw()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getUserRotationMode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "accelerometer_rotation"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWinDissmissKeyguardPackage()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v2
.end method

.method public getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method goHome()Z
    .locals 21

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getSemPersonaManagerLocked()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v19, v2, v3

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isKnoxKeyguardShownForKioskMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "goHome() > isKnoxKeyguardShownForKioskMode() : true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Not going home because user setup is in progress."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_2
    :try_start_0
    const-string/jumbo v2, "persist.sys.uts-test-mode"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "UTS-TEST-MODE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x2

    invoke-interface/range {v6 .. v17}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v20

    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_5

    const/4 v2, 0x0

    return v2

    :cond_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopAppSwitches()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_3

    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v18

    :cond_5
    const/4 v2, 0x1

    return v2
.end method

.method public grx_acaba_click_vol()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxTeclaVolNumClicks:I

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxTeclaVolDobleTapPendiente:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxDobleTapVol:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxTeclaVol:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->grx_ajusta_vol(II)V

    return-void
.end method

.method public grx_acaba_doble_click_vol()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxTeclaVolNumClicks:I

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxTeclaVolDobleTapPendiente:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxDobleTapVol:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public grx_actualiza_opciones_skip_tracks()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "skip_tracks"

    const v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxSkipTracks:Z

    const-string v1, "double_click_skip_tracks"

    const v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v1, 0x0

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxDobleClickVol:Z

    const-string v1, "timeout_skip_tracks"

    const v2, 0x258

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxTimeOutVolumen:I

    return-void
.end method

.method grx_ajusta_vol(II)V
    .locals 7

    const/16 v5, 0x18

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v4, 0x3

    if-ne p1, v4, :cond_3

    if-ne p2, v5, :cond_2

    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->grx_stream_activo()I

    move-result v1

    if-eqz v1, :cond_1

    const v6, 0x0

    invoke-interface {v0, v1, v2, v6, v3}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    if-ne p2, v5, :cond_4

    :goto_3
    const/4 v3, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1, v2, v3, v4}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_3

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method

.method public grx_callbacks_long_vol()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxLongVol:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public grx_click_volumen(I)V
    .locals 4

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxTeclaVol:I

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxDobleClickVol:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxTeclaVolNumClicks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxTeclaVolNumClicks:I

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxTeclaVolDobleTapPendiente:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxDobleTapVol:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxTeclaVolDobleTapPendiente:Z

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v2, v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxDobleTapVol:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->grx_ajusta_vol(II)V

    goto :goto_0
.end method

.method protected grx_sendMediaButtonEvent(I)V
    .locals 13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v11, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    const/4 v5, 0x0

    invoke-direct {v11, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    const/16 v2, 0x1

    invoke-static {v0, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    return-void

    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v11, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v11, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v12, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    const/4 v5, 0x0

    invoke-direct {v12, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-wide v4, v1

    move-wide v6, v1

    move v9, p1

    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v12, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v12, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public grx_stream_activo()I
    .locals 4

    const v1, 0x0

    const v2, 0x3

    invoke-static {v2, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_0

    const v2, 0xa

    invoke-static {v2, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x0

    :cond_0
    return v2
.end method

.method public grx_tecla_vol()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxLongVol:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mGrxTimeOutVolumen:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method handleLongPressOnHome(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->handleLongPressOnHome()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    invoke-virtual {p0, v2, v1, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Undefined home long press behavior: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v2, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasNavigationBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method public hideBootMessages()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 25

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;-><init>(Landroid/content/Context;)V

    move-object/from16 v1, p0

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mAbsPhoneWindownManager:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-class v2, Landroid/view/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerInternal;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-class v2, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerInternal;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    const-class v2, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/dreams/DreamManagerInternal;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "appops"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    sget-object v2, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTIWINDOW_PHONE_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/SamsungCoreServices;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    const-string/jumbo v2, "persist.debug.force_burn_in"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-nez v17, :cond_0

    if-eqz v16, :cond_1

    :cond_0
    if-eqz v16, :cond_8

    const/4 v4, -0x8

    const/16 v5, 0x8

    const/4 v6, -0x8

    const/4 v7, -0x4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isRoundWindow()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v8, 0x6

    :goto_0
    new-instance v2, Lcom/android/server/policy/BurnInProtectionHelper;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/policy/BurnInProtectionHelper;-><init>(Landroid/content/Context;IIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    :cond_1
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v9}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v9}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindowManager;->getRotation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v2, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_PHONE_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/SamsungCoreServices;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    invoke-interface {v2, v3, v0, v9, v10}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->init(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    sget-object v2, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTITAPKEY_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/SamsungCoreServices;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/MultitapKeyPolicy;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultitapKeyManager:Lcom/android/server/policy/MultitapKeyPolicy;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultitapKeyManager:Lcom/android/server/policy/MultitapKeyPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3}, Lcom/android/server/policy/MultitapKeyPolicy;->init(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungWindowManagerPolicy;)V

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->observe()V

    new-instance v2, Lcom/android/server/policy/ShortcutManager;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/server/policy/ShortcutManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v2, v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v3, 0x10200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v2, v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.category.CAR_DOCK"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const/high16 v3, 0x10200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v2, v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.category.DESK_DOCK"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const/high16 v3, 0x10200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v3, "PhoneWindowManager.mBroadcastWakeLock"

    const/4 v9, 0x1

    invoke-virtual {v2, v9, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v3, "PhoneWindowManager.mPowerKeyWakeLock"

    const/4 v9, 0x1

    invoke-virtual {v2, v9, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "ro.debuggable"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    const v2, 0x10e003f

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    const v2, 0x10e0044

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    const v2, 0x10e0042

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    const v2, 0x10e0046

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsScreenLock:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    const-string/jumbo v2, "PanicMode"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v9, "CscFeature_Framework_ConfigActionForMultiPowerPress"

    invoke-virtual {v3, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    const-string/jumbo v2, "accessibility"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v19, Landroid/content/IntentFilter;

    invoke-direct/range {v19 .. v19}, Landroid/content/IntentFilter;-><init>()V

    sget-object v2, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v20

    if-eqz v20, :cond_3

    const-string/jumbo v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    :cond_3
    new-instance v19, Landroid/content/IntentFilter;

    invoke-direct/range {v19 .. v19}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.DREAMING_STARTED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.DREAMING_STOPPED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v2, "android.intent.action.ScreenShot"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v19, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v19, Landroid/content/IntentFilter;

    invoke-direct/range {v19 .. v19}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemUIReplacedReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Lcom/android/server/policy/SystemGesturesPointerEventListener;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/policy/PhoneWindowManager$15;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Lcom/android/server/policy/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    new-instance v2, Lcom/android/server/policy/ImmersiveModeConfirmation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/policy/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    const-string/jumbo v2, "vibrator"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    new-instance v23, Landroid/content/IntentFilter;

    const-string/jumbo v2, "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107003c

    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressVibePattern:[J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107003d

    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107003e

    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107003f

    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mClockTickVibePattern:[J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070040

    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070041

    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070042

    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070044

    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContextClickVibePattern:[J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    new-instance v2, Lcom/android/server/policy/GlobalKeyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/policy/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiState()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(I)V

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v3}, Lcom/android/server/policy/StatusBarController;->getAppTransitionListener()Landroid/view/WindowManagerInternal$AppTransitionListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManagerInternal;->registerAppTransitionListener(Landroid/view/WindowManagerInternal$AppTransitionListener;)V

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v22

    const-string/jumbo v2, "2.0"

    const-string/jumbo v3, "version"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsKnoxContainer2Supported:Z

    :cond_5
    sget-object v2, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_EDGE_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/SamsungCoreServices;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v15, p0

    invoke-interface/range {v9 .. v15}, Lcom/android/server/policy/EdgeWindowPolicy;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/server/policy/SamsungWindowManagerPolicy;Lcom/android/server/policy/SystemGesturesPointerEventListener;Lcom/android/server/policy/PhoneWindowManager;)V

    sget-object v2, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_REDUCE_SCREEN_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/SamsungCoreServices;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getReduceScreenPolicy()Lcom/android/server/policy/ReduceScreenPolicy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v2, v0, v1, v3}, Lcom/android/server/policy/ReduceScreenPolicy;->init(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungWindowManagerPolicy;)V

    sget-boolean v2, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_AOD:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_AOD_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/SamsungCoreServices;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getAODWindowPolicy()Lcom/android/server/policy/AODWindowPolicy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v2, v0, v1, v3, v9}, Lcom/android/server/policy/AODWindowPolicy;->init(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungWindowManagerPolicy;Lcom/android/server/policy/StatusBarController;)V

    :cond_6
    sget-object v2, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_TSP_STATE_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/SamsungCoreServices;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getTspStateManagerPolicy()Lcom/android/server/policy/TspStateManagerPolicy;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/android/server/policy/TspStateManagerPolicy;->init(Landroid/content/Context;)V

    return-void

    :cond_7
    const/4 v8, -0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v2, 0x10e0096

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v2, 0x10e0097

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const v2, 0x10e0098

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const v2, 0x10e0099

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const v2, 0x10e0095

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_3

    :catch_0
    move-exception v18

    goto/16 :goto_1
.end method

.method initializeHdmiState()V
    .locals 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    new-instance v8, Ljava/io/File;

    const-string/jumbo v11, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string/jumbo v11, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v8, v11}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string/jumbo v3, "/sys/class/switch/hdmi/state"

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    const-string/jumbo v8, "/sys/class/switch/hdmi/state"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v8, 0xf

    :try_start_1
    new-array v0, v8, [C

    invoke-virtual {v7, v0}, Ljava/io/FileReader;->read([C)I

    move-result v4

    if-le v4, v10, :cond_0

    new-instance v8, Ljava/lang/String;

    add-int/lit8 v11, v4, -0x1

    const/4 v12, 0x0

    invoke-direct {v8, v0, v12, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    if-eqz v8, :cond_2

    const/4 v5, 0x1

    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    if-eqz v5, :cond_4

    move v8, v9

    :goto_2
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v8, :cond_5

    :goto_3
    invoke-virtual {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->setHdmiPlugged(Z)V

    return-void

    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_4
    :try_start_3
    const-string/jumbo v8, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_1

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    :goto_5
    :try_start_5
    const-string/jumbo v8, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v6, :cond_1

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v6, :cond_3

    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_3
    :goto_7
    throw v8

    :catch_5
    move-exception v1

    goto :goto_7

    :cond_4
    move v8, v10

    goto :goto_2

    :cond_5
    move v9, v10

    goto :goto_3

    :catchall_1
    move-exception v8

    move-object v6, v7

    goto :goto_6

    :catch_6
    move-exception v1

    move-object v6, v7

    goto :goto_5

    :catch_7
    move-exception v2

    move-object v6, v7

    goto :goto_4
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 50

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v31

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v30

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v36

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v34

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    const/16 v23, 0x1

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v18

    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "interceptKeyTi keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " down="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " repeatCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " keyguardOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mHomePressed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " canceled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v4, v0, v1, v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v38

    const-wide/16 v6, -0x1

    cmp-long v4, v38, v6

    if-ltz v4, :cond_2

    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "interceptKeyTi s_result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v38

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v38

    :cond_1
    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v4, :cond_3

    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-eqz v4, :cond_4

    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    :goto_2
    const/4 v4, 0x3

    move/from16 v0, v30

    if-ne v0, v4, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isSharedDeviceUnlockScreens()Z

    move-result v4

    if-eqz v4, :cond_7

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    goto :goto_1

    :cond_6
    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->isAltKey(I)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    goto :goto_2

    :cond_7
    if-nez v23, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    if-nez v4, :cond_8

    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "Ignoring HOME; down is not pressed."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_9
    if-eqz v18, :cond_a

    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "Ignoring HOME; event canceled."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v46

    if-eqz v46, :cond_b

    invoke-virtual/range {v46 .. v46}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isTphoneRelaxMode()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultitapKeyManager:Lcom/android/server/policy/MultitapKeyPolicy;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Lcom/android/server/policy/MultitapKeyPolicy;->dispatchMultitapKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isAnyKeyMode()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "ringing: Accept the call!"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v46 .. v46}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    const-string/jumbo v6, "VCHA"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_11
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome()V

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    const-string/jumbo v6, "VCHK"

    const-string/jumbo v7, "HomeKey Click"

    invoke-interface {v4, v6, v7}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_13
    if-eqz p1, :cond_16

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    :goto_4
    if-eqz v15, :cond_19

    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v47, v0

    const/16 v4, 0x7ed

    move/from16 v0, v47

    if-eq v0, v4, :cond_14

    const/16 v4, 0x7d9

    move/from16 v0, v47

    if-ne v0, v4, :cond_17

    :cond_14
    if-nez v36, :cond_15

    iget v4, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_15

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultitapKeyManager:Lcom/android/server/policy/MultitapKeyPolicy;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Lcom/android/server/policy/MultitapKeyPolicy;->dispatchMultitapKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_15
    const-wide/16 v6, 0x0

    return-wide v6

    :cond_16
    const/4 v15, 0x0

    goto :goto_4

    :cond_17
    iget v4, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_14

    iget v4, v15, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v6, 0x10000000

    and-int/2addr v4, v6

    if-nez v4, :cond_14

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v0, v4

    move/from16 v48, v0

    const/16 v28, 0x0

    :goto_5
    move/from16 v0, v28

    move/from16 v1, v48

    if-ge v0, v1, :cond_19

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v4, v4, v28

    move/from16 v0, v47

    if-ne v0, v4, :cond_18

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_18
    add-int/lit8 v28, v28, 0x1

    goto :goto_5

    :cond_19
    if-nez v36, :cond_1e

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    if-eqz v4, :cond_1c

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->handleDoubleTapOnHome()V

    :cond_1a
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultitapKeyManager:Lcom/android/server/policy/MultitapKeyPolicy;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Lcom/android/server/policy/MultitapKeyPolicy;->dispatchMultitapKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_1b
    :goto_7
    const-wide/16 v6, -0x1

    return-wide v6

    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1a

    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_6

    :cond_1e
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1b

    if-nez v31, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultitapKeyManager:Lcom/android/server/policy/MultitapKeyPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/MultitapKeyPolicy;->isHomeConsumed()Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->handleLongPressOnHome(I)V

    goto :goto_7

    :cond_1f
    const/16 v4, 0x52

    move/from16 v0, v30

    if-ne v0, v4, :cond_20

    const/16 v20, 0x1

    if-eqz v23, :cond_34

    if-nez v36, :cond_34

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    if-eqz v4, :cond_34

    and-int/lit8 v4, v34, 0x1

    const/4 v6, 0x1

    if-ne v4, v6, :cond_34

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.BUG_REPORT"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_20
    const/16 v4, 0x54

    move/from16 v0, v30

    if-ne v0, v4, :cond_23

    if-eqz v23, :cond_22

    if-nez v36, :cond_21

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    :cond_21
    const-wide/16 v6, 0x0

    return-wide v6

    :cond_22
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    if-eqz v4, :cond_21

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_23
    const/16 v4, 0xbb

    move/from16 v0, v30

    if-eq v0, v4, :cond_24

    const/16 v4, 0x3e9

    move/from16 v0, v30

    if-ne v0, v4, :cond_2e

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isSharedDeviceKeyguardOn()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isSharedDeviceUnlockScreens()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_26
    if-nez v31, :cond_28

    if-eqz v23, :cond_29

    if-nez v36, :cond_29

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_28

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTouchScreen:Z

    if-nez v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->onTouchStart()V

    :cond_27
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mToggleRunning:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x66

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x66

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x5dc

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_28
    :goto_8
    const-wide/16 v6, -0x1

    return-wide v6

    :cond_29
    if-nez v23, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchKeyConsumed:Z

    if-nez v4, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    :cond_2a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchKeyConsumed:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v4

    if-nez v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    const-string/jumbo v6, "VCRK"

    const-string/jumbo v7, "RecentKey Click"

    invoke-interface {v4, v6, v7}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_2c
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->handleLongPressOnRecent()Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "Handled recent long press, now exiting"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchKeyConsumed:Z

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_2d
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchKeyConsumed:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleSplitScreen()V

    goto :goto_8

    :cond_2e
    const/16 v4, 0x2a

    move/from16 v0, v30

    if-ne v0, v4, :cond_2f

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v4

    if-eqz v4, :cond_2f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isMetaKeyEventRequested()Z

    move-result v4

    if-eqz v4, :cond_33

    :cond_2f
    const/16 v4, 0x2f

    move/from16 v0, v30

    if-ne v0, v4, :cond_30

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isMetaKeyEventRequested()Z

    move-result v4

    if-eqz v4, :cond_36

    :cond_30
    const/16 v4, 0x4c

    move/from16 v0, v30

    if-ne v0, v4, :cond_31

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v4

    if-eqz v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isMetaKeyEventRequested()Z

    move-result v4

    if-eqz v4, :cond_38

    :cond_31
    const/16 v4, 0xdb

    move/from16 v0, v30

    if-ne v0, v4, :cond_3c

    if-eqz v23, :cond_3a

    if-nez v36, :cond_39

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    :cond_32
    :goto_9
    const-wide/16 v6, -0x1

    return-wide v6

    :cond_33
    if-eqz v23, :cond_34

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v37

    if-eqz v37, :cond_34

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->setMetaKeyConsumed()V

    invoke-interface/range {v37 .. v37}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5

    :cond_34
    :goto_a
    const/4 v13, 0x0

    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v4

    if-eqz v4, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isMetaKeyEventRequested()Z

    move-result v4

    if-eqz v4, :cond_4a

    :cond_35
    :goto_b
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    if-eqz v13, :cond_4d

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_36
    if-eqz v23, :cond_34

    if-nez v36, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->setMetaKeyConsumed()V

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_37

    const/16 v47, 0x2

    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_37
    const/16 v47, 0x1

    goto :goto_c

    :cond_38
    if-eqz v23, :cond_34

    if-nez v36, :cond_34

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v4

    if-nez v4, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->setMetaKeyConsumed()V

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->toggleKeyboardShortcutsMenu(I)V

    goto :goto_a

    :cond_39
    const/4 v4, 0x1

    move/from16 v0, v36

    if-ne v0, v4, :cond_32

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    if-nez v31, :cond_32

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistLongPressAction()V

    goto/16 :goto_9

    :cond_3a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    if-eqz v4, :cond_3b

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    goto/16 :goto_9

    :cond_3b
    if-nez v31, :cond_32

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto/16 :goto_9

    :cond_3c
    const/16 v4, 0xe7

    move/from16 v0, v30

    if-ne v0, v4, :cond_3f

    if-nez v23, :cond_34

    if-nez v31, :cond_3d

    new-instance v49, Landroid/content/Intent;

    const-string/jumbo v4, "android.speech.action.WEB_SEARCH"

    move-object/from16 v0, v49

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_d
    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_a

    :cond_3d
    const-string/jumbo v4, "deviceidle"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v21

    if-eqz v21, :cond_3e

    :try_start_1
    const-string/jumbo v4, "voice-search"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_3e
    :goto_e
    new-instance v49, Landroid/content/Intent;

    const-string/jumbo v4, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    move-object/from16 v0, v49

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.speech.extras.EXTRA_SECURE"

    const/4 v6, 0x1

    move-object/from16 v0, v49

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_d

    :cond_3f
    const/16 v4, 0x78

    move/from16 v0, v30

    if-ne v0, v4, :cond_40

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isMetaKeyEventRequested()Z

    move-result v4

    if-eqz v4, :cond_44

    :cond_40
    const/16 v4, 0xdd

    move/from16 v0, v30

    if-eq v0, v4, :cond_41

    const/16 v4, 0xdc

    move/from16 v0, v30

    if-ne v0, v4, :cond_47

    :cond_41
    if-eqz v23, :cond_43

    const/16 v4, 0xdd

    move/from16 v0, v30

    if-ne v0, v4, :cond_46

    const/16 v22, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "screen_brightness_mode"

    const/4 v7, 0x0

    const/4 v8, -0x3

    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v16

    if-eqz v16, :cond_42

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "screen_brightness_mode"

    const/4 v7, 0x0

    const/4 v8, -0x3

    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v32

    sub-int v4, v32, v35

    add-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0xa

    mul-int v45, v4, v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "screen_brightness"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v7

    const/4 v8, -0x3

    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    add-int v17, v17, v45

    move/from16 v0, v32

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v35

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "screen_brightness"

    const/4 v7, -0x3

    move/from16 v0, v17

    invoke-static {v4, v6, v0, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_43
    const-wide/16 v6, -0x1

    return-wide v6

    :cond_44
    if-eqz v23, :cond_45

    if-nez v36, :cond_45

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_45
    const-wide/16 v6, -0x1

    return-wide v6

    :cond_46
    const/16 v22, -0x1

    goto/16 :goto_f

    :cond_47
    const/16 v4, 0x18

    move/from16 v0, v30

    if-eq v0, v4, :cond_48

    const/16 v4, 0x19

    move/from16 v0, v30

    if-ne v0, v4, :cond_49

    :cond_48
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-eqz v4, :cond_34

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_49
    const/16 v4, 0xa4

    move/from16 v0, v30

    if-ne v0, v4, :cond_34

    goto :goto_10

    :cond_4a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-nez v4, :cond_4b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mInitialMetaState:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    goto/16 :goto_b

    :cond_4b
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_35

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    and-int/lit8 v14, v4, 0x32

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    const/high16 v6, 0x70000

    and-int v33, v4, v6

    if-eqz v33, :cond_4c

    if-eqz v14, :cond_4c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mInitialMetaState:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    or-int v7, v14, v33

    xor-int/2addr v6, v7

    if-ne v4, v6, :cond_4c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/hardware/input/InputManagerInternal;->toggleCapsLock(I)V

    const/4 v13, 0x1

    :cond_4c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    goto/16 :goto_b

    :cond_4d
    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v4

    if-eqz v4, :cond_4e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isMetaKeyEventRequested()Z

    move-result v4

    if-eqz v4, :cond_50

    :cond_4e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    if-eqz v4, :cond_55

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v29

    invoke-virtual/range {v29 .. v30}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v4

    if-eqz v4, :cond_55

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    if-eqz v23, :cond_4f

    if-nez v36, :cond_4f

    if-eqz v31, :cond_53

    :cond_4f
    :goto_11
    const-wide/16 v6, -0x1

    return-wide v6

    :cond_50
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isKnoxDesktopMode()Z

    move-result v4

    if-nez v4, :cond_4e

    if-eqz v23, :cond_52

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    :cond_51
    :goto_12
    const-wide/16 v6, -0x1

    return-wide v6

    :cond_52
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v4, :cond_51

    const-string/jumbo v4, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_12

    :cond_53
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v34

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v41

    if-eqz v41, :cond_54

    const/high16 v4, 0x10000000

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_2
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_11

    :catch_0
    move-exception v25

    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    :cond_54
    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dropping unregistered shortcut key combination: SEARCH+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_55
    if-eqz v23, :cond_56

    if-nez v36, :cond_56

    if-eqz v31, :cond_5c

    :cond_56
    if-eqz v23, :cond_57

    if-nez v36, :cond_57

    if-eqz v31, :cond_5d

    :cond_57
    if-eqz v23, :cond_58

    if-nez v36, :cond_58

    const/16 v4, 0x3d

    move/from16 v0, v30

    if-ne v0, v4, :cond_58

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isMetaKeyEventRequested()Z

    move-result v4

    if-eqz v4, :cond_5e

    :cond_58
    if-nez v23, :cond_59

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-eqz v4, :cond_59

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    and-int v4, v4, v34

    if-nez v4, :cond_59

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isKnoxDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_60

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    const/16 v6, 0x1002

    invoke-static {v4, v6}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v4

    if-eqz v4, :cond_60

    :goto_13
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    :cond_59
    if-eqz v23, :cond_5a

    if-nez v36, :cond_5a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isMetaKeyEventRequested()Z

    move-result v4

    if-eqz v4, :cond_61

    :cond_5a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    if-eqz v4, :cond_5b

    if-eqz v23, :cond_64

    :cond_5b
    invoke-static/range {v30 .. v30}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v4

    if-eqz v4, :cond_66

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v4, v6, v0, v1}, Lcom/android/server/policy/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_66

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_5c
    const/high16 v4, 0x10000

    and-int v4, v4, v34

    if-eqz v4, :cond_56

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isMetaKeyEventRequested()Z

    move-result v4

    if-nez v4, :cond_56

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v29

    invoke-virtual/range {v29 .. v30}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v4

    if-eqz v4, :cond_56

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    const v6, -0x70001

    and-int v6, v6, v34

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v4, v0, v1, v6}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v41

    if-eqz v41, :cond_56

    const/high16 v4, 0x10000000

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->setMetaKeyConsumed()V

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_14
    const-wide/16 v6, -0x1

    return-wide v6

    :catch_1
    move-exception v25

    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    :cond_5d
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    if-eqz v19, :cond_57

    const-string/jumbo v4, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v4, 0x10000000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_4
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_15
    const-wide/16 v6, -0x1

    return-wide v6

    :catch_2
    move-exception v25

    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", category="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    :cond_5e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-nez v4, :cond_59

    if-nez v31, :cond_59

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v4

    and-int/lit16 v0, v4, -0xc2

    move/from16 v40, v0

    const/4 v4, 0x2

    move/from16 v0, v40

    invoke-static {v0, v4}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v4

    if-nez v4, :cond_5f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isKnoxDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_59

    const/16 v4, 0x1002

    move/from16 v0, v40

    invoke-static {v0, v4}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v4

    if-eqz v4, :cond_59

    :cond_5f
    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(ZZ)V

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_60
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    goto/16 :goto_13

    :cond_61
    const/16 v4, 0xcc

    move/from16 v0, v30

    if-eq v0, v4, :cond_62

    const/16 v4, 0x3e

    move/from16 v0, v30

    if-ne v0, v4, :cond_5a

    const/high16 v4, 0x70000

    and-int v4, v4, v34

    if-eqz v4, :cond_5a

    :cond_62
    move/from16 v0, v34

    and-int/lit16 v4, v0, 0xc1

    if-nez v4, :cond_63

    const/16 v27, 0x1

    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->switchInputMethod(Z)V

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_63
    const/16 v27, 0x0

    goto :goto_16

    :cond_64
    const/16 v4, 0xcc

    move/from16 v0, v30

    if-eq v0, v4, :cond_65

    const/16 v4, 0x3e

    move/from16 v0, v30

    if-ne v0, v4, :cond_5b

    :cond_65
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_66
    if-eqz v23, :cond_67

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isMetaKeyEventRequested()Z

    move-result v4

    if-eqz v4, :cond_69

    :cond_67
    const/high16 v4, 0x10000

    and-int v4, v4, v34

    if-eqz v4, :cond_68

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isMetaKeyEventRequested()Z

    move-result v4

    if-eqz v4, :cond_6f

    :cond_68
    const-wide/16 v6, 0x0

    return-wide v6

    :cond_69
    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v42, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_6a

    const-wide v6, 0x100000000000L

    or-long v42, v42, v6

    :cond_6a
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-eqz v4, :cond_6b

    const-wide v6, 0x200000000L

    or-long v42, v42, v6

    :cond_6b
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_6c

    const-wide v6, 0x100000000L

    or-long v42, v42, v6

    :cond_6c
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v4

    if-eqz v4, :cond_6d

    const-wide/high16 v6, 0x1000000000000L

    or-long v42, v42, v6

    :cond_6d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v42

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/internal/policy/IShortcutService;

    if-eqz v44, :cond_67

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v4

    if-eqz v4, :cond_6e

    move-object/from16 v0, v44

    move-wide/from16 v1, v42

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/IShortcutService;->notifyShortcutKeyPressed(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6e
    :goto_17
    const-wide/16 v6, -0x1

    return-wide v6

    :catch_3
    move-exception v24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v42

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_17

    :cond_6f
    const-wide/16 v6, -0x1

    return-wide v6

    :catch_4
    move-exception v24

    goto/16 :goto_e

    :catch_5
    move-exception v24

    goto/16 :goto_a
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    const/16 v20, 0x0

    :goto_0
    return v20

    :cond_0
    const/high16 v20, 0x20000000

    and-int v20, v20, p2

    if-eqz v20, :cond_6

    const/4 v9, 0x1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v20

    if-nez v20, :cond_7

    const/4 v7, 0x1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v12

    const/high16 v20, 0x1000000

    and-int v20, v20, p2

    if-eqz v20, :cond_8

    const/4 v10, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    move-object/from16 v20, v0

    if-nez v20, :cond_9

    const/4 v13, 0x0

    :goto_4
    sget-boolean v20, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v20, :cond_1

    const-string/jumbo v20, "WindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "interceptKeyTq keycode="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " interactive="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " keyguardActive="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " policyFlags="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    and-int/lit8 v20, p2, 0x1

    if-nez v20, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    move-result v11

    :goto_5
    if-nez v9, :cond_c

    if-eqz v10, :cond_2

    if-eqz v11, :cond_c

    :cond_2
    if-nez v9, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive()Z

    move-result v20

    if-eqz v20, :cond_d

    const/4 v15, 0x1

    :cond_3
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v17

    and-int/lit8 v20, v17, 0x10

    if-eqz v20, :cond_4

    const/4 v11, 0x0

    :cond_4
    and-int/lit8 v20, v17, 0x2

    if-eqz v20, :cond_f

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->performCPUBoost()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v22

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JI)V

    :cond_5
    const-string/jumbo v20, "WindowManager"

    const-string/jumbo v21, "interceptKeyTq : return condition of SPWM"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    return v20

    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_9
    if-eqz v9, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v13

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v13

    goto/16 :goto_4

    :cond_b
    const/4 v11, 0x1

    goto :goto_5

    :cond_c
    const/4 v15, 0x1

    const/4 v11, 0x0

    goto :goto_6

    :cond_d
    const/4 v15, 0x0

    if-eqz v11, :cond_3

    if-eqz v7, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v20

    if-nez v20, :cond_3

    :cond_e
    const/4 v11, 0x0

    goto :goto_6

    :cond_f
    and-int/lit8 v20, v17, 0x4

    if-eqz v20, :cond_12

    or-int/lit8 v15, v15, 0x1

    :cond_10
    :goto_7
    invoke-static {v12}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v20

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v12, v1}, Lcom/android/server/policy/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    move-result v20

    if-eqz v20, :cond_13

    if-eqz v11, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZI)Z

    :cond_11
    return v15

    :cond_12
    and-int/lit8 v20, v17, 0x8

    if-eqz v20, :cond_10

    and-int/lit8 v15, v15, -0x2

    goto :goto_7

    :cond_13
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v20, v0

    if-eqz v20, :cond_19

    sget-boolean v20, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_IMMERSIVE_FORCE_TOUCH:Z

    if-eqz v20, :cond_19

    if-nez v7, :cond_14

    and-int/lit8 v20, p2, 0x2

    if-eqz v20, :cond_14

    if-eqz v6, :cond_18

    :cond_14
    const/16 v19, 0x0

    :goto_8
    sparse-switch v12, :sswitch_data_0

    :cond_15
    :goto_9
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v15, v2}, Lcom/android/server/policy/EdgeWindowPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;II)I

    move-result v20

    and-int v15, v15, v20

    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v20, v0

    if-nez v20, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->performSystemKeyFeedback(Landroid/view/KeyEvent;)V

    :cond_16
    :goto_a
    if-eqz v11, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZI)Z

    :cond_17
    return v15

    :cond_18
    const/16 v19, 0x1

    goto :goto_8

    :cond_19
    if-eqz v7, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v20, v0

    if-nez v20, :cond_1b

    if-eqz v9, :cond_1c

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v20

    if-nez v20, :cond_1d

    const/16 v19, 0x1

    goto :goto_8

    :cond_1b
    and-int/lit8 v20, p2, 0x2

    if-nez v20, :cond_1a

    :cond_1c
    const/16 v19, 0x0

    goto :goto_8

    :cond_1d
    const/16 v19, 0x0

    goto :goto_8

    :sswitch_0
    if-eqz v7, :cond_1e

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnBackBehavior()Z

    move-result v20

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x12

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_9

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingBackKeyAction()V

    if-eqz v8, :cond_15

    and-int/lit8 v15, v15, -0x2

    goto/16 :goto_9

    :sswitch_1
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/server/policy/EdgeWindowPolicy;->isEdgeWakeupPending()Z

    move-result v20

    if-eqz v20, :cond_1f

    and-int/lit8 v15, v15, -0x2

    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGrxSkipTracks:Z

    if-eqz v0, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-nez v0, :cond_22

    if-eqz v7, :cond_20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mGrxEsLongVol:Z

    move/from16 v1, v12

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mGrxTeclaVol:I

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->grx_tecla_vol()V

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->grx_callbacks_long_vol()V

    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mGrxEsLongVol:Z

    if-nez v1, :cond_21

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mGrxEsLongVol:Z

    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mGrxTeclaVol:I

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->grx_click_volumen(I)V

    :cond_21
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mGrxEsLongVol:Z

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v18

    if-eqz v18, :cond_25

    invoke-virtual/range {v18 .. v18}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v20

    if-eqz v20, :cond_24

    if-eqz v7, :cond_23

    const-string/jumbo v20, "WindowManager"

    const-string/jumbo v21, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v18 .. v18}, Landroid/telecom/TelecomManager;->silenceRinger()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-object/from16 v20, v0

    const-string/jumbo v21, "VCVS"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    and-int/lit8 v15, v15, -0x2

    goto/16 :goto_9

    :cond_24
    invoke-virtual/range {v18 .. v18}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v20

    if-eqz v20, :cond_25

    and-int/lit8 v20, v15, 0x1

    if-nez v20, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_9

    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    move/from16 v20, v0

    if-eqz v20, :cond_26

    or-int/lit8 v15, v15, 0x1

    goto/16 :goto_9

    :cond_26
    and-int/lit8 v20, v15, 0x1

    if-nez v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_9

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v9, v7}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->interceptEndCallKey(Landroid/view/KeyEvent;ZZ)I

    move-result v16

    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    const/4 v11, 0x0

    goto/16 :goto_9

    :sswitch_3
    and-int/lit8 v20, v15, 0x1

    if-eqz v20, :cond_27

    const/4 v6, 0x1

    :cond_27
    const/4 v11, 0x0

    if-eqz v7, :cond_28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_9

    :cond_28
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v6}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V

    goto/16 :goto_9

    :sswitch_4
    and-int/lit8 v15, v15, -0x2

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v20

    if-nez v20, :cond_29

    const/16 v19, 0x0

    :cond_29
    if-eqz v7, :cond_2a

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepPress(J)V

    goto/16 :goto_9

    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepRelease(J)V

    goto/16 :goto_9

    :sswitch_5
    and-int/lit8 v15, v15, -0x2

    const/4 v11, 0x0

    if-nez v7, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManagerInternal;->setUserInactiveOverrideFromWindowManager()V

    goto/16 :goto_9

    :sswitch_6
    and-int/lit8 v15, v15, -0x2

    const/4 v11, 0x1

    goto/16 :goto_9

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/media/session/MediaSessionLegacyHelper;->isGlobalPriorityActive()Z

    move-result v20

    if-eqz v20, :cond_2b

    and-int/lit8 v15, v15, -0x2

    :cond_2b
    and-int/lit8 v20, v15, 0x1

    if-nez v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    new-instance v21, Landroid/view/KeyEvent;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    const/16 v22, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_9

    :sswitch_8
    if-eqz v7, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v18

    if-eqz v18, :cond_15

    invoke-virtual/range {v18 .. v18}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v20

    if-eqz v20, :cond_15

    const-string/jumbo v20, "WindowManager"

    const-string/jumbo v21, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v18 .. v18}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    and-int/lit8 v15, v15, -0x2

    goto/16 :goto_9

    :sswitch_9
    and-int/lit8 v20, v15, 0x1

    if-nez v20, :cond_15

    if-nez v7, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    if-eqz v13, :cond_2c

    const/16 v20, 0x1

    :goto_b
    const/16 v22, 0xc

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v20

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_9

    :cond_2c
    const/16 v20, 0x0

    goto :goto_b

    :sswitch_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressWindowBehavior:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTvPictureInPictureVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_15

    if-nez v7, :cond_2d

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->showTvPictureInPictureMenu(Landroid/view/KeyEvent;)V

    :cond_2d
    and-int/lit8 v15, v15, -0x2

    goto/16 :goto_9

    :cond_2e
    sget-boolean v20, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_IMMERSIVE_FORCE_TOUCH:Z

    if-nez v20, :cond_2f

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    goto/16 :goto_a

    :cond_2f
    const/16 v20, 0x0

    const v21, 0xc378

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    goto/16 :goto_a

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_8
        0x6 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1a -> :sswitch_3
        0x4f -> :sswitch_7
        0x55 -> :sswitch_7
        0x56 -> :sswitch_7
        0x57 -> :sswitch_7
        0x58 -> :sswitch_7
        0x59 -> :sswitch_7
        0x5a -> :sswitch_7
        0x5b -> :sswitch_7
        0x7e -> :sswitch_7
        0x7f -> :sswitch_7
        0x82 -> :sswitch_7
        0xa4 -> :sswitch_1
        0xab -> :sswitch_a
        0xde -> :sswitch_7
        0xdf -> :sswitch_4
        0xe0 -> :sswitch_6
        0xe7 -> :sswitch_9
        0x114 -> :sswitch_5
    .end sparse-switch
.end method

.method public interceptMotionBeforeQueueingNonInteractive(JI)I
    .locals 9

    const-wide/32 v6, 0xf4240

    const/4 v4, 0x2

    const/4 v3, 0x0

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    div-long v0, p1, v6

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZI)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    div-long v0, p1, v6

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZI)Z

    :cond_2
    return v3
.end method

.method isAnyPortrait(I)Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultOrientationForced()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    return v0
.end method

.method isDeviceProvisioned()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDockSideAllowed(I)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-nez v2, :cond_2

    if-eq p1, v3, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    if-eq p1, v3, :cond_3

    if-ne p1, v0, :cond_4

    :cond_3
    :goto_1
    return v0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_0

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7ed

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method isGlobalActionsDialogPowerOptionHidden()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions;->isDialogPowerOptionHidden()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isGlobalActionsDialogShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions;->isDialogShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHidden(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-ne v2, v0, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isKeyguardDrawnLw()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v0

    return v0
.end method

.method isKeyguardShowingAndNotOccluded()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isKeyguardShowingOrOccluded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public isNavBarForcedShownLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    return v0
.end method

.method isSharedDeviceKeyguardOn()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "shared_device_status"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v3
.end method

.method isSharedDeviceUnlockScreens()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isSharedDeviceEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    return v5

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isSharedDeviceKeyguardOn()Z

    move-result v2

    if-eqz v2, :cond_1

    return v4

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_4

    const-string/jumbo v2, "com.sec.enterprise.knox.shareddevice.SetupWizardSecuritySettingActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "com.sec.enterprise.knox.shareddevice.SetupWizardChooseLockPassword"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "com.sec.enterprise.knox.shareddevice.SetupWizardSetPatternActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "com.sec.enterprise.knox.shareddevice.SetupWizardSetFingerPrintActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    return v4

    :cond_4
    return v5
.end method

.method isStatusBarKeyguard()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isStatusBarTransparent()Z
    .locals 2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTopLevelWindow(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_1

    const/16 v1, 0x7cf

    if-gt p1, v1, :cond_1

    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return v0
.end method

.method isUserSetupComplete()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public keepScreenOnStartedLw()V
    .locals 0

    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_0
    return-void
.end method

.method keyguardOn()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isSharedDeviceEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isSharedDeviceKeyguardOn()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    :cond_2
    return v0
.end method

.method launchHomeFromHotKey()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    return-void
.end method

.method launchHomeFromHotKey(ZZ)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSemPersonaManagerLocked()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v2

    aget v1, v2, v4

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isKnoxKeyguardShownForKioskMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "launchHomeFromHotKey() > isKnoxKeyguardShownForKioskMode() : true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isEnableAccessControl(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$16;

    invoke-direct {v3, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$16;-><init>(Lcom/android/server/policy/PhoneWindowManager;Z)V

    invoke-virtual {v2, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    return-void

    :cond_4
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->updateImeTargetFreeformTaskId()V

    :cond_5
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    if-eqz v2, :cond_8

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    :cond_6
    invoke-direct {p0, v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    :goto_1
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_7

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->minimizeOrSildeAllFreeform()V

    :cond_7
    return-void

    :cond_8
    const-string/jumbo v2, "homekey"

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    invoke-virtual {p0, v5, p1}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(ZZ)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method launchVoiceAssistWithWakeLock(Z)V
    .locals 4

    const-string/jumbo v3, "deviceidle"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v3, "voice-search"

    invoke-interface {v0, v3}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.speech.extras.EXTRA_SECURE"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 42

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->canReceiveInput(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_3
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x8de

    if-eq v2, v3, :cond_1

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isForceHideBySViewCover()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isNeedLayoutCoverApplication(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->updateSViewCoverLayout(Z)V

    const/16 v29, 0x1

    :cond_4
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v26

    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_7

    const/16 v30, 0x1

    :goto_1
    if-eqz v30, :cond_6

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Offset ime target window by the last ime window state"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    :cond_6
    const/16 v36, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v33, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v37, v0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v39

    sget-object v8, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    sget-object v9, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    sget-object v11, Lcom/android/server/policy/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    sget-object v12, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    sget-object v22, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    sget-object v35, Lcom/android/server/policy/PhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    const/16 v31, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz v26, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v23

    :goto_2
    move/from16 v0, v37

    and-int/lit16 v5, v0, 0xf0

    if-eqz v26, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    :goto_3
    if-nez v26, :cond_c

    if-eqz p2, :cond_b

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-object/from16 v7, p1

    invoke-interface/range {v6 .. v12}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v13

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    invoke-interface/range {v13 .. v22}, Lcom/android/server/policy/EdgeWindowPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_5c

    return-void

    :cond_7
    const/16 v30, 0x0

    goto/16 :goto_1

    :cond_8
    const/16 v30, 0x0

    goto/16 :goto_1

    :cond_9
    const/16 v23, 0x0

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :cond_c
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-eq v2, v3, :cond_d

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x960

    if-ne v2, v3, :cond_10

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v2, v3, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->canReceiveInput(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    :cond_e
    :goto_5
    const/16 v2, 0x50

    move-object/from16 v0, v16

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    goto :goto_5

    :cond_10
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7ef

    if-ne v2, v3, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x10

    if-eq v5, v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    :goto_6
    const/16 v2, 0x30

    if-eq v5, v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    :cond_12
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x10

    if-ne v5, v2, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_1c

    const/16 v24, 0x1

    :goto_7
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1e

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x63

    if-gt v2, v3, :cond_1d

    const/16 v25, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_16

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_16
    const/16 v40, 0x0

    :goto_9
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v2, :cond_20

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v2, :cond_20

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_20

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_20

    const/16 v27, 0x1

    :goto_a
    const/16 v28, 0x0

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_17

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isInMultiWindowMode()Z

    move-result v28

    :cond_17
    if-eqz v25, :cond_18

    if-eqz v24, :cond_22

    :cond_18
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->isExpandedDockedStack()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v38

    const/4 v2, 0x3

    move/from16 v0, v38

    if-eq v0, v2, :cond_19

    const/4 v2, 0x1

    move/from16 v0, v38

    if-ne v0, v2, :cond_1a

    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    :cond_1a
    :goto_c
    const v2, 0x10100

    and-int/2addr v2, v4

    const v3, 0x10100

    if-ne v2, v3, :cond_36

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_1b

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "layoutWindowLw("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "): IN_SCREEN, INSET_DECOR"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    if-eqz p2, :cond_26

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_1c
    const/16 v24, 0x0

    goto/16 :goto_7

    :cond_1d
    const/16 v25, 0x0

    goto/16 :goto_8

    :cond_1e
    const/16 v25, 0x0

    goto/16 :goto_8

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v2

    if-nez v2, :cond_16

    const/16 v40, 0x1

    goto/16 :goto_9

    :cond_20
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-nez v2, :cond_21

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_21

    const/16 v27, 0x1

    goto/16 :goto_a

    :cond_21
    const/16 v27, 0x0

    goto/16 :goto_a

    :cond_22
    if-nez v40, :cond_18

    if-eqz v27, :cond_18

    if-nez v28, :cond_18

    and-int/lit8 v2, v39, 0x4

    if-nez v2, :cond_24

    and-int/lit16 v2, v4, 0x400

    if-nez v2, :cond_24

    const/high16 v2, 0x4000000

    and-int/2addr v2, v4

    if-nez v2, :cond_24

    const/high16 v2, -0x80000000

    and-int/2addr v2, v4

    if-nez v2, :cond_23

    const/high16 v2, 0x20000

    and-int v2, v2, v33

    if-nez v2, :cond_23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->top:I

    :cond_23
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    :cond_24
    const/high16 v2, 0x8000000

    and-int/2addr v2, v4

    if-nez v2, :cond_18

    and-int/lit8 v2, v39, 0x2

    if-nez v2, :cond_18

    const/high16 v2, -0x80000000

    and-int/2addr v2, v4

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_b

    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isKnoxDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    goto/16 :goto_c

    :cond_26
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_27

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x830

    if-ne v2, v3, :cond_2a

    :cond_27
    if-eqz v23, :cond_2b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    :goto_d
    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    if-eqz v23, :cond_2c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    :goto_e
    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    if-eqz v23, :cond_2d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    :goto_f
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_28

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Laying out status bar window: (%d,%d - %d,%d)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v8, Landroid/graphics/Rect;->left:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x0

    aput-object v7, v6, v13

    iget v7, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x1

    aput-object v7, v6, v13

    iget v7, v8, Landroid/graphics/Rect;->right:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x2

    aput-object v7, v6, v13

    iget v7, v8, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x3

    aput-object v7, v6, v13

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :goto_10
    and-int/lit16 v2, v4, 0x400

    if-nez v2, :cond_33

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v2

    if-eqz v2, :cond_31

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    :cond_29
    :goto_11
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1, v4, v11}, Lcom/android/server/policy/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    const/16 v2, 0x30

    if-eq v5, v2, :cond_35

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :cond_2a
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-eq v2, v3, :cond_27

    const/high16 v2, 0x2000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_2e

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2e

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_2e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_10

    :cond_2b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto/16 :goto_d

    :cond_2c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto/16 :goto_e

    :cond_2d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto/16 :goto_f

    :cond_2e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_2f

    move/from16 v0, v39

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_2f

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2f

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isMobileKeyboardEnabled()Z

    move-result v2

    if-eqz v2, :cond_30

    :cond_2f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_10

    :cond_30
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_10

    :cond_31
    const/16 v2, 0x10

    if-eq v5, v2, :cond_32

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_11

    :cond_32
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_11

    :cond_33
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_29

    const/16 v2, 0x10

    if-eq v5, v2, :cond_34

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_11

    :cond_34
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_11

    :cond_35
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_36
    and-int/lit16 v2, v4, 0x100

    if-nez v2, :cond_37

    move/from16 v0, v39

    and-int/lit16 v2, v0, 0x600

    if-eqz v2, :cond_4f

    :cond_37
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_38

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "layoutWindowLw("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "): IN_SCREEN"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_39

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x830

    if-ne v2, v3, :cond_3b

    :cond_39
    if-eqz v23, :cond_3d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    :goto_12
    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    if-eqz v23, :cond_3e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    :goto_13
    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    if-eqz v23, :cond_3f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    :goto_14
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_3a

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Laying out IN_SCREEN status bar window: (%d,%d - %d,%d)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v8, Landroid/graphics/Rect;->left:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x0

    aput-object v7, v6, v13

    iget v7, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x1

    aput-object v7, v6, v13

    iget v7, v8, Landroid/graphics/Rect;->right:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x2

    aput-object v7, v6, v13

    iget v7, v8, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x3

    aput-object v7, v6, v13

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    :goto_15
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1, v4, v11}, Lcom/android/server/policy/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    const/16 v2, 0x30

    if-eq v5, v2, :cond_4e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :cond_3b
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-eq v2, v3, :cond_39

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e4

    if-eq v2, v3, :cond_39

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e3

    if-eq v2, v3, :cond_3c

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e8

    if-ne v2, v3, :cond_40

    :cond_3c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_3a

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Laying out navigation bar window: (%d,%d - %d,%d)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v8, Landroid/graphics/Rect;->left:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x0

    aput-object v7, v6, v13

    iget v7, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x1

    aput-object v7, v6, v13

    iget v7, v8, Landroid/graphics/Rect;->right:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x2

    aput-object v7, v6, v13

    iget v7, v8, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x3

    aput-object v7, v6, v13

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :cond_3d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto/16 :goto_12

    :cond_3e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto/16 :goto_13

    :cond_3f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto/16 :goto_14

    :cond_40
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7df

    if-eq v2, v3, :cond_41

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-ne v2, v3, :cond_42

    :cond_41
    and-int/lit16 v2, v4, 0x400

    if-eqz v2, :cond_43

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_15

    :cond_42
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x8b6

    if-eq v2, v3, :cond_41

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7f4

    if-eq v2, v3, :cond_41

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x8ca

    if-eq v2, v3, :cond_41

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x8ce

    if-eq v2, v3, :cond_41

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x968

    if-eq v2, v3, :cond_41

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x967

    if-eq v2, v3, :cond_41

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x8b1

    if-eq v2, v3, :cond_41

    :cond_43
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-eq v2, v3, :cond_44

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x964

    if-ne v2, v3, :cond_45

    :cond_44
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_15

    :cond_45
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-eq v2, v3, :cond_46

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x832

    if-ne v2, v3, :cond_47

    :cond_46
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_15

    :cond_47
    const/high16 v2, 0x2000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_48

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_48

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_48

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_15

    :cond_48
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_4b

    move/from16 v0, v39

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_4b

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-eq v2, v3, :cond_49

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-ne v2, v3, :cond_4a

    :cond_49
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_15

    :cond_4a
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7f2

    if-eq v2, v3, :cond_49

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x8fc

    if-eq v2, v3, :cond_49

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x8fe

    if-eq v2, v3, :cond_49

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7f1

    if-eq v2, v3, :cond_49

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_4b

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-le v2, v3, :cond_49

    :cond_4b
    move/from16 v0, v39

    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_4d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x10

    if-eq v5, v2, :cond_4c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_15

    :cond_4c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_15

    :cond_4d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_15

    :cond_4e
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_4f
    if-eqz p2, :cond_51

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_50

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "layoutWindowLw("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "): attached to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_51
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_52

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "layoutWindowLw("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "): normal window"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_53

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e4

    if-ne v2, v3, :cond_54

    :cond_53
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :cond_54
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x830

    if-eq v2, v3, :cond_53

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-eq v2, v3, :cond_55

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d3

    if-ne v2, v3, :cond_57

    :cond_55
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->isExpandedDockedStack()Z

    move-result v2

    if-eqz v2, :cond_56

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    :goto_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :cond_56
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    goto :goto_16

    :cond_57
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x8df

    if-ne v2, v3, :cond_58

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_58
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v2

    if-eqz v2, :cond_59

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    :goto_17
    const/16 v2, 0x30

    if-eq v5, v2, :cond_5b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :cond_59
    const/16 v2, 0x10

    if-eq v5, v2, :cond_5a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_17

    :cond_5a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_17

    :cond_5b
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_5c
    and-int/lit16 v2, v4, 0x200

    if-eqz v2, :cond_5d

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7da

    if-eq v2, v3, :cond_5d

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_65

    :cond_5d
    :goto_18
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v41

    if-eqz v26, :cond_66

    if-eqz v41, :cond_6d

    sget-object v15, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    iget v2, v11, Landroid/graphics/Rect;->left:I

    iget v3, v11, Landroid/graphics/Rect;->top:I

    iget v6, v11, Landroid/graphics/Rect;->right:I

    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v15, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ScreenShapeHelper;->getWindowOutsetBottomPx(Landroid/content/res/Resources;)I

    move-result v32

    if-lez v32, :cond_5f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    move/from16 v34, v0

    if-nez v34, :cond_67

    iget v2, v15, Landroid/graphics/Rect;->bottom:I

    add-int v2, v2, v32

    iput v2, v15, Landroid/graphics/Rect;->bottom:I

    :cond_5e
    :goto_19
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_5f

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "applying bottom outset of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " with rotation "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", result: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    :goto_1a
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_60

    const-string/jumbo v3, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Compute frame "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ": sim=#"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " attach="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " type="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " flags=0x%08x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v7, v14

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " pf="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " df="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " of="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " cf="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " vf="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " dcf="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " sf="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " osf="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v15, :cond_6a

    const-string/jumbo v2, "null"

    :goto_1b
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    move-object/from16 v7, p1

    move-object/from16 v13, v22

    move-object/from16 v14, v35

    invoke-interface/range {v7 .. v15}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-eq v2, v3, :cond_61

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x960

    if-ne v2, v3, :cond_62

    :cond_61
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    if-eqz v2, :cond_6b

    :cond_62
    :goto_1c
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7ef

    if-ne v2, v3, :cond_63

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    if-eqz v2, :cond_6c

    :cond_63
    :goto_1d
    if-eqz v29, :cond_64

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->updateSViewCoverLayout(Z)V

    :cond_64
    return-void

    :cond_65
    const/16 v2, -0x2710

    iput v2, v9, Landroid/graphics/Rect;->top:I

    const/16 v2, -0x2710

    iput v2, v9, Landroid/graphics/Rect;->left:I

    const/16 v2, 0x2710

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x2710

    iput v2, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-eq v2, v3, :cond_5d

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x832

    if-eq v2, v3, :cond_5d

    const/16 v2, -0x2710

    iput v2, v12, Landroid/graphics/Rect;->top:I

    const/16 v2, -0x2710

    iput v2, v12, Landroid/graphics/Rect;->left:I

    const/16 v2, -0x2710

    iput v2, v11, Landroid/graphics/Rect;->top:I

    const/16 v2, -0x2710

    iput v2, v11, Landroid/graphics/Rect;->left:I

    const/16 v2, -0x2710

    iput v2, v10, Landroid/graphics/Rect;->top:I

    const/16 v2, -0x2710

    iput v2, v10, Landroid/graphics/Rect;->left:I

    const/16 v2, 0x2710

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x2710

    iput v2, v12, Landroid/graphics/Rect;->right:I

    const/16 v2, 0x2710

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x2710

    iput v2, v11, Landroid/graphics/Rect;->right:I

    const/16 v2, 0x2710

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x2710

    iput v2, v10, Landroid/graphics/Rect;->right:I

    goto/16 :goto_18

    :cond_66
    move-object/from16 v15, v31

    goto/16 :goto_1a

    :cond_67
    const/4 v2, 0x1

    move/from16 v0, v34

    if-ne v0, v2, :cond_68

    iget v2, v15, Landroid/graphics/Rect;->right:I

    add-int v2, v2, v32

    iput v2, v15, Landroid/graphics/Rect;->right:I

    goto/16 :goto_19

    :cond_68
    const/4 v2, 0x2

    move/from16 v0, v34

    if-ne v0, v2, :cond_69

    iget v2, v15, Landroid/graphics/Rect;->top:I

    sub-int v2, v2, v32

    iput v2, v15, Landroid/graphics/Rect;->top:I

    goto/16 :goto_19

    :cond_69
    const/4 v2, 0x3

    move/from16 v0, v34

    if-ne v0, v2, :cond_5e

    iget v2, v15, Landroid/graphics/Rect;->left:I

    sub-int v2, v2, v32

    iput v2, v15, Landroid/graphics/Rect;->left:I

    goto/16 :goto_19

    :cond_6a
    invoke-virtual {v15}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1b

    :cond_6b
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_1c

    :cond_6c
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->offsetVoiceInputWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_1d

    :cond_6d
    move-object/from16 v15, v31

    goto/16 :goto_1a
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method needSensorRunningLp()Z
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->needSensorRunningLp()I

    move-result v0

    if-ne v0, v3, :cond_0

    return v3

    :cond_0
    if-ne v0, v5, :cond_1

    return v4

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v1, v6, :cond_2

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    :cond_2
    return v3

    :cond_3
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-ne v1, v5, :cond_6

    :cond_5
    return v3

    :cond_6
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v1, v3, :cond_5

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v1, v6, :cond_5

    :cond_7
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-ne v1, v3, :cond_8

    return v4

    :cond_8
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    return v1
.end method

.method public notifyActivityDrawnForKeyguardLw()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$21;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$21;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 7

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    if-ne v3, v2, :cond_1

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v3, :cond_3

    :goto_1
    if-eqz v1, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_2
    const-wide/32 v4, 0xf4240

    div-long v4, p1, v4

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    const/4 v6, 0x3

    invoke-virtual {p0, v4, v5, v3, v6}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZI)Z

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 5

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-ne v0, v1, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->notifyLidSwitchChanged(JZ)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    if-eqz p3, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    const/4 v4, 0x5

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZI)Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_1
.end method

.method public onConfigurationChanged()V
    .locals 8

    const v7, 0x1050018

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isMobileKeyboardEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x10500c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v0, v4, v5

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    aput v0, v4, v5

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v0, v4, v5

    aput v0, v2, v3

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v0, v4, v5

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    aput v0, v4, v5

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v0, v4, v5

    aput v0, v2, v3

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationInCarMode:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    const v4, 0x105001b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationInCarMode:[I

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v4, v5, v6

    aput v4, v2, v3

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationInCarMode:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    const v4, 0x105001c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationInCarMode:[I

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v4, v5, v6

    aput v4, v2, v3

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationInCarMode:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    const v4, 0x105001d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationInCarMode:[I

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v4, v5, v6

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationInCarMode:[I

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    aput v4, v5, v6

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationInCarMode:[I

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v4, v5, v6

    aput v4, v2, v3

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-virtual {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isKnoxDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    sget v4, Lcom/samsung/android/framework/res/R$dimen;->task_bar_height:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v4, v5, v6

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    aput v4, v5, v6

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v4, v5, v6

    aput v4, v2, v3

    :goto_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    const v4, 0x105001a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v4, v5, v6

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    aput v4, v5, v6

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v4, v5, v6

    aput v4, v2, v3

    sget-boolean v2, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_CUSTOM_HEIGHT:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getNavigationBarCustomHeight()I

    move-result v2

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getNavigationBarCustomHeight()I

    move-result v0

    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v0, v4, v5

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    aput v0, v4, v5

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v0, v4, v5

    aput v0, v2, v3

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v0, v4, v5

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    aput v0, v4, v5

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v0, v4, v5

    aput v0, v2, v3

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v4, v5, v6

    aput v4, v2, v3

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    const v4, 0x1050019

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v4, v5, v6

    aput v4, v2, v3

    goto/16 :goto_1
.end method

.method performAuditoryFeedbackForAccessibilityIfNeed()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isGlobalAccessibilityGestureEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    return-void
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-nez v1, :cond_1

    return v5

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v6, "haptic_feedback_enabled"

    const/4 v8, -0x2

    invoke-static {v1, v6, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_3

    move v0, v7

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p3, :cond_4

    :cond_2
    const/4 v4, 0x0

    sparse-switch p2, :sswitch_data_0

    return v5

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    return v5

    :sswitch_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressVibePattern:[J

    :goto_1
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    :goto_2
    array-length v1, v4

    if-ne v1, v7, :cond_6

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    aget-wide v4, v4, v5

    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V

    :goto_3
    return v7

    :sswitch_1
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    goto :goto_1

    :sswitch_2
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    goto :goto_1

    :sswitch_3
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mClockTickVibePattern:[J

    goto :goto_1

    :sswitch_4
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    goto :goto_1

    :sswitch_5
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    goto :goto_1

    :sswitch_6
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    goto :goto_1

    :sswitch_7
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContextClickVibePattern:[J

    goto :goto_1

    :cond_5
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const/4 v5, -0x1

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_7
        0x2710 -> :sswitch_5
        0x2711 -> :sswitch_6
    .end sparse-switch
.end method

.method powerMultiPressAction(JZI)V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0, p4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->powerMultiPressAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    packed-switch p4, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Ignoring toggling theater mode - device not setup."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Toggling theater mode off."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "theater_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Toggling theater mode on."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "theater_mode_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, p2, v1, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Starting brightness boost."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->boostScreenBrightness(J)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 6

    const/4 v5, -0x7

    const/4 v4, 0x0

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v1, p1, p2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :sswitch_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.STATUS_BAR_SERVICE"

    const-string/jumbo v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    return v5

    :cond_1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/StatusBarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.STATUS_BAR_SERVICE"

    const-string/jumbo v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    return v5

    :cond_2
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NAVIGATION BAR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.STATUS_BAR_SERVICE"

    const-string/jumbo v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_3

    return v5

    :cond_3
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/server/policy/EdgeWindowPolicy;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_5
    sget-boolean v1, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_AOD:Z

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getAODWindowPolicy()Lcom/android/server/policy/AODWindowPolicy;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/server/policy/AODWindowPolicy;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    :cond_6
    return v4

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7de -> :sswitch_2
        0x7e1 -> :sswitch_2
        0x7e3 -> :sswitch_1
        0x7e8 -> :sswitch_2
        0x7ed -> :sswitch_3
        0x7f1 -> :sswitch_2
    .end sparse-switch
.end method

.method readLidState()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    return-void
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/IShortcutService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/policy/IShortcutService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v3, "Key already exists."

    invoke-direct {v1, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .locals 4

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_STARTING_WINDOW:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removing starting window for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_3

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/StatusBarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    const-string/jumbo v0, "sys.skip_lockscreen"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->showScrim()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/policy/EdgeWindowPolicy;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    sget-boolean v0, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_AOD:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getAODWindowPolicy()Lcom/android/server/policy/AODWindowPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/policy/AODWindowPolicy;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Removing keyguard scrim"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0
.end method

.method public rotationForOrientationLw(II)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->rotationForOrientationLw(IIIZ)I

    move-result v0

    return v0
.end method

.method public rotationForOrientationLw(IIIZ)I
    .locals 8

    const-string/jumbo v5, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rotationForOrientationLw(orient="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", last="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "); user="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_0

    const-string/jumbo v4, "USER_ROTATION_LOCKED"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " sensorRotation="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " mLidState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " mDockMode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " mHdmiPlugged="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    return v4

    :cond_0
    const-string/jumbo v4, ""

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    move v3, p3

    if-gez p3, :cond_2

    move v3, p2

    :cond_2
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4, p1, p2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->rotationForOrientationLw(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    move v1, v2

    :goto_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    if-ltz v1, :cond_24

    monitor-exit v5

    return v1

    :cond_3
    :try_start_1
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v4, :cond_4

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    goto :goto_1

    :cond_4
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_7

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-nez v4, :cond_5

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v4, :cond_7

    :cond_5
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v4, :cond_6

    move v1, v3

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    goto :goto_1

    :cond_7
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_8

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_a

    :cond_8
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-nez v4, :cond_9

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v4, :cond_b

    :cond_9
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v4, :cond_d

    move v1, v3

    goto :goto_1

    :cond_a
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v6, 0x4

    if-eq v4, v6, :cond_8

    :cond_b
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-nez v4, :cond_c

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayConnected:Z

    if-eqz v4, :cond_e

    :cond_c
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    if-eqz v4, :cond_e

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    goto :goto_1

    :cond_d
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    goto :goto_1

    :cond_e
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayConnected:Z

    if-eqz v4, :cond_f

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayCustomRotation:I

    const/4 v6, -0x1

    if-le v4, v6, :cond_f

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayCustomRotation:I

    goto :goto_1

    :cond_f
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v4, :cond_10

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-nez v4, :cond_10

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    if-ltz v4, :cond_10

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    goto :goto_1

    :cond_10
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    if-eqz v4, :cond_11

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    goto :goto_1

    :cond_11
    const/16 v4, 0xe

    if-ne p1, v4, :cond_12

    move v1, p2

    goto :goto_1

    :cond_12
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    if-nez v4, :cond_13

    const/4 v1, -0x1

    goto/16 :goto_1

    :cond_13
    if-nez v0, :cond_18

    const/4 v4, 0x2

    if-eq p1, v4, :cond_14

    const/4 v4, -0x1

    if-ne p1, v4, :cond_17

    :cond_14
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    if-gez v4, :cond_15

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1120037

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x1

    :goto_2
    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    :cond_15
    const/4 v4, 0x2

    if-ne v3, v4, :cond_16

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1a

    :cond_16
    move v1, v3

    goto/16 :goto_1

    :cond_17
    const/16 v4, 0xb

    if-eq p1, v4, :cond_14

    const/16 v4, 0xc

    if-eq p1, v4, :cond_14

    const/16 v4, 0xd

    if-eq p1, v4, :cond_14

    :cond_18
    const/4 v4, 0x4

    if-eq p1, v4, :cond_14

    const/16 v4, 0xa

    if-eq p1, v4, :cond_14

    const/4 v4, 0x6

    if-eq p1, v4, :cond_14

    const/4 v4, 0x7

    if-eq p1, v4, :cond_14

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1b

    const/4 v4, 0x5

    if-eq p1, v4, :cond_1b

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    goto/16 :goto_1

    :cond_19
    const/4 v4, 0x0

    goto :goto_2

    :cond_1a
    const/16 v4, 0xa

    if-eq p1, v4, :cond_16

    const/16 v4, 0xd

    if-eq p1, v4, :cond_16

    move v1, p2

    goto/16 :goto_1

    :cond_1b
    const/4 v1, -0x1

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1c

    monitor-exit v5

    return v1

    :cond_1c
    :try_start_2
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return v4

    :pswitch_2
    :try_start_3
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-eqz v4, :cond_1d

    monitor-exit v5

    return v1

    :cond_1d
    :try_start_4
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v5

    return v4

    :pswitch_3
    :try_start_5
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v4

    if-eqz v4, :cond_1e

    monitor-exit v5

    return v1

    :cond_1e
    :try_start_6
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v5

    return v4

    :pswitch_4
    :try_start_7
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v4

    if-eqz v4, :cond_1f

    monitor-exit v5

    return v1

    :cond_1f
    :try_start_8
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v5

    return v4

    :pswitch_5
    :try_start_9
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v4

    if-eqz v4, :cond_20

    monitor-exit v5

    return v1

    :cond_20
    :try_start_a
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v4

    if-eqz v4, :cond_21

    monitor-exit v5

    return p2

    :cond_21
    :try_start_b
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit v5

    return v4

    :pswitch_6
    :try_start_c
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v4

    if-eqz v4, :cond_22

    monitor-exit v5

    return v1

    :cond_22
    :try_start_d
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v4

    if-eqz v4, :cond_23

    monitor-exit v5

    return p2

    :cond_23
    :try_start_e
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit v5

    return v4

    :cond_24
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public rotationHasCompatibleMetricsLw(II)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v0

    return v0

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public screenTurnedOff()V
    .locals 2

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Screen turned off..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->screenTurnedOff()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public screenTurnedOn()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 5

    const/4 v4, 0x6

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Screen turning on..."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/EdgeWindowPolicy;->isEdgeWakeupPending()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "EdgeScreen is going to wakeUp. setting mKeyguardDrawComplete."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOn(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V

    :goto_0
    return-void

    :cond_3
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "null mKeyguardDelegate: setting mKeyguardDrawComplete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    goto :goto_0
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v2, p1, p2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_7

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eq p2, v3, :cond_1

    if-ne p2, v7, :cond_4

    :cond_1
    if-eqz v0, :cond_3

    const/4 v2, -0x1

    :goto_1
    return v2

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const v2, 0x10a0034

    goto :goto_1

    :cond_4
    if-eq p2, v5, :cond_5

    if-ne p2, v6, :cond_15

    :cond_5
    if-eqz v0, :cond_6

    const/4 v2, -0x1

    :goto_2
    return v2

    :cond_6
    const v2, 0x10a0033

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_14

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_8

    return v4

    :cond_8
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-nez v2, :cond_c

    if-eq p2, v3, :cond_9

    if-ne p2, v7, :cond_a

    :cond_9
    const v2, 0x10a002e

    return v2

    :cond_a
    if-eq p2, v5, :cond_b

    if-ne p2, v6, :cond_15

    :cond_b
    const v2, 0x10a002d

    return v2

    :cond_c
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v2, v5, :cond_10

    if-eq p2, v3, :cond_d

    if-ne p2, v7, :cond_e

    :cond_d
    const v2, 0x10a0032

    return v2

    :cond_e
    if-eq p2, v5, :cond_f

    if-ne p2, v6, :cond_15

    :cond_f
    const v2, 0x10a0031

    return v2

    :cond_10
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v2, v3, :cond_15

    if-eq p2, v3, :cond_11

    if-ne p2, v7, :cond_12

    :cond_11
    const v2, 0x10a0030

    return v2

    :cond_12
    if-eq p2, v5, :cond_13

    if-ne p2, v6, :cond_15

    :cond_13
    const v2, 0x10a002f

    return v2

    :cond_14
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7f2

    if-ne v2, v3, :cond_15

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->selectDockedDividerAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v2

    return v2

    :cond_15
    const/4 v2, 0x5

    if-ne p2, v2, :cond_17

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isCustomStartingAnimationLw()Z

    move-result v2

    if-eqz v2, :cond_16

    sget v2, Lcom/samsung/android/framework/res/R$anim;->app_starting_exit_for_delaying:I

    return v2

    :cond_16
    const v2, 0x10a0017

    return v2

    :cond_17
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e7

    if-ne v2, v3, :cond_18

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v2, :cond_18

    if-ne p2, v5, :cond_18

    const/4 v2, -0x1

    return v2

    :cond_18
    return v4
.end method

.method public selectRotationAnimationLw([I)V
    .locals 4

    const v3, 0x10a0089

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    packed-switch v0, :pswitch_data_0

    aput v1, p1, v2

    aput v1, p1, v1

    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->selectRotationAnimationLw([I)V

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/policy/EdgeWindowPolicy;->selectRotationAnimationLw([I)V

    sget-boolean v0, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_AOD:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getAODWindowPolicy()Lcom/android/server/policy/AODWindowPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/policy/AODWindowPolicy;->selectRotationAnimationLw([I)V

    :cond_0
    return-void

    :pswitch_0
    const v0, 0x10a008b

    aput v0, p1, v1

    aput v3, p1, v2

    goto :goto_0

    :pswitch_1
    const v0, 0x10a008a

    aput v0, p1, v1

    aput v3, p1, v2

    goto :goto_0

    :cond_1
    aput v1, p1, v2

    aput v1, p1, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method sendCloseSystemWindows()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    if-le v0, v1, :cond_1

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v0, p10, Landroid/graphics/Rect;->left:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v0, p10, Landroid/graphics/Rect;->top:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v0, p10, Landroid/graphics/Rect;->right:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v0, p10, Landroid/graphics/Rect;->bottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    :goto_0
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_0

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object p7

    :cond_0
    invoke-virtual {p6, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_1
    const/16 v0, 0x10

    if-eq p3, v0, :cond_5

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p2

    if-eqz v0, :cond_4

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_1
    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_2
    :goto_2
    if-eqz p5, :cond_d

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_3
    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p5, :cond_3

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object p9

    :cond_3
    invoke-virtual {p8, p9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_4
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p9, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    :cond_6
    iget v0, p9, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    if-ge v0, v1, :cond_7

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    :cond_7
    iget v0, p9, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    if-le v0, v1, :cond_8

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    :cond_8
    iget v0, p9, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_9
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_2

    iget v0, p9, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    if-ge v0, v1, :cond_a

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    :cond_a
    iget v0, p9, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    if-ge v0, v1, :cond_b

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    :cond_b
    iget v0, p9, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    if-le v0, v1, :cond_c

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    :cond_c
    iget v0, p9, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_d
    move-object v0, p9

    goto/16 :goto_3
.end method

.method public setCurrentOrientationLw(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setCurrentUserLw(I)V
    .locals 3

    const/4 v2, 0x0

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setCurrentUser(I)V

    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method public setDeadzoneHole(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getTspStateManagerPolicy()Lcom/android/server/policy/TspStateManagerPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/policy/TspStateManagerPolicy;->setDeadzoneHole(Landroid/os/Bundle;)V

    return-void
.end method

.method public setDisplayOverscan(Landroid/view/Display;IIII)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    iput p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    iput p5, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    :cond_0
    return-void
.end method

.method setHdmiPlugged(Z)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p0, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(ZZ)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public setInitialDisplaySize(Landroid/view/Display;IIIII)V
    .locals 14

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move/from16 v0, p4

    move/from16 v1, p5

    if-le v0, v1, :cond_4

    move/from16 v12, p5

    move/from16 v8, p4

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    const v2, 0x1120038

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    :goto_0
    mul-int/lit16 v2, v12, 0xa0

    div-int v13, v2, p6

    mul-int/lit16 v2, v8, 0xa0

    div-int v9, v2, p6

    move/from16 v0, p4

    move/from16 v1, p5

    if-eq v0, v1, :cond_6

    const/16 v2, 0x258

    if-ge v13, v2, :cond_6

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    const v2, 0x112006a

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    const-string/jumbo v2, "qemu.hw.mainkeys"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v2, "1"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    :cond_2
    :goto_2
    const-string/jumbo v2, "portrait"

    const-string/jumbo v3, "persist.demo.hdmirotation"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    :goto_3
    const-string/jumbo v2, "persist.demo.hdmirotationlock"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    const-string/jumbo v2, "portrait"

    const-string/jumbo v3, "persist.demo.remoterotation"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    :goto_4
    const-string/jumbo v2, "persist.demo.rotationlock"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    const/16 v2, 0x3c0

    if-lt v9, v2, :cond_b

    const/16 v2, 0x2d0

    if-lt v13, v2, :cond_b

    const v2, 0x1120085

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v2, "true"

    const-string/jumbo v3, "config.override_forced_orient"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    :goto_5
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v2 .. v7}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->setInitialDisplaySize(IIIII)V

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v2

    move/from16 v0, p6

    invoke-interface {v2, v0}, Lcom/android/server/policy/EdgeWindowPolicy;->initCocktailBarSize(I)V

    return-void

    :cond_3
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    goto/16 :goto_0

    :cond_4
    move/from16 v12, p4

    move/from16 v8, p5

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    const v2, 0x1120038

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v2, "0"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    goto/16 :goto_2

    :cond_8
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    goto/16 :goto_3

    :cond_9
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    goto/16 :goto_4

    :cond_a
    const/4 v2, 0x1

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    goto :goto_5
.end method

.method public setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    return-void
.end method

.method public setRotationLw(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->setRotationLw(I)V

    return-void
.end method

.method public setSafeMode(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    if-eqz p1, :cond_0

    const/16 v0, 0x2711

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    return-void

    :cond_0
    const/16 v0, 0x2710

    goto :goto_0
.end method

.method public setUserRotationMode(II)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, -0x2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v1, p1, p2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->setUserRotationMode(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-ne p1, v2, :cond_1

    const-string/jumbo v1, "user_rotation"

    invoke-static {v0, v1, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$23;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$23;-><init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showGlobalActions()V
    .locals 2

    const/16 v1, 0xa

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method showGlobalActionsInternal()V
    .locals 5

    const-string/jumbo v1, "globalactions"

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/policy/GlobalActions;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v1, v2, v3}, Lcom/android/server/policy/GlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/policy/GlobalActions;->showDialog(ZZ)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_1
    return-void
.end method

.method public showRecentApps(Z)V
    .locals 4

    const/16 v3, 0x9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not starting activity because user setup is in progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startDockOrHome(ZZ)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSemPersonaManagerLocked()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v4

    aget v3, v4, v5

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->isKnoxKeyguardShownForKioskMode(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "startDockOrHome() > isKnoxKeyguardShownForKioskMode() : true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    :cond_2
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->performHome()V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4, v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isDockHomeEnabled(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p1, :cond_3

    :try_start_0
    const-string/jumbo v4, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    :cond_4
    if-eqz p1, :cond_5

    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v4, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "PWM.startKeyguardExitAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->startKeyguardExitAnimation(JJ)V

    :cond_1
    return-void
.end method

.method public startedGoingToSleep(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Started going to sleep... (why="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedGoingToSleep(I)V

    :cond_1
    return-void
.end method

.method public startedWakingUp()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp(I)V

    return-void
.end method

.method public startedWakingUp(I)V
    .locals 5

    const/4 v4, 0x1

    const v1, 0x11170

    invoke-static {v1, v4}, Landroid/util/EventLog;->writeEvent(II)I

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Started waking up... reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isSharedDeviceEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.enterprise.knox.shareddevice.keyguard"

    const-string/jumbo v3, "com.sec.enterprise.knox.shareddevice.keyguard.SharedDeviceKeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "SharedDeviceKeyguardEventFlag"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isSharedDeviceKeyguardOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Shared devices screen ON completed show state true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "isScreenOn"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedWakingUp(I)V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public subWindowTypeToLayerLw(I)I
    .locals 5

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->subWindowTypeToLayerLw(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :pswitch_0
    const/4 v1, 0x1

    return v1

    :pswitch_1
    const/4 v1, -0x2

    return v1

    :pswitch_2
    const/4 v1, -0x1

    return v1

    :pswitch_3
    const/4 v1, 0x2

    return v1

    :pswitch_4
    const/4 v1, 0x3

    return v1

    :cond_0
    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown sub-window type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public systemBooted()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :goto_0
    monitor-exit v3

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    invoke-virtual {p0, v4}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn()V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->systemBooted()V

    sget-boolean v2, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_AOD:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getAODWindowPolicy()Lcom/android/server/policy/AODWindowPolicy;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/policy/AODWindowPolicy;->systemBooted()V

    :cond_1
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getReduceScreenPolicy()Lcom/android/server/policy/ReduceScreenPolicy;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/policy/ReduceScreenPolicy;->systemBooted()V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isSharedDeviceEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Shared devices on boot completed true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.sec.enterprise.knox.shareddevice.keyguard"

    const-string/jumbo v4, "com.sec.enterprise.knox.shareddevice.keyguard.SharedDeviceKeyguardService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "SharedDeviceKeyguardEventFlag"

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "isDeviceBooted"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferBindKeyguard:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :catchall_1
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public systemReady()V
    .locals 4

    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-interface {v1, v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->systemReady(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readCameraLensCoverState()V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateUiMode()V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$22;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManager$22;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferBindKeyguard:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferBindKeyguard:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-virtual {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->systemReady()V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v1}, Lcom/android/server/policy/ImmersiveModeConfirmation;->systemReady()V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/server/policy/GlobalActions;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v1, v2, v3}, Lcom/android/server/policy/GlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method toggleRecentApps()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V

    :cond_0
    return-void
.end method

.method updateOrientationListenerLp()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mScreenOnEarly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mAwake="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mCurrentAppOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mOrientationSensorEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mKeyguardDrawComplete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mWindowManagerDrawComplete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->enable()V

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Enabling listeners"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    :cond_3
    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->disable()V

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Disabling listeners"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    :cond_5
    return-void
.end method

.method updateRotation(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method updateRotation(ZZ)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateSettings()V
    .locals 14

    const/4 v8, 0x2

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    const-string/jumbo v11, "end_button_behavior"

    const/4 v12, 0x2

    const/4 v13, -0x2

    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    iput v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    const-string/jumbo v11, "incall_power_button_behavior"

    const/4 v12, 0x1

    const/4 v13, -0x2

    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    iput v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    const-string/jumbo v11, "wake_gesture_enabled"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-eqz v11, :cond_8

    const/4 v7, 0x1

    :goto_0
    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eq v11, v7, :cond_0

    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    :cond_0
    const-string/jumbo v11, "user_rotation"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    if-eq v11, v5, :cond_1

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    const/4 v4, 0x1

    :cond_1
    const-string/jumbo v11, "accelerometer_rotation"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-eqz v11, :cond_9

    const/4 v6, 0x0

    :goto_1
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-eq v11, v6, :cond_2

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    :cond_2
    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v11, :cond_4

    const-string/jumbo v11, "pointer_location"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    if-eq v11, v2, :cond_4

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_3

    move v8, v9

    :cond_3
    invoke-virtual {v11, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    const-string/jumbo v8, "screen_off_timeout"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v3, v8, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    const-string/jumbo v8, "default_input_method"

    const/4 v11, -0x2

    invoke-static {v3, v8, v11}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a

    const/4 v0, 0x1

    :goto_2
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v8, v0, :cond_5

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    const/4 v4, 0x1

    :cond_5
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v8, v11}, Lcom/android/server/policy/ImmersiveModeConfirmation;->loadSetting(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit v10

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_1
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/policy/PolicyControl;->reloadFromSetting(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v10

    if-eqz v4, :cond_7

    invoke-virtual {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    :cond_7
    return-void

    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v6, 0x1

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    :catchall_0
    move-exception v8

    monitor-exit v10

    throw v8

    :catchall_1
    move-exception v8

    monitor-exit v10

    throw v8
.end method

.method updateUiMode()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "uimode"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public userActivity()V
    .locals 6

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public validateRotationAnimationLw(IIZ)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    if-eqz p3, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [I

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->selectRotationAnimationLw([I)V

    aget v3, v0, v2

    if-ne p1, v3, :cond_1

    aget v3, v0, v1

    if-ne p2, v3, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x10a008a
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method wakeUp(JZI)Z
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    if-nez p3, :cond_0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "theater_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->performCPUBoost()V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, p1, p2, p4}, Landroid/os/PowerManager;->wakeUp(JI)V

    const/4 v1, 0x1

    return v1
.end method

.method public windowTypeToLayerLw(I)I
    .locals 6

    const/16 v3, 0x13

    const/4 v5, 0x2

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    invoke-interface {v2, p1}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->multiWindowTypeToLayerLw(I)I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x1

    if-lt p1, v2, :cond_1

    const/16 v2, 0x63

    if-gt p1, v2, :cond_1

    return v5

    :cond_1
    sparse-switch p1, :sswitch_data_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v2, p1}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->windowTypeToLayer(I)I

    move-result v1

    if-lez v1, :cond_2

    return v1

    :sswitch_0
    return v5

    :sswitch_1
    return v5

    :sswitch_2
    return v5

    :sswitch_3
    return v5

    :sswitch_4
    const/4 v2, 0x3

    return v2

    :sswitch_5
    const/4 v2, 0x4

    return v2

    :sswitch_6
    const/4 v2, 0x5

    return v2

    :sswitch_7
    const/4 v2, 0x6

    return v2

    :sswitch_8
    const/4 v2, 0x7

    return v2

    :sswitch_9
    return v3

    :sswitch_a
    const/16 v2, 0x9

    return v2

    :sswitch_b
    const/16 v2, 0xa

    return v2

    :sswitch_c
    const/16 v2, 0xb

    return v2

    :sswitch_d
    const/16 v2, 0xc

    return v2

    :sswitch_e
    const/16 v2, 0xd

    return v2

    :sswitch_f
    const/16 v2, 0xe

    return v2

    :sswitch_10
    const/16 v2, 0xf

    return v2

    :sswitch_11
    const/16 v2, 0x10

    return v2

    :sswitch_12
    const/16 v2, 0x11

    return v2

    :sswitch_13
    const/16 v2, 0x12

    return v2

    :sswitch_14
    return v3

    :sswitch_15
    const/16 v2, 0x14

    return v2

    :sswitch_16
    const/16 v2, 0x15

    return v2

    :sswitch_17
    const/16 v2, 0x16

    return v2

    :sswitch_18
    const/16 v2, 0x17

    return v2

    :sswitch_19
    const/16 v2, 0x18

    return v2

    :sswitch_1a
    const/16 v2, 0x19

    return v2

    :sswitch_1b
    const/16 v2, 0x1a

    return v2

    :sswitch_1c
    const/16 v2, 0x1b

    return v2

    :sswitch_1d
    const/16 v2, 0x1c

    return v2

    :sswitch_1e
    const/16 v2, 0x1d

    return v2

    :sswitch_1f
    const/16 v2, 0x1e

    return v2

    :sswitch_20
    const/16 v2, 0x1f

    return v2

    :cond_2
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/server/policy/EdgeWindowPolicy;->windowTypeToLayerLw(I)I

    move-result v1

    if-lez v1, :cond_3

    return v1

    :cond_3
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown window type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_11
        0x7d1 -> :sswitch_5
        0x7d2 -> :sswitch_4
        0x7d3 -> :sswitch_c
        0x7d5 -> :sswitch_9
        0x7d6 -> :sswitch_15
        0x7d7 -> :sswitch_a
        0x7d8 -> :sswitch_8
        0x7d9 -> :sswitch_13
        0x7da -> :sswitch_19
        0x7db -> :sswitch_d
        0x7dc -> :sswitch_e
        0x7dd -> :sswitch_1
        0x7de -> :sswitch_12
        0x7df -> :sswitch_1e
        0x7e0 -> :sswitch_1c
        0x7e1 -> :sswitch_10
        0x7e2 -> :sswitch_20
        0x7e3 -> :sswitch_16
        0x7e4 -> :sswitch_14
        0x7e5 -> :sswitch_1f
        0x7e6 -> :sswitch_7
        0x7e7 -> :sswitch_b
        0x7e8 -> :sswitch_17
        0x7ea -> :sswitch_1b
        0x7eb -> :sswitch_1a
        0x7ed -> :sswitch_f
        0x7ee -> :sswitch_0
        0x7ef -> :sswitch_6
        0x7f0 -> :sswitch_1d
        0x7f1 -> :sswitch_5
        0x7f2 -> :sswitch_2
        0x7f3 -> :sswitch_3
        0x7f4 -> :sswitch_18
        0x82f -> :sswitch_8
    .end sparse-switch
.end method
