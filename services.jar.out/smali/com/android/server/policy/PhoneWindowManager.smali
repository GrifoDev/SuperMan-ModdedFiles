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
        Lcom/android/server/policy/PhoneWindowManager$SDHandler;,
        Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;,
        Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;,
        Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field static final ALTERNATE_CAR_MODE_NAV_SIZE:Z = false

.field private static final BRIGHTNESS_STEPS:I = 0xa

.field private static final BUGREPORT_TV_GESTURE_TIMEOUT_MILLIS:J = 0x3e8L

.field static DEBUG:Z = false

.field static DEBUG_INPUT:Z = false

.field static DEBUG_KEYGUARD:Z = false

.field static DEBUG_LAYOUT:Z = false

.field static DEBUG_SPLASH_SCREEN:Z = false

.field static DEBUG_WAKEUP:Z = false

.field static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field static final DOUBLE_TAP_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = false

.field static final ENABLE_VR_HEADSET_HOME_CAPTURE:Z = true

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final LAST_LONG_PRESS_HOME_BEHAVIOR:I = 0x2

.field static final LONG_PRESS_BACK_GO_TO_VOICE_ASSIST:I = 0x1

.field static final LONG_PRESS_BACK_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_ALL_APPS:I = 0x1

.field static final LONG_PRESS_HOME_ASSIST:I = 0x2

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM:I = 0x3

.field private static final MSG_ACCESSIBILITY_SHORTCUT:I = 0x15

.field private static final MSG_ACCESSIBILITY_TV:I = 0x17

.field private static final MSG_BACK_DELAYED_PRESS:I = 0x14

.field private static final MSG_BACK_LONG_PRESS:I = 0x12

.field private static final MSG_BUGREPORT_TV:I = 0x16

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_DISPATCH_BACK_KEY_TO_AUTOFILL:I = 0x18

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

.field private static final MSG_POWER_DELAYED_PRESS:I = 0xd

.field private static final MSG_POWER_LONG_PRESS:I = 0xe

.field private static final MSG_REQUEST_DISMISS_SDKEYGUARD:I = 0x1

.field private static final MSG_REQUEST_TRANSIENT_BARS:I = 0x10

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_NAVIGATION:I = 0x1

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_STATUS:I = 0x0

.field private static final MSG_SHOW_PICTURE_IN_PICTURE_MENU:I = 0x11

.field private static final MSG_UPDATE_DREAMING_SLEEP_TOKEN:I = 0xf

.field private static final MSG_WINDOW_MANAGER_DRAWN_COMPLETE:I = 0x7

.field static final MULTI_PRESS_POWER_BRIGHTNESS_BOOST:I = 0x2

.field static final MULTI_PRESS_POWER_CURTAIN_MODE:I = 0x65

.field static final MULTI_PRESS_POWER_LAUNCH_CAMERA:I = 0x67

.field static final MULTI_PRESS_POWER_NOTHING:I = 0x0

.field static final MULTI_PRESS_POWER_ONE_TOUCH_REPORT_MODE:I = 0x69

.field static final MULTI_PRESS_POWER_PANIC_MODE:I = 0x68

.field static final MULTI_PRESS_POWER_REASON_PANIC_MODE:Ljava/lang/String; = "PanicMode"

.field static final MULTI_PRESS_POWER_SOS_MESSAGE_MODE:I = 0x66

.field static final MULTI_PRESS_POWER_THEATER_MODE:I = 0x1

.field static final NAV_BAR_BOTTOM:I = 0x0

.field static final NAV_BAR_LEFT:I = 0x2

.field static final NAV_BAR_OPAQUE_WHEN_DOCKED_VISIBLE:I = 0x63

.field static final NAV_BAR_OPAQUE_WHEN_FREEFORM_OR_DOCKED:I = 0x0

.field static final NAV_BAR_RIGHT:I = 0x1

.field static final NAV_BAR_TRANSLUCENT_WHEN_FREEFORM_OPAQUE_OTHERWISE:I = 0x1

.field private static final PANIC_GESTURE_EXPIRATION:J = 0x7530L

.field static final PANIC_PRESS_BACK_COUNT:I = 0x4

.field static final PANIC_PRESS_BACK_HOME:I = 0x1

.field static final PANIC_PRESS_BACK_NOTHING:I = 0x0

.field static final PENDING_KEY_NULL:I = -0x1

.field static final PRINT_ANIM:Z = false

.field public static final REDUCE_SCREEN_ENABLED:Z = true

.field static final SAFE_DEBUG:Z

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME:I = 0x5

.field static final SHORT_PRESS_POWER_GO_HOME:I = 0x4

.field static final SHORT_PRESS_POWER_GO_TO_SLEEP:I = 0x1

.field static final SHORT_PRESS_POWER_NOTHING:I = 0x0

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP:I = 0x2

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME:I = 0x3

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP:I = 0x0

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME:I = 0x1

.field static final SHORT_PRESS_WINDOW_NOTHING:I = 0x0

.field static final SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE:I = 0x1

.field static final SHOW_SPLASH_SCREENS:Z = true

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

.field public static final TOAST_WINDOW_TIMEOUT:I = 0xdac

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x3e8

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static localLOGV:Z

.field static mAllowAllRotations:Z

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
.field private mA11yShortcutChordVolumeUpKeyConsumed:Z

.field private mA11yShortcutChordVolumeUpKeyTime:J

.field private mA11yShortcutChordVolumeUpKeyTriggered:Z

.field mAccelerometerDefault:Z

.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAccessibilityShortcutController:Lcom/android/server/policy/AccessibilityShortcutController;

.field private mAccessibilityTvKey1Pressed:Z

.field private mAccessibilityTvKey2Pressed:Z

.field private mAccessibilityTvScheduled:Z

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

.field private mAppSwitchKeyConsumed:Z

.field mAssistKeyLongPressed:Z

.field mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

.field mAwake:Z

.field volatile mBackKeyHandled:Z

.field volatile mBackKeyPressCounter:I

.field volatile mBeganFromNonInteractive:Z

.field mBootMessageNeedsHiding:Z

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBugreportTvKey1Pressed:Z

.field private mBugreportTvKey2Pressed:Z

.field private mBugreportTvScheduled:Z

.field mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

.field mCalendarDateVibePattern:[J

.field volatile mCameraGestureTriggeredDuringGoingToSleep:Z

.field mCameraLensCoverState:I

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

.field mDemoHdmiRotation:I

.field mDemoHdmiRotationLock:Z

.field mDemoRotation:I

.field mDemoRotationLock:Z

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field private volatile mDismissImeOnBackKeyPressed:Z

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

.field mFifthPressOnPowerBehavior:I

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

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field private mHDMIVender:I

.field private mHandleVolumeKeysInWM:Z

.field mHandler:Landroid/os/Handler;

.field private mHasFeatureLeanback:Z

.field private mHasFeatureWatch:Z

.field mHasNavigationBar:Z

.field mHasSoftInput:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

.field mHdmiPlugged:Z

.field private final mHiddenNavPanic:Ljava/lang/Runnable;

.field private mHideSDKeyguard:Z

.field mHomeConsumed:Z

.field mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mHomeIntent:Landroid/content/Intent;

.field mHomePressed:Z

.field private mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

.field private mImmersiveModeConfirmed:Z

.field mIncallBackBehavior:I

.field mIncallPowerBehavior:I

.field mInitialMetaState:I

.field mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

.field mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

.field private mIsKnoxContainer2Supported:Z

.field mKeyboardTapVibePattern:[J

.field private mKeyguardBound:Z

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field mKeyguardDrawComplete:Z

.field final mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

.field private mKeyguardDrawnOnce:Z

.field volatile mKeyguardOccluded:Z

.field private mKeyguardOccludedChanged:Z

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

.field private mLastShowingDream:Z

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

.field mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

.field mMultitapKeyManager:Lcom/android/server/policy/IMultitapKeyManagerBridge;

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mNavBarOpacityMode:I

.field private final mNavBarVisibilityListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

.field mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mNavigationBarCanMove:Z

.field mNavigationBarCanMoveOnSecondaryDisplay:Z

.field final mNavigationBarController:Lcom/android/server/policy/BarController;

.field mNavigationBarHeightForRotationDefault:[I

.field mNavigationBarHeightForRotationInCarMode:[I

.field mNavigationBarHeightForRotationOnSecondaryDisplay:[I

.field mNavigationBarOnSecondaryDisplay:Landroid/view/WindowManagerPolicy$WindowState;

.field mNavigationBarPosition:I

.field mNavigationBarWidthForRotationDefault:[I

.field mNavigationBarWidthForRotationInCarMode:[I

.field mNavigationBarWidthForRotationOnSecondaryDisplay:[I

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

.field mPanicPressOnBackBehavior:I

.field mPendingCapsLockToggle:Z

.field private mPendingKeyguardOccluded:Z

.field mPendingMetaAction:Z

.field private mPendingPanicGestureUptime:J

.field volatile mPendingWakeKey:I

.field private mPermissionMonitor:Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;

.field private volatile mPersistentVrModeEnabled:Z

.field final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

.field private mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

.field volatile mPictureInPictureVisible:Z

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

.field mRequestedSystemKey:Z

.field mResettingSystemUiFlags:I

.field mRestrictedOverscanScreenHeight:I

.field mRestrictedOverscanScreenLeft:I

.field mRestrictedOverscanScreenTop:I

.field mRestrictedOverscanScreenWidth:I

.field mRestrictedScreenHeight:I

.field mRestrictedScreenLeft:I

.field mRestrictedScreenTop:I

.field mRestrictedScreenWidth:I

.field mSDHandler:Landroid/os/Handler;

.field mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

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

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field final mScreenshotLock:Ljava/lang/Object;

.field private final mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field mSearchKeyShortcutPending:Z

.field mSearchManager:Landroid/app/SearchManager;

.field mSeascapeRotation:I

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

.field mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

.field mSystemLeft:I

.field mSystemReady:Z

.field mSystemRight:I

.field mSystemTop:I

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTmpBoolean:Landroid/util/MutableBoolean;

.field mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mTranslucentDecorEnabled:Z

.field mTriplePressOnPowerBehavior:I

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

.field mVrHeadsetHomeIntent:Landroid/content/Intent;

.field volatile mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

.field mWakeGestureEnabledSetting:Z

.field mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

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

.method static synthetic -get2(Lcom/android/server/policy/PhoneWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/PhoneWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIVender:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/PhoneWindowManager;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeEnabled:Z

    return p1
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

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishBackKeyPress()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishWindowsDrawn()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleHideBootMessage()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->notifyScreenshotError()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/KeyEvent;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(Landroid/view/KeyEvent;ZI)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenuInternal()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/PhoneWindowManager;ILandroid/view/animation/Animation;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->handleStartTransitionForKeyguardLw(ILandroid/view/animation/Animation;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/policy/PhoneWindowManager;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(ZZ)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->takeBugreport()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->updateDreamingSleepToken(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/PhoneWindowManager;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->backLongPress()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/PhoneWindowManager;JI)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->backMultiPressAction(JI)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->disablePointerLocation()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissSDkeyguard()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$InputConsumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->disposeInputConsumer(Landroid/view/WindowManagerPolicy$InputConsumer;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->enablePointerLocation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG:Z

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->SAFE_DEBUG:Z

    sput-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    sput-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    sput-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    sput-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    sput-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z

    const/4 v0, 0x1

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

    const/4 v1, -0x1

    const/4 v3, 0x4

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;

    invoke-direct {v0}, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPermissionMonitor:Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;

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

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationInCarMode:[I

    new-array v0, v3, [I

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

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

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

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchKeyConsumed:Z

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

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedSystemKey:Z

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationOnSecondaryDisplay:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationOnSecondaryDisplay:[I

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMoveOnSecondaryDisplay:Z

    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnSecondaryDisplay:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideSDKeyguard:Z

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$SDHandler;

    invoke-direct {v0, p0, v8}, Lcom/android/server/policy/PhoneWindowManager$SDHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$SDHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSDHandler:Landroid/os/Handler;

    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsKnoxContainer2Supported:Z

    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIVender:I

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$4;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

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

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$5;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVisibilityListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$6;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-direct {v0, p0, v8}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$8;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$9;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$10;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$11;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$12;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHiddenNavPanic:Ljava/lang/Runnable;

    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    return-void
.end method

.method private addSplashscreenContent(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;)Z
    .locals 6

    const/4 v5, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {p2, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v4, 0x30

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v2, :cond_0

    return v5

    :cond_0
    invoke-virtual {p2, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    return v5

    :cond_1
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v3}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;)V

    const/4 v4, 0x1

    return v4
.end method

.method private applyKeyguardPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->shouldBeHiddenByKeyguard(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v3}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v2, p1, v4}, Lcom/android/server/policy/MultiPhoneWindowManager;->canBeHiddenFloatingMultiWindow(Landroid/view/WindowManagerPolicy$WindowState;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/MultiPhoneWindowManager;->applayHiddenFloatingMultiWindowAnimation(Landroid/view/WindowManagerPolicy$WindowState;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1, v3}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v2, p1, v4}, Lcom/android/server/policy/MultiPhoneWindowManager;->canBeHiddenFloatingMultiWindow(Landroid/view/WindowManagerPolicy$WindowState;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/MultiPhoneWindowManager;->applayHiddenFloatingMultiWindowAnimation(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0
.end method

.method private applyLidSwitchState()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->applyLidSwitchState()Z

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

.method private areSystemNavigationKeysEnabled()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "system_navigation_keys_enabled"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private areTranslucentBarsAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    return v0
.end method

.method public static awakenDreams()V
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

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VOICE_ASSIST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private backMultiPressAction(JI)V
    .locals 1

    const/4 v0, 0x4

    if-lt p3, v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPanicPressOnBackBehavior:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private bindKeyguard()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
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

.method private canReceiveInput(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 5

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    xor-int v2, v1, v0

    xor-int/lit8 v3, v2, 0x1

    return v3

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private cancelPendingAccessibilityShortcutAction()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
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

.method private configureNavBarOpacity(IZZZLandroid/view/WindowManagerPolicy$WindowState;)I
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
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0, p1, p5}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->configureNavBarOpacity(ILandroid/view/WindowManagerPolicy$WindowState;)I

    move-result p1

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

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq p5, v0, :cond_1

    if-eqz p3, :cond_7

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/MultiPhoneWindowManager;->isOverlappedFreeformWithNaviBar()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarTranslucentFlag(I)I

    move-result p1

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/MultiPhoneWindowManager;->isExpandedDockedStack()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarOpaqueFlag(I)I

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

.method private dismissSDkeyguard()V
    .locals 6

    const-string/jumbo v3, "enterprise_shared_device_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "WindowManager"

    const-string/jumbo v4, "Hide scrim for shared device"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-interface {v2}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;->hideScrim()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "SharedDeviceKeyguardEventFlag"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.sec.enterprise.knox.shareddevice.keyguard"

    const-string/jumbo v5, "com.sec.enterprise.knox.shareddevice.keyguard.SharedDeviceKeyguardService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sd_show_when_locked"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "isEmergencyCall"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

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

.method private finishBackKeyPress()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyPressCounter:I

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

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    :cond_2
    :try_start_2
    sget-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "WindowManager"

    const-string/jumbo v5, "Finished screen turning on..."

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
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

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hideBootMessages()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    :goto_0
    monitor-exit v4

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    :cond_5
    if-eqz v0, :cond_6

    :try_start_3
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->enableScreenIfNeeded()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v3}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->finishScreenTurningOn()V

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

.method private getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const-string/jumbo v2, "display"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    return-object v2
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

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.hardware.hdmi.cec"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v4

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "hdmi_control"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiControlManager;

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v0

    :cond_1
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    invoke-direct {v2, v0, v4}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Lcom/android/server/policy/PhoneWindowManager$HdmiControl;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    return-object v2
.end method

.method private getKeyguardDrawnTimeout()J
    .locals 4

    const-class v1, Lcom/android/server/SystemServiceManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1}, Lcom/android/server/SystemServiceManager;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    :goto_0
    int-to-long v2, v1

    return-wide v2

    :cond_0
    const/16 v1, 0x1388

    goto :goto_0
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
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getNavigationBarWidthOnSecondaryDisplay(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnSecondaryDisplay:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationOnSecondaryDisplay:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getResolvedLongPressOnPowerBehavior()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isBlockedPowerKeyByKeyTest()Z

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

.method private getVibrationEffect(I)Landroid/os/VibrationEffect;
    .locals 5

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    return-object v2

    :sswitch_0
    invoke-static {v3}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressVibePattern:[J

    :goto_0
    array-length v1, v0

    if-nez v1, :cond_0

    return-object v2

    :sswitch_2
    invoke-static {v3}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1

    :sswitch_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mClockTickVibePattern:[J

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContextClickVibePattern:[J

    goto :goto_0

    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    aget-wide v2, v0, v3

    invoke-static {v2, v3, v4}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-static {v0, v4}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_7
        0x2710 -> :sswitch_5
        0x2711 -> :sswitch_6
    .end sparse-switch
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

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "handleHideBootMessage: dismissing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleShortPressOnHome()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    return-void
.end method

.method private handleStartTransitionForKeyguardLw(ILandroid/view/animation/Animation;)I
    .locals 9

    const/4 v8, 0x0

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "transition/occluded changed occluded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-direct {p0, v4, v8}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZ)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x5

    return v4

    :cond_1
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "Starting keyguard exit animation"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p2, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v6

    add-long v2, v4, v6

    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    :goto_1
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startKeyguardExitAnimation(JJ)V

    :cond_3
    return v8

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    goto :goto_0

    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_1
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

.method private hasPanicPressOnBackBehavior()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPanicPressOnBackBehavior:I

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

.method private interceptAccessibilityGestureTv()Z
    .locals 4

    const/16 v3, 0x17

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    return v1

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    goto :goto_0
.end method

.method private interceptBackKeyDown()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "key_back_down"

    invoke-static {v1, v2, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasPanicPressOnBackBehavior()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyPressCounter:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyPressCounter:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnBackBehavior()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private interceptBackKeyUp(Landroid/view/KeyEvent;)Z
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x0

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasPanicPressOnBackBehavior()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyPressCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyPressCounter:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyPressCounter:I

    if-gt v5, v10, :cond_0

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyPressCounter:I

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v8, 0x14

    invoke-virtual {v5, v8, v6, v9, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMultiPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingBackKeyAction()V

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->silenceRinger()V

    return v9

    :cond_1
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v5

    return v5

    :cond_2
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-ne v5, v10, :cond_3

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x18

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return v2
.end method

.method private interceptBugreportGestureTv(IZ)Z
    .locals 4

    const/16 v3, 0x16

    const/4 v2, 0x1

    const/16 v1, 0x17

    if-ne p1, v1, :cond_2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey1Pressed:Z

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey1Pressed:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey2Pressed:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    return v1

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey2Pressed:Z

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    goto :goto_1
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
    .locals 11

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

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

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v1}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    move-result v4

    :goto_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    move-result v5

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZZ)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHiddenNavPanic:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    :cond_3
    const-class v0, Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/GestureLauncherService;

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    invoke-virtual {v6, p1, p2, v0}, Lcom/android/server/GestureLauncherService;->interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z

    move-result v7

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    iget-boolean v0, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isCombinationKeyTriggered()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_5

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v9, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->interceptPowerKeyDown()V

    return-void

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v9, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v8

    const/4 v0, 0x1

    if-gt v8, v0, :cond_9

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isFlipTypeCoverClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    goto :goto_1

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    goto :goto_1
.end method

.method private interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V
    .locals 10

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

    const/16 v9, 0xd

    invoke-virtual {v7, v9, v5, v8, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xaa

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(Landroid/view/KeyEvent;ZI)V

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

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

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

    :cond_0
    return-void
.end method

.method private interceptSystemNavigationKey(Landroid/view/KeyEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityManager;->sendFingerprintGesture(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->areSystemNavigationKeysEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->handleSystemNavigationKey(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

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

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v1

    :cond_0
    return v1
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

.method private isTvUserSetupComplete()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tv_user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
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
    .end sparse-switch
.end method

.method private launchAllAppsAction()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ALL_APPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private launchAssistAction(Ljava/lang/String;I)V
    .locals 4

    const-string/jumbo v2, "assist"

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

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

.method private layoutNavigationBar(IIIIIIILandroid/graphics/Rect;ZZZZ)Z
    .locals 15

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    move-result v14

    invoke-direct/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->navigationBarPosition(III)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-nez v2, :cond_5

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

    xor-int/lit8 v2, p10, 0x1

    if-eqz v2, :cond_1

    xor-int/lit8 v2, p11, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isMobileKeyboardEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    :cond_1
    :goto_1
    if-nez v14, :cond_2

    if-eqz p9, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isMobileKeyboardEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    packed-switch v2, :pswitch_data_0

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

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    return v2

    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto/16 :goto_0

    :cond_5
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

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

    if-nez v14, :cond_6

    if-eqz p9, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    :goto_3
    if-eqz p9, :cond_1

    xor-int/lit8 v2, p10, 0x1

    if-eqz v2, :cond_1

    xor-int/lit8 v2, p11, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isMobileKeyboardEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    goto/16 :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_3

    :cond_8
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

    if-nez v14, :cond_9

    if-eqz p9, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    :goto_4
    if-eqz p9, :cond_1

    xor-int/lit8 v2, p10, 0x1

    if-eqz v2, :cond_1

    xor-int/lit8 v2, p11, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isMobileKeyboardEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    goto/16 :goto_1

    :cond_a
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_4

    :pswitch_0
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

    goto/16 :goto_2

    :pswitch_1
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

    :pswitch_2
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

    :cond_b
    const/4 v2, 0x0

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private layoutNavigationBarOnNonDefaultDisplay(IIIIIILandroid/graphics/Rect;)V
    .locals 13

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnSecondaryDisplay:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnSecondaryDisplay:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v1

    move/from16 v0, p3

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->navigationBarPosition(IIII)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-nez v1, :cond_2

    sub-int v1, p2, p6

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeightOnSecondaryDisplay(I)I

    move-result v2

    sub-int v12, v1, v2

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sub-int v2, p2, p6

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v12, p1, v2}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnSecondaryDisplay:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v8, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v9, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    move-object/from16 v7, p7

    invoke-interface/range {v1 .. v9}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void

    :cond_2
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    sub-int v1, p1, p5

    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidthOnSecondaryDisplay(I)I

    move-result v2

    sub-int v10, v1, v2

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sub-int v2, p1, p5

    const/4 v3, 0x0

    invoke-virtual {v1, v10, v3, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidthOnSecondaryDisplay(I)I

    move-result v1

    add-int v11, p4, v1

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v2, 0x0

    move/from16 v0, p4

    invoke-virtual {v1, v0, v2, v11, p2}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    goto/16 :goto_0
.end method

.method private layoutStatusBar(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Z
    .locals 11

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_6

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

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/MultiPhoneWindowManager;->isExpandedDockedStack()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    :goto_0
    const/high16 v0, 0x4000000

    and-int v0, v0, p6

    if-eqz v0, :cond_4

    const/4 v9, 0x1

    :goto_1
    const v0, 0x40000008    # 2.000002f

    and-int v0, v0, p6

    if-eqz v0, :cond_5

    const/4 v10, 0x1

    :goto_2
    if-nez p7, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v0

    and-int/2addr v10, v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_1

    xor-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

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

    if-eqz v0, :cond_1

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

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    xor-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_2

    xor-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0}, Lcom/android/server/policy/StatusBarController;->wasRecentlyTranslucent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0}, Lcom/android/server/policy/StatusBarController;->checkHiddenLw()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_3
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    goto/16 :goto_0

    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private layoutWallpaper(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v0, p5, Landroid/graphics/Rect;->left:I

    iput v0, p4, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v0, p5, Landroid/graphics/Rect;->top:I

    iput v0, p4, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->right:I

    iput v0, p4, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    iput v0, p4, Landroid/graphics/Rect;->bottom:I

    return-void
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

.method private navigationBarPosition(IIII)I
    .locals 1

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->navigationBarPosition(III)I

    move-result v0

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

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v3}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->ignorePowerKeyInEncrypting()Z

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

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    goto :goto_0

    :pswitch_2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    invoke-virtual {p0, v4, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    const-string/jumbo v3, "globalactions"

    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    :goto_1
    invoke-interface {v3, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    goto :goto_0

    :cond_1
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

.method private powerPress(Landroid/view/KeyEvent;ZI)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    const/16 v3, 0x67

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    const/16 v3, 0x68

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFifthPressOnPowerBehavior:I

    const/16 v3, 0x69

    if-eq v2, v3, :cond_0

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Suppressed redundant power key press while already in the process of turning the screen on."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    if-ne p3, v4, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v2, p1, p2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->powerPress(Landroid/view/KeyEvent;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "consumed by powerPress"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne p3, v2, :cond_3

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    :cond_2
    :goto_0
    :pswitch_0
    return-void

    :cond_3
    const/4 v2, 0x3

    if-ne p3, v2, :cond_4

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    if-ne p3, v2, :cond_5

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFifthPressOnPowerBehavior:I

    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedSystemKey:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v5, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2, v0, v1, v5, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2, v0, v1, v5, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    goto :goto_0

    :pswitch_5
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    if-nez v2, :cond_6

    const-class v2, Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManagerInternal;

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    :cond_6
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-interface {v2}, Landroid/view/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
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

    const v1, 0x10e0073

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
    const v1, 0x10e004a

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
    const v1, 0x10e0085

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

.method private reportScreenStateToVrManager(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/VrManagerInternal;->onScreenStateChanged(Z)V

    return-void
.end method

.method private selectDockedDividerAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getDockedDividerInsetsLw()I

    move-result v2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-nez v7, :cond_2

    iget v7, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v2

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-lt v7, v8, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v7, v8, :cond_7

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_a

    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v2

    if-lez v7, :cond_8

    iget v7, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-lt v7, v8, :cond_9

    const/4 v5, 0x1

    :goto_2
    if-nez v3, :cond_d

    iget v7, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v2

    if-lez v7, :cond_b

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    if-lt v7, v8, :cond_c

    const/4 v6, 0x1

    :goto_3
    if-nez v5, :cond_e

    move v4, v6

    :goto_4
    if-nez v0, :cond_1

    if-eqz v4, :cond_f

    :cond_1
    return v9

    :cond_2
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v7, v10, :cond_3

    iget v7, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v2

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ge v7, v8, :cond_0

    :cond_3
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v7, v11, :cond_5

    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v2

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-gt v7, v8, :cond_4

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
    const/4 v3, 0x0

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
    if-eq p2, v10, :cond_10

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
    return v9
.end method

.method private setKeyguardOccludedLw(ZZ)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-ne v2, p1, :cond_1

    move v0, p2

    :goto_0
    const-string/jumbo v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setKeyguardOccluded occluded="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " force = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " showing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3, v6, v6}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v3}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->hasLockscreenWallpaper()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasLockscreenWallpaper()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x100000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    return v7

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3, v7, v6}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v4, v4, -0x401

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isSharedDeviceKeyguardOn()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sd_screen_status"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v7, :cond_5

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sd_sim_lock_emergency_call_state"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_5

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sd_sim_lock_emergency_call_state"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSDHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_1
    return v7

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isSharedDeviceKeyguardOn()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sd_screen_status"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sd_screen_status"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_9

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3, p1, v6}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isSharedDeviceKeyguardOn()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p1, :cond_8

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sd_screen_status"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v7, :cond_8

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSDHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    :goto_2
    return v6

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isSharedDeviceKeyguardOn()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sd_screen_status"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_7

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sd_screen_status"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_9
    return v6
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

.method private shortPressPowerGoHome()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onShortPowerPressedGoHome()V

    :cond_0
    return-void
.end method

.method private shouldDispatchInputWhenNonInteractive(Landroid/view/KeyEvent;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v3

    if-ne v3, v5, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    return v6

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-eqz v3, :cond_3

    xor-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_3

    return v5

    :cond_3
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v3, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x108

    if-ne v3, v4, :cond_5

    :cond_4
    return v6

    :cond_5
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v1

    if-eqz v1, :cond_6

    :try_start_0
    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_6

    return v5

    :catch_0
    move-exception v2

    const-string/jumbo v3, "WindowManager"

    const-string/jumbo v4, "RemoteException when checking if dreaming"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x8b1

    if-ne v3, v4, :cond_7

    if-nez p1, :cond_7

    return v5

    :cond_7
    return v6
.end method

.method private shouldEnableWakeGestureLp()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->isSupported()Z

    move-result v0

    :cond_1
    return v0
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

.method private showPictureInPictureMenu(Landroid/view/KeyEvent;)V
    .locals 5

    const/16 v4, 0x11

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showPictureInPictureMenu event="

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

.method private showPictureInPictureMenuInternal()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showPictureInPictureMenu()V

    :cond_0
    return-void
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

.method private takeBugreport()V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "development_settings_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Error taking bugreport"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
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

.method private updateLightNavigationBarLw(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getInputMethodWindowLw()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-nez v2, :cond_3

    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2, v3, v1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isNavigationColorWin(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_0
    if-eqz v1, :cond_2

    if-ne v1, p2, :cond_4

    and-int/lit8 p1, p1, -0x11

    invoke-static {v1, v4}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    or-int/2addr p1, v2

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v2, p1, v1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->updateLightNaviBarLw(ILandroid/view/WindowManagerPolicy$WindowState;)I

    move-result p1

    :cond_2
    return p1

    :cond_3
    move-object v1, p3

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_5

    and-int/lit8 p1, p1, -0x11

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->needFullScreenDimBounds()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-static {p2, v4}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    or-int/2addr p1, v2

    goto :goto_1

    :cond_5
    if-ne v1, v0, :cond_1

    sget-boolean v2, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_LIGHT_NAVIGATION_BAR:Z

    if-eqz v2, :cond_6

    and-int/lit8 p1, p1, -0x11

    invoke-static {v1, v4}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    or-int/2addr p1, v2

    goto :goto_1

    :cond_6
    and-int/lit8 p1, p1, -0x11

    goto :goto_1
.end method

.method private updateLightStatusBarLw(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    :goto_0
    if-eqz v0, :cond_0

    if-ne v0, p2, :cond_3

    and-int/lit16 p1, p1, -0x2001

    invoke-static {v0, v3}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    or-int/2addr p1, v1

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->updateLightStatusBarLw(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result p1

    return p1

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1, v2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isStatusColorWin(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_2
    move-object v0, p3

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_0

    and-int/lit16 p1, p1, -0x2001

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
    .locals 44

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/view/WindowManagerInternal;->isStackVisible(I)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/WindowManagerInternal;->isStackVisible(I)Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v4}, Landroid/view/WindowManagerInternal;->isDockedDividerResizing()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/MultiPhoneWindowManager;->hasDockedStack()Z

    move-result v4

    if-nez v4, :cond_c

    move v4, v8

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    xor-int/lit8 v23, v4, 0x1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v4}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->needUpdateSystemBarsForCoverLw()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x964

    if-ne v4, v5, :cond_1

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v9, p1

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v4, v9, v0, v1}, Lcom/android/server/policy/StatusBarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v4, v9, v0, v1}, Lcom/android/server/policy/BarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v10, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v5, v10, v13}, Lcom/android/server/policy/StatusBarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->drawsSystemBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/high16 v4, 0x40000000    # 2.0f

    and-int v4, v4, p3

    if-nez v4, :cond_f

    const/16 v24, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->drawsSystemBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/high16 v4, 0x40000000    # 2.0f

    and-int v4, v4, v21

    if-nez v4, :cond_10

    const/16 v19, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/MultiPhoneWindowManager;->isExpandedDockedStack()Z

    move-result v4

    if-eqz v4, :cond_2

    or-int/lit8 p3, p3, 0x4

    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v41, v0

    const/16 v4, 0x7d0

    move/from16 v0, v41

    if-ne v0, v4, :cond_11

    const/16 v38, 0x1

    :goto_5
    if-eqz v38, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    const/16 v22, 0x3806

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz v4, :cond_3

    const v22, -0x3fffc7fa

    :cond_3
    move/from16 v0, v22

    not-int v4, v0

    and-int v4, v4, p3

    and-int v5, p2, v22

    or-int p3, v4, v5

    :cond_4
    if-eqz v24, :cond_12

    if-eqz v19, :cond_12

    or-int/lit8 p3, p3, 0x8

    const v4, -0x40000001    # -1.9999999f

    and-int p3, p3, v4

    :cond_5
    :goto_6
    move-object/from16 v4, p0

    move/from16 v5, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/policy/PhoneWindowManager;->configureNavBarOpacity(IZZZLandroid/view/WindowManagerPolicy$WindowState;)I

    move-result p3

    move/from16 v0, p3

    and-int/lit16 v4, v0, 0x1000

    if-eqz v4, :cond_14

    const/16 v30, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_15

    const/16 v28, 0x1

    :goto_8
    and-int/lit8 v4, p3, 0x4

    if-eqz v4, :cond_17

    const/16 v27, 0x1

    :goto_9
    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_18

    const/16 v25, 0x1

    :goto_a
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/MultiPhoneWindowManager;->isExpandedDockedStack()Z

    move-result v31

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-eqz v4, :cond_19

    xor-int/lit8 v20, v31, 0x1

    :goto_b
    if-nez v31, :cond_1a

    if-eqz v20, :cond_1d

    if-nez v28, :cond_1b

    if-eqz v27, :cond_1c

    move/from16 v26, v30

    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_22

    if-nez v26, :cond_1e

    if-nez v38, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-nez v4, :cond_21

    if-nez v28, :cond_1f

    if-eqz v27, :cond_20

    move/from16 v40, v30

    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_23

    if-eqz v25, :cond_23

    move/from16 v39, v30

    :goto_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v34

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    const-wide/16 v42, 0x0

    cmp-long v4, v4, v42

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    sub-long v4, v34, v4

    const-wide/16 v42, 0x7530

    cmp-long v4, v4, v42

    if-gtz v4, :cond_24

    const/16 v37, 0x1

    :goto_f
    if-eqz v37, :cond_6

    if-eqz v25, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    if-eqz v4, :cond_6

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v4}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    invoke-static/range {p3 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v4}, Lcom/android/server/policy/BarController;->showTransient()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v4}, Lcom/android/server/policy/StatusBarController;->isTransientShowRequested()Z

    move-result v4

    if-eqz v4, :cond_26

    xor-int/lit8 v4, v40, 0x1

    if-eqz v4, :cond_26

    move/from16 v18, v27

    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v4}, Lcom/android/server/policy/BarController;->isTransientShowRequested()Z

    move-result v4

    if-eqz v4, :cond_27

    xor-int/lit8 v17, v39, 0x1

    :goto_11
    if-nez v18, :cond_7

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-eqz v4, :cond_8

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->clearClearableFlagsLw()V

    and-int/lit8 p3, p3, -0x8

    :cond_8
    move/from16 v0, p3

    and-int/lit16 v4, v0, 0x800

    if-eqz v4, :cond_28

    const/16 v29, 0x1

    :goto_12
    move/from16 v0, p3

    and-int/lit16 v4, v0, 0x1000

    if-eqz v4, :cond_29

    const/16 v30, 0x1

    :goto_13
    if-nez v29, :cond_2a

    move/from16 v32, v30

    :goto_14
    if-eqz v25, :cond_9

    xor-int/lit8 v4, v32, 0x1

    if-eqz v4, :cond_9

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerLw(Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v4

    const/16 v5, 0x7e6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v5

    if-le v4, v5, :cond_9

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v4

    const/16 v5, 0x96a

    if-eq v4, v5, :cond_9

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v4

    const/16 v5, 0x965

    if-eq v4, v5, :cond_9

    and-int/lit8 p3, p3, -0x3

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move/from16 v0, v40

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    move-result p3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v36

    move/from16 v0, p3

    and-int/lit16 v4, v0, -0x801

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v12

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmed:Z

    if-nez v4, :cond_a

    if-eqz p1, :cond_a

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x1

    if-lt v4, v5, :cond_2c

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x63

    if-gt v4, v5, :cond_2b

    const/4 v15, 0x1

    :goto_15
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v11

    move/from16 v0, v36

    if-eq v0, v12, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v13

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    move-result v4

    if-nez v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v4}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isMirrorLinkEnabled()Z

    move-result v14

    :goto_16
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v16

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/policy/ImmersiveModeConfirmation;->immersiveModeChangedLw(Ljava/lang/String;ZZZZZ)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move/from16 v0, v39

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/policy/BarController;->updateVisibilityLw(ZII)I

    move-result p3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->updateLightNavigationBarLw(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result p3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v4, v0, v9, v1, v2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/view/IWindowStateBridge;->isChildWindow()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/view/IWindowStateBridge;->needForceImmersiveMode()Z

    move-result v4

    xor-int/lit8 v33, v4, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v4

    move/from16 v0, v33

    invoke-interface {v4, v0}, Lcom/samsung/android/view/IWindowStateBridge;->setNonImmersiveWindow(Z)V

    :cond_b
    return p3

    :cond_c
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_d
    const/16 v23, 0x0

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->forcesDrawStatusBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v24

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->forcesDrawStatusBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v19

    goto/16 :goto_4

    :cond_11
    const/16 v38, 0x0

    goto/16 :goto_5

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v4

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq v9, v4, :cond_13

    :goto_17
    const v4, -0x40000009    # -1.9999989f

    and-int p3, p3, v4

    goto/16 :goto_6

    :cond_13
    if-eqz v23, :cond_5

    goto :goto_17

    :cond_14
    const/16 v30, 0x0

    goto/16 :goto_7

    :cond_15
    const/16 v28, 0x0

    goto/16 :goto_8

    :cond_16
    const/16 v28, 0x0

    goto/16 :goto_8

    :cond_17
    const/16 v27, 0x0

    goto/16 :goto_9

    :cond_18
    const/16 v25, 0x0

    goto/16 :goto_a

    :cond_19
    const/16 v20, 0x0

    goto/16 :goto_b

    :cond_1a
    const/16 v26, 0x1

    goto/16 :goto_c

    :cond_1b
    const/16 v26, 0x1

    goto/16 :goto_c

    :cond_1c
    const/16 v26, 0x0

    goto/16 :goto_c

    :cond_1d
    const/16 v26, 0x0

    goto/16 :goto_c

    :cond_1e
    const/16 v40, 0x1

    goto/16 :goto_d

    :cond_1f
    const/16 v40, 0x1

    goto/16 :goto_d

    :cond_20
    const/16 v40, 0x0

    goto/16 :goto_d

    :cond_21
    const/16 v40, 0x0

    goto/16 :goto_d

    :cond_22
    const/16 v40, 0x0

    goto/16 :goto_d

    :cond_23
    const/16 v39, 0x0

    goto/16 :goto_e

    :cond_24
    const/16 v37, 0x0

    goto/16 :goto_f

    :cond_25
    const/16 v37, 0x0

    goto/16 :goto_f

    :cond_26
    const/16 v18, 0x0

    goto/16 :goto_10

    :cond_27
    const/16 v17, 0x0

    goto/16 :goto_11

    :cond_28
    const/16 v29, 0x0

    goto/16 :goto_12

    :cond_29
    const/16 v30, 0x0

    goto/16 :goto_13

    :cond_2a
    const/16 v32, 0x1

    goto/16 :goto_14

    :cond_2b
    const/4 v15, 0x0

    goto/16 :goto_15

    :cond_2c
    const/4 v15, 0x0

    goto/16 :goto_15

    :cond_2d
    const/4 v14, 0x1

    goto/16 :goto_16
.end method

.method private updateSystemUiVisibilityLw()I
    .locals 18

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isFullscreenFreeformLw()Z

    move-result v13

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    :goto_0
    if-nez v9, :cond_2

    const/4 v2, 0x0

    return v2

    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_2
    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v3}, Lcom/android/server/policy/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    :goto_1
    if-nez v9, :cond_4

    const/4 v2, 0x0

    return v2

    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v2, v9}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->canCandidateSystemUiVisibilityLw(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v9

    if-nez v9, :cond_5

    const/4 v2, 0x0

    return v2

    :cond_5
    move-object/from16 v16, v9

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    return v2

    :cond_6
    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->getHideSViewCoverWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    return v2

    :cond_7
    const/4 v2, 0x0

    invoke-static {v9, v2}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    not-int v3, v3

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    not-int v3, v3

    and-int v15, v2, v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v2, :cond_8

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    if-ge v2, v3, :cond_8

    const/4 v2, 0x7

    invoke-static {v9, v2}, Lcom/android/server/policy/PolicyControl;->adjustClearableFlags(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v2

    not-int v2, v2

    and-int/2addr v15, v2

    :cond_8
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-static {v2, v9, v15}, Lcom/android/server/policy/MultiPhoneWindowManager;->adjustImmersiveFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v15

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->updateSystemUiVisibilityLw()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->updateLightStatusBarLw(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->updateLightStatusBarLw(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v2, v0, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getStackBounds(ILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-interface {v2, v0, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getStackBounds(ILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v15}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    xor-int v11, v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastFullscreenStackSysUiFlags:I

    xor-int v14, v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackSysUiFlags:I

    xor-int v12, v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9, v2}, Landroid/view/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v10

    if-nez v11, :cond_a

    if-nez v14, :cond_a

    if-nez v12, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-ne v2, v10, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v3

    if-ne v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    return v2

    :cond_a
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastFullscreenStackSysUiFlags:I

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackSysUiFlags:I

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v8, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$22;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/policy/PhoneWindowManager$22;-><init>(Lcom/android/server/policy/PhoneWindowManager;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/WindowManagerPolicy$WindowState;Z)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v11
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
.method public OnActionReceived(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "RECOVERY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->goToRecovery()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "DOWNLOAD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->goToDownload()V

    goto :goto_0
.end method

.method accessibilityShortcutActivated()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/server/policy/AccessibilityShortcutController;

    invoke-virtual {v0}, Lcom/android/server/policy/AccessibilityShortcutController;->performAccessibilityShortcut()V

    return-void
.end method

.method public addSplashScreen(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;ILandroid/graphics/Bitmap;II)Landroid/view/WindowManagerPolicy$StartingSurface;
    .locals 28

    if-nez p2, :cond_0

    const/16 v24, 0x0

    return-object v24

    :cond_0
    const/16 v23, 0x0

    const/16 v21, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-boolean v24, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z

    if-eqz v24, :cond_1

    const-string/jumbo v24, "WindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "addSplashScreen "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ": nonLocalizedLabel="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " theme="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p11

    invoke-direct {v0, v4, v1}, Lcom/android/server/policy/PhoneWindowManager;->getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_2

    const/16 v24, 0x0

    return-object v24

    :cond_2
    move-object v4, v5

    invoke-virtual {v5}, Landroid/content/Context;->getThemeResId()I
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v24

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    if-eqz p6, :cond_4

    :cond_3
    const/16 v24, 0x4

    :try_start_1
    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    :goto_0
    if-eqz p10, :cond_8

    :try_start_2
    sget-object v24, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    move-object/from16 v0, p10

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v24

    xor-int/lit8 v24, v24, 0x1

    if-eqz v24, :cond_8

    sget-boolean v24, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z

    if-eqz v24, :cond_5

    const-string/jumbo v24, "WindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "addSplashScreen: creating context based on overrideConfig"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " for splash screen"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/content/Context;->setTheme(I)V

    sget-object v24, Lcom/android/internal/R$styleable;->Window:[I

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v20

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    if-eqz v17, :cond_7

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    if-eqz v24, :cond_7

    sget-boolean v24, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z

    if-eqz v24, :cond_6

    const-string/jumbo v24, "WindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "addSplashScreen: apply overrideConfig"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " to starting window resId="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object v4, v13

    :cond_7
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    new-instance v22, Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setIsStartingWindow(Z)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, p6

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_10

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    :goto_1
    const/16 v24, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v25

    monitor-enter v25
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v24

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    move/from16 v24, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    xor-int/lit8 v24, v24, 0x1

    if-eqz v24, :cond_9

    const/high16 v24, 0x80000

    or-int p9, p9, v24

    :cond_9
    :try_start_4
    monitor-exit v25

    or-int/lit8 v24, p9, 0x10

    or-int/lit8 v24, v24, 0x8

    const/high16 v25, 0x20000

    or-int v24, v24, v25

    or-int/lit8 v25, p9, 0x10

    or-int/lit8 v25, v25, 0x8

    const/high16 v26, 0x20000

    or-int v25, v25, v26

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    move-object/from16 v0, v22

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setDefaultIcon(I)V

    move-object/from16 v0, v22

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setDefaultLogo(I)V

    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v24

    const/16 v25, 0x8

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v24, v0

    or-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v24, v0

    or-int/lit8 v24, v24, 0x10

    move/from16 v0, v24

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v24

    if-nez v24, :cond_a

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v24, v0

    move/from16 v0, v24

    or-int/lit16 v0, v0, 0x80

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_a
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Splash Screen "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->addSplashscreenContent(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;)Z

    move-result v18

    const-string/jumbo v24, "window"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Landroid/view/WindowManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v21

    const/16 v24, 0x2

    move/from16 v0, p14

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    const v24, 0x10201b9

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_b

    instance-of v0, v10, Landroid/widget/Toolbar;

    move/from16 v24, v0

    if-eqz v24, :cond_b

    move-object v0, v10

    check-cast v0, Landroid/widget/Toolbar;

    move-object/from16 v19, v0

    const/16 v24, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setVisibility(I)V

    :cond_b
    if-nez v18, :cond_d

    if-gtz p13, :cond_c

    if-eqz p12, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->getCoverStateSwitch()Z

    move-result v24

    if-eqz v24, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isMobileKeyboardEnabled()Z
    :try_end_4
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v24

    xor-int/lit8 v24, v24, 0x1

    if-eqz v24, :cond_d

    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    if-eqz p12, :cond_12

    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v24, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object/from16 v0, p12

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setSystemUiVisibility(I)V

    move-object/from16 v21, v11

    const-string/jumbo v24, "WindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "CustomStartingWindow for IMAGE "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v14

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/view/InflateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_d
    :goto_2
    :try_start_6
    sget-boolean v24, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z

    if-eqz v24, :cond_e

    const-string/jumbo v25, "WindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Adding splash screen window for "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v26, " / "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v26, ": "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    if-eqz v24, :cond_14

    move-object/from16 v24, v21

    :goto_3
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    if-eqz v24, :cond_15

    new-instance v24, Lcom/android/server/policy/SplashScreenSurface;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/SplashScreenSurface;-><init>(Landroid/view/View;Landroid/os/IBinder;)V
    :try_end_6
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    if-eqz v21, :cond_f

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    if-nez v25, :cond_f

    const-string/jumbo v25, "WindowManager"

    const-string/jumbo v26, "view not successfully added to wm, removing view"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_f
    return-object v24

    :cond_10
    const/16 v24, 0x0

    :try_start_7
    move-object/from16 v0, v22

    move-object/from16 v1, p5

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V
    :try_end_7
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    :catch_0
    move-exception v8

    :try_start_8
    const-string/jumbo v24, "WindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " already running, starting window not displayed. "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v8}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v21, :cond_11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    if-nez v24, :cond_11

    const-string/jumbo v24, "WindowManager"

    const-string/jumbo v25, "view not successfully added to wm, removing view"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_11
    :goto_5
    const/16 v24, 0x0

    return-object v24

    :catchall_0
    move-exception v24

    :try_start_9
    monitor-exit v25

    throw v24
    :try_end_9
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_1
    move-exception v9

    :try_start_a
    const-string/jumbo v24, "WindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " failed creating starting window"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v21, :cond_11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    if-nez v24, :cond_11

    const-string/jumbo v24, "WindowManager"

    const-string/jumbo v25, "view not successfully added to wm, removing view"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_5

    :cond_12
    if-lez p13, :cond_d

    :try_start_b
    move-object/from16 v0, v22

    move/from16 v1, p13

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setContentView(I)V

    const-string/jumbo v24, "WindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "CustomStartingWindow for LAYOUT "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v14

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/view/InflateException; {:try_start_b .. :try_end_b} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_2

    :catch_2
    move-exception v7

    :try_start_c
    const-string/jumbo v24, "WindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "CustomStartingWindow just show original starting window. Due to : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_2

    :catchall_1
    move-exception v24

    if-eqz v21, :cond_13

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    if-nez v25, :cond_13

    const-string/jumbo v25, "WindowManager"

    const-string/jumbo v26, "view not successfully added to wm, removing view"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_13
    throw v24

    :cond_14
    const/16 v24, 0x0

    goto/16 :goto_3

    :cond_15
    const/16 v24, 0x0

    goto/16 :goto_4

    :catch_3
    move-exception v6

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
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->adjustConfigurationLw(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 3

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "adjustSystemUiVisibilityLw : vis= 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->adjustSystemUiVisibilityLw(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/StatusBarController;->adjustSystemUiVisibilityLw(II)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/BarController;->adjustSystemUiVisibilityLw(II)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    not-int v0, v0

    and-int/2addr v0, p1

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    not-int v1, v1

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .locals 12

    const-wide/16 v10, 0xdac

    const/4 v8, -0x1

    const v7, -0x10000001

    const/high16 v6, -0x80000000

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

    and-int/2addr v1, v7

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_2

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    :cond_2
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :goto_1
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v6

    if-nez v1, :cond_3

    if-eqz v0, :cond_4

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v1, v8, :cond_4

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v8, :cond_4

    :cond_3
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    :cond_4
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
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz v1, :cond_5

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x100001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_5
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->getHideSViewCoverWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/2addr v1, v7

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    goto :goto_0

    :sswitch_2
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :sswitch_3
    iget-wide v2, p1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_6

    iget-wide v2, p1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    cmp-long v1, v2, v10

    if-lez v1, :cond_7

    :cond_6
    iput-wide v10, p1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    :cond_7
    const v1, 0x1030004

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_1
        0x7d5 -> :sswitch_3
        0x7d6 -> :sswitch_0
        0x7df -> :sswitch_0
        0x7f4 -> :sswitch_2
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public allowNavBarHeightTweak()Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo p0, "custom_navbar_height"

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 13

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->canAffectSystemUiFlags()Z

    move-result v10

    if-nez v10, :cond_17

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v10

    if-eqz v10, :cond_18

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v10}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->canAffectSystemUiFlags()Z

    move-result v1

    :goto_0
    sget-boolean v10, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v10, :cond_0

    const-string/jumbo v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Win "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ": affectsSystemUi="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-object/from16 v0, p4

    invoke-interface {v10, p1, v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->applyWindowPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v10

    if-nez v10, :cond_1

    move-object/from16 v0, p4

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->applyKeyguardPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v4

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v10, :cond_3

    if-eqz v1, :cond_3

    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7db

    if-eq v10, v11, :cond_2

    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x960

    if-ne v10, v11, :cond_3

    :cond_2
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v10}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isCarModeEnabled()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v10

    iput v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    :cond_3
    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7d0

    if-ne v10, v11, :cond_5

    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    :cond_4
    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v10, v10, 0x1000

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    :cond_5
    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7d0

    if-ne v10, v11, :cond_1a

    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v11, 0x10000000

    and-int/2addr v10, v11

    if-eqz v10, :cond_19

    const/4 v6, 0x1

    :goto_1
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v10}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->getHideSViewCoverWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v10

    if-nez v10, :cond_1b

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v10}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isForceHideBySViewCover()Z

    move-result v7

    :goto_2
    if-nez v6, :cond_6

    if-eqz v7, :cond_7

    :cond_6
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->setForceStatusBarFromSViewCover(Z)V

    :cond_7
    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v11, 0x1

    if-lt v10, v11, :cond_1d

    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7d0

    if-ge v10, v11, :cond_1c

    const/4 v2, 0x1

    :goto_3
    const/high16 v10, 0x80000

    and-int/2addr v10, v4

    if-eqz v10, :cond_1e

    const/4 v8, 0x1

    :goto_4
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v9

    const/4 v3, 0x1

    invoke-static {v9}, Landroid/app/ActivityManager$StackId;->normallyFullscreenWindows(I)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/server/policy/MultiPhoneWindowManager;->isExpandedDockedStack()Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_8
    const/4 v3, 0x0

    :cond_9
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v10, :cond_11

    if-eqz v1, :cond_11

    and-int/lit16 v10, v4, 0x800

    if-eqz v10, :cond_b

    if-eqz v3, :cond_b

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v11, 0x10000000

    and-int/2addr v10, v11

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->setForceStatusBarFromSViewCover(Z)V

    :cond_a
    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v11, 0x800000

    and-int/2addr v10, v11

    if-eqz v10, :cond_b

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    const-string/jumbo v10, "Shared devices"

    const-string/jumbo v11, "Force status bar SD type privflag"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v11, 0x10000000

    and-int/2addr v10, v11

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->setShowingSViewCover(Z)V

    :cond_c
    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7e7

    if-ne v10, v11, :cond_e

    iget-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v10, :cond_d

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v10

    if-eqz v10, :cond_e

    :cond_d
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    const/4 v2, 0x1

    :cond_e
    const/4 v5, 0x0

    if-eqz v2, :cond_11

    if-nez p3, :cond_11

    if-eqz v8, :cond_10

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/server/policy/EdgeWindowPolicy;->isEdgeWakeupPending()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v10

    if-nez v10, :cond_f

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v10

    if-eqz v10, :cond_10

    :cond_f
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-static {v9}, Landroid/app/ActivityManager$StackId;->normallyFullscreenWindows(I)Z

    move-result v10

    if-nez v10, :cond_1f

    :cond_11
    :goto_5
    if-eqz v1, :cond_13

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7ef

    if-ne v10, v11, :cond_13

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v10, :cond_12

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v10, :cond_12

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_12
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v10, :cond_13

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v10, :cond_13

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_13
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v10, :cond_14

    if-eqz v1, :cond_14

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-static {v9}, Landroid/app/ActivityManager$StackId;->normallyFullscreenWindows(I)Z

    move-result v10

    if-eqz v10, :cond_14

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_14
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v10, :cond_15

    if-eqz v1, :cond_15

    if-eqz v2, :cond_15

    if-nez p3, :cond_15

    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v10

    if-eqz v10, :cond_15

    const/4 v10, 0x3

    if-ne v9, v10, :cond_15

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v10, :cond_15

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_15
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-object/from16 v0, p3

    invoke-interface {v10, p1, p2, v0, v8}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;Z)V

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v10, :cond_16

    if-eqz v1, :cond_16

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v10

    if-eqz v10, :cond_16

    const/4 v10, 0x3

    if-ne v9, v10, :cond_16

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_16
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10, p1, v11, p2}, Lcom/android/server/policy/EdgeWindowPolicy;->applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_17
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_18
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_19
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_1a
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_1b
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_1d
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_1e
    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_1f
    sget-boolean v10, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v10, :cond_20

    const-string/jumbo v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Fullscreen window: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v10, :cond_21

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_21
    and-int/lit8 v10, v4, 0x1

    if-eqz v10, :cond_11

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    goto/16 :goto_5
.end method

.method public beginLayoutLw(ZIIII)V
    .locals 7

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->beginLayoutLw(ZIIIII)V

    return-void
.end method

.method public beginLayoutLw(ZIIIII)V
    .locals 35

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    if-eqz p1, :cond_6

    packed-switch p4, :pswitch_data_0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    move/from16 v30, v0

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

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    sub-int v4, p2, v9

    sub-int/2addr v4, v10

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    sub-int v4, p3, v30

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

    sget-object v31, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    sget-object v25, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    sget-object v29, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    sget-object v34, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    sget-object v12, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, v34

    iput v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v31

    iput v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v34

    iput v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v31

    iput v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, v34

    iput v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v31

    iput v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v34

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v31

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz p1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    move/from16 v32, v0

    and-int/lit8 v4, v32, 0x2

    if-nez v4, :cond_7

    const/4 v13, 0x1

    :goto_1
    const v4, -0x7fff8000

    and-int v4, v4, v32

    if-eqz v4, :cond_8

    const/4 v14, 0x1

    :goto_2
    move/from16 v0, v32

    and-int/lit16 v4, v0, 0x800

    if-eqz v4, :cond_9

    const/16 v26, 0x1

    :goto_3
    move/from16 v0, v32

    and-int/lit16 v4, v0, 0x1000

    if-eqz v4, :cond_a

    const/16 v27, 0x1

    :goto_4
    if-nez v26, :cond_b

    move/from16 v15, v27

    :goto_5
    xor-int/lit8 v4, v27, 0x1

    and-int/2addr v14, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v4}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isStatusBarSViewCover()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    xor-int/lit8 v28, v4, 0x1

    :goto_6
    if-nez v28, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v4

    and-int/2addr v14, v4

    :cond_0
    if-nez v28, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_d

    const/16 v16, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d9

    if-ne v4, v5, :cond_f

    const-string/jumbo v4, "Bouncer"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_8
    or-int v16, v16, v4

    if-nez v13, :cond_1

    if-eqz v15, :cond_10

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
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    or-int/2addr v13, v4

    move-object/from16 v4, p0

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v4 .. v16}, Lcom/android/server/policy/PhoneWindowManager;->layoutNavigationBar(IIIIIIILandroid/graphics/Rect;ZZZZ)Z

    move-result v33

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

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p6

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->beginLayoutLw(IIII)V

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

    move-object/from16 v18, v31

    move-object/from16 v19, v25

    move-object/from16 v20, v29

    move-object/from16 v21, v34

    move-object/from16 v22, v12

    move/from16 v23, v32

    move/from16 v24, v28

    invoke-direct/range {v17 .. v24}, Lcom/android/server/policy/PhoneWindowManager;->layoutStatusBar(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Z

    move-result v4

    or-int v33, v33, v4

    if-eqz v33, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v4}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isForceHideBySViewCover()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p1, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v4}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-interface {v4, v0, v1, v2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->beginCoverLayoutLw(III)V

    :cond_5
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    move/from16 v30, v0

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

    move/from16 v30, v0

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

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    goto/16 :goto_0

    :cond_6
    const/4 v9, 0x0

    const/16 v30, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_9
    const/16 v26, 0x0

    goto/16 :goto_3

    :cond_a
    const/16 v27, 0x0

    goto/16 :goto_4

    :cond_b
    const/4 v15, 0x1

    goto/16 :goto_5

    :cond_c
    const/16 v28, 0x0

    goto/16 :goto_6

    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_7

    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_7

    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_8

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    const-string/jumbo v6, "nav_input_consumer"

    new-instance v7, Lcom/android/server/policy/-$Lambda$Nd7e3Murb8x7RqelLk3bI3c3rfY;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/policy/-$Lambda$Nd7e3Murb8x7RqelLk3bI3c3rfY;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v5, v6, v7}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;)Landroid/view/WindowManagerPolicy$InputConsumer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    goto/16 :goto_9

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

    const/4 v1, 0x0

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKnoxUserToShowKeyguard:I

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideSDKeyguard:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->beginPostLayoutPolicyLw(II)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    return-void
.end method

.method public canBeHiddenByKeyguardLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerLw(Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v1

    const/16 v2, 0x7d0

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :sswitch_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x969 -> :sswitch_0
    .end sparse-switch
.end method

.method public canDismissBootAnimation()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method canHideNavigationBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method public canMagnifyWindow(I)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isEasyOneHandEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    :cond_0
    sparse-switch p1, :sswitch_data_0

    return v2

    :sswitch_0
    return v1

    :pswitch_data_0
    .packed-switch 0x8ca
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x7db -> :sswitch_0
        0x7dc -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7eb -> :sswitch_0
        0x8e1 -> :sswitch_0
        0x960 -> :sswitch_0
        0x968 -> :sswitch_0
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

.method cancelPreloadRecentApps()V
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

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
    .locals 12

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, -0x1

    const/4 v9, 0x0

    aput v8, p2, v9

    const/4 v8, 0x1

    if-lt v4, v8, :cond_0

    const/16 v8, 0x63

    if-le v4, v8, :cond_3

    :cond_0
    const/16 v8, 0x3e8

    if-lt v4, v8, :cond_1

    const/16 v8, 0x7cf

    if-le v4, v8, :cond_3

    :cond_1
    const/16 v8, 0x7d0

    if-lt v4, v8, :cond_2

    const/16 v8, 0xbb7

    if-le v4, v8, :cond_3

    :cond_2
    const/16 v8, -0xa

    return v8

    :cond_3
    const/16 v8, 0x7d0

    if-lt v4, v8, :cond_4

    const/16 v8, 0xbb7

    if-le v4, v8, :cond_5

    :cond_4
    const/4 v8, 0x0

    return v8

    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v8}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isGearVrSupport()Z

    move-result v8

    if-eqz v8, :cond_6

    const-class v8, Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v7, :cond_6

    const/4 v8, 0x0

    aget v8, p2, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    iget-object v8, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v1, v4}, Lcom/samsung/android/vr/GearVrManagerInternal;->isOverlayRestrictionWindow(Ljava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x46

    const/4 v9, 0x0

    aput v8, p2, v9

    :cond_6
    invoke-static {v4}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v8

    if-nez v8, :cond_8

    sparse-switch v4, :sswitch_data_0

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v8, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_7

    const/4 v8, 0x0

    :goto_0
    return v8

    :sswitch_0
    const/16 v8, 0x2d

    const/4 v9, 0x0

    aput v8, p2, v9

    const/4 v8, 0x0

    return v8

    :sswitch_1
    const/4 v8, 0x0

    return v8

    :cond_7
    const/4 v8, -0x8

    goto :goto_0

    :cond_8
    const/16 v8, 0x18

    const/4 v9, 0x0

    aput v8, p2, v9

    :try_start_0
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v11, v10}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-eqz v0, :cond_a

    const-string/jumbo v8, "17"

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x12

    if-lt v8, v9, :cond_b

    if-lez v6, :cond_9

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPermissionMonitor:Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;

    invoke-virtual {v8, v0, v6}, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->isEnforcedInUser(Landroid/content/pm/ApplicationInfo;I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_9

    const/4 v8, -0x8

    return v8

    :catch_0
    move-exception v2

    const/4 v0, 0x0

    goto :goto_1

    :cond_9
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPermissionMonitor:Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;

    invoke-virtual {v8, v0, v6}, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->isWhitelistedAppInUser(Landroid/content/pm/ApplicationInfo;I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_a

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPermissionMonitor:Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-virtual {v8, v9, v5}, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->sendNotificationForAppPermissionMonitor(II)V

    :cond_a
    :goto_2
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    const/16 v9, 0x3e8

    if-ne v8, v9, :cond_c

    const/4 v8, 0x0

    return v8

    :cond_b
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPermissionMonitor:Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-virtual {v8, v9, v5}, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->sendNotificationForAppPermissionMonitor(II)V

    goto :goto_2

    :cond_c
    if-eqz v0, :cond_d

    const/16 v8, 0x7f6

    if-eq v4, v8, :cond_f

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0x1a

    if-lt v8, v9, :cond_f

    :cond_d
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v8, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_e

    const/4 v8, 0x0

    :goto_3
    return v8

    :cond_e
    const/4 v8, -0x8

    goto :goto_3

    :cond_f
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v9, 0x0

    aget v9, p2, v9

    iget-object v10, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v1, v10}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v8, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_11

    const/4 v8, 0x0

    :goto_4
    return v8

    :pswitch_0
    const/4 v8, 0x0

    return v8

    :pswitch_1
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0x17

    if-ge v8, v9, :cond_10

    const/4 v8, 0x0

    return v8

    :cond_10
    const/4 v8, -0x8

    return v8

    :cond_11
    const/4 v8, -0x8

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x7d5 -> :sswitch_0
        0x7db -> :sswitch_1
        0x7dd -> :sswitch_1
        0x7e7 -> :sswitch_1
        0x7ee -> :sswitch_1
        0x7ef -> :sswitch_1
        0x7f0 -> :sswitch_1
        0x7f3 -> :sswitch_1
        0x7f5 -> :sswitch_1
        0x8ff -> :sswitch_1
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
        0x7ee -> :sswitch_0
        0x7f2 -> :sswitch_0
        0x7f5 -> :sswitch_0
        0x833 -> :sswitch_0
        0x8fe -> :sswitch_0
        0x902 -> :sswitch_0
        0x96b -> :sswitch_0
    .end sparse-switch
.end method

.method public createHiddenByKeyguardExit(ZZ)Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->createHiddenByKeyguardExit(ZZZ)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public createHiddenByKeyguardExit(ZZZ)Landroid/view/animation/Animation;
    .locals 5

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v4, 0x10a0063

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v2, 0x0

    const-string/jumbo v3, "HighEnd"

    const-string/jumbo v4, "LowEnd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const v3, 0x10a0067

    :goto_0
    invoke-static {v4, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    check-cast v2, Landroid/view/animation/AnimationSet;

    :goto_1
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_2
    if-ltz v1, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_1
    const v3, 0x10a0064

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_4

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    const v3, 0x10a0068

    :goto_3
    invoke-static {v4, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    check-cast v2, Landroid/view/animation/AnimationSet;

    goto :goto_1

    :cond_3
    const v3, 0x10a0065

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_5

    const v3, 0x10a0066

    :goto_4
    invoke-static {v4, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    check-cast v2, Landroid/view/animation/AnimationSet;

    goto :goto_1

    :cond_5
    const v3, 0x10a0062

    goto :goto_4

    :cond_6
    return-object v2
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
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

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

    const-string/jumbo v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ai = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v0, :cond_9

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_9

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "android.dock_home"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v2

    :cond_9
    return-object v7
.end method

.method public createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a006b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "PWM.dismissKeyguardLw"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Failed to call callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
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

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

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

    if-eqz v0, :cond_15

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

    if-eqz v0, :cond_16

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

    const-string/jumbo v0, "mShowingDream="

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
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDismissImeOnBackKeyPressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

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
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_b

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_c

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopFullscreenOpaqueOrDimmingWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v0, :cond_d

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mForcingShowNavBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "mForcingShowNavBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mKeyguardOccluded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, " mKeyguardOccludedChanged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, " mPendingKeyguardOccluded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

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

    const-string/jumbo v0, "mHomePressed="

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

    const-string/jumbo v0, " mIncallBackBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

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

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_e

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAccessibilityTvKey1Pressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAccessibilityTvKey2Pressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAccessibilityTvScheduled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_e
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
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/GlobalActions;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_13
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/EdgeWindowPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    sget-boolean v0, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_AOD:Z

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getAODWindowPolicy()Lcom/android/server/policy/AODWindowPolicy;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/AODWindowPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_14
    return-void

    :cond_15
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_16
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
    .locals 14

    const/4 v0, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    :goto_0
    iget-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    if-nez v10, :cond_f

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    iget-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xf

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_1
    const/4 v6, 0x0

    sget-boolean v10, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_AOD:Z

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getAODWindowPolicy()Lcom/android/server/policy/AODWindowPolicy;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/server/policy/AODWindowPolicy;->isAODWindowVisible(Z)Z

    move-result v6

    :cond_1
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v10, :cond_8

    xor-int/lit8 v10, v6, 0x1

    if-eqz v10, :cond_8

    sget-boolean v10, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v10, :cond_2

    const-string/jumbo v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "force="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " forcefkg="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " top="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    if-eqz v10, :cond_10

    iget-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_10

    iget-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    xor-int/lit8 v5, v10, 0x1

    :goto_2
    if-nez v5, :cond_11

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/policy/StatusBarController;->setShowTransparent(Z)V

    :cond_3
    :goto_3
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v10}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isStatusBarSViewCover()Z

    move-result v10

    xor-int/lit8 v3, v10, 0x1

    :goto_4
    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_14

    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_14

    iget-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_14

    xor-int/lit8 v10, v3, 0x1

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v10, v10, 0x8

    if-nez v10, :cond_13

    const/4 v8, 0x1

    :goto_5
    iget-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    if-nez v10, :cond_4

    iget-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-nez v10, :cond_4

    iget-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    if-nez v10, :cond_4

    if-eqz v8, :cond_16

    :cond_4
    sget-boolean v10, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v10, :cond_5

    const-string/jumbo v10, "WindowManager"

    const-string/jumbo v11, "Showing status bar: forced"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v0, 0x1

    :cond_6
    iget-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v9

    :goto_6
    iget-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v10}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v11, v12}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    :cond_7
    if-eqz v8, :cond_8

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    move-result v10

    if-eqz v10, :cond_8

    or-int/lit8 v0, v0, 0x1

    :cond_8
    :goto_7
    iget-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eq v10, v9, :cond_a

    if-nez v9, :cond_9

    or-int/lit8 v0, v0, 0x1

    :cond_9
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    :cond_a
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/server/policy/EdgeWindowPolicy;->isEdgeWakeupPending()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v10, :cond_b

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Lcom/android/server/policy/EdgeWindowPolicy;->requestEdgeScreenWakeupIfNeeded(Landroid/view/WindowManagerPolicy$WindowState;Z)V

    :cond_b
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v10

    const v11, -0x3fff7ff2

    and-int/2addr v10, v11

    if-eqz v10, :cond_c

    or-int/lit8 v0, v0, 0x1

    :cond_c
    iget-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastShowingDream:Z

    if-eq v10, v11, :cond_d

    iget-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    iput-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastShowingDream:Z

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->notifyShowingDreamChanged()V

    :cond_d
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v10, v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->finishPostLayoutPolicyLw(I)I

    move-result v10

    or-int/2addr v0, v10

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    return v0

    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_f
    iget-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    if-nez v10, :cond_0

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xf

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_11
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/policy/StatusBarController;->setShowTransparent(Z)V

    goto/16 :goto_3

    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_14
    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_15
    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_16
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v10}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isForceStatusBarFromSViewCover()Z

    move-result v10

    if-eqz v10, :cond_1a

    sget-boolean v10, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v10, :cond_17

    const-string/jumbo v10, "WindowManager"

    const-string/jumbo v11, "Showing status bar: forcefsvc"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v10

    if-eqz v10, :cond_18

    const/4 v0, 0x1

    or-int/lit8 v0, v0, 0x10

    :cond_18
    iget-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v10, :cond_19

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v9

    :goto_8
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v10}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v11, v12}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    goto/16 :goto_7

    :cond_19
    const/4 v9, 0x0

    goto :goto_8

    :cond_1a
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v10, :cond_2b

    const/4 v10, 0x0

    invoke-static {v10, v4}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    sget-boolean v10, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v10, :cond_1b

    const-string/jumbo v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "frame: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " shown position: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->getShownPositionLw()Landroid/graphics/Point;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "attr: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " lp.flags=0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    and-int/lit16 v10, v2, 0x400

    if-nez v10, :cond_1d

    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_1e

    const/4 v9, 0x1

    :goto_9
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v10}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->getHideSViewCoverWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v10

    if-eqz v10, :cond_1c

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v11}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->getHideSViewCoverWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v11

    if-eq v10, v11, :cond_1c

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v10}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->getHideSViewCoverWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11, v10}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    and-int/lit16 v10, v1, 0x400

    if-eqz v10, :cond_1f

    and-int/lit16 v10, v1, 0x800

    if-nez v10, :cond_1f

    const/4 v9, 0x1

    :cond_1c
    :goto_a
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v10}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    move-result v10

    if-eqz v10, :cond_21

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v0, 0x1

    goto/16 :goto_7

    :cond_1d
    const/4 v9, 0x1

    goto :goto_9

    :cond_1e
    const/4 v9, 0x0

    goto :goto_9

    :cond_1f
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_20

    const/4 v9, 0x1

    goto :goto_a

    :cond_20
    const/4 v9, 0x0

    goto :goto_a

    :cond_21
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/server/policy/MultiPhoneWindowManager;->isExpandedDockedStack()Z

    move-result v10

    if-eqz v10, :cond_23

    sget-boolean v10, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v10, :cond_22

    const-string/jumbo v10, "WindowManager"

    const-string/jumbo v11, "** HIDING status bar: docked stack"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v0, 0x1

    goto/16 :goto_7

    :cond_23
    if-eqz v9, :cond_25

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v10

    if-nez v10, :cond_25

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/server/policy/MultiPhoneWindowManager;->hasDockedStack()Z

    move-result v10

    if-eqz v10, :cond_25

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/server/policy/MultiPhoneWindowManager;->isExpandedDockedStack()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_25

    sget-boolean v10, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v10, :cond_24

    const-string/jumbo v10, "WindowManager"

    const-string/jumbo v11, "** HIDING status bar: minimized docked stack"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v0, 0x1

    goto/16 :goto_7

    :cond_25
    if-eqz v9, :cond_29

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/view/WindowManagerInternal;->isStackVisible(I)Z

    move-result v10

    if-eqz v10, :cond_26

    sget-boolean v10, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v10, :cond_29

    :cond_26
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/view/WindowManagerInternal;->isStackVisible(I)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_29

    sget-boolean v10, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v10, :cond_27

    const-string/jumbo v10, "WindowManager"

    const-string/jumbo v11, "** HIDING status bar"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(ZZ)Z

    move-result v10

    if-eqz v10, :cond_28

    const/4 v0, 0x1

    goto/16 :goto_7

    :cond_28
    sget-boolean v10, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v10, :cond_8

    const-string/jumbo v10, "WindowManager"

    const-string/jumbo v11, "Status bar already hiding"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_29
    sget-boolean v10, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v10, :cond_2a

    const-string/jumbo v10, "WindowManager"

    const-string/jumbo v11, "** SHOWING status bar: top is not fullscreen"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v0, 0x1

    goto/16 :goto_7

    :cond_2b
    iget-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v10}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    move-result v10

    if-eqz v10, :cond_2d

    sget-boolean v10, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v10, :cond_2c

    const-string/jumbo v10, "WindowManager"

    const-string/jumbo v11, "** SHOWING status bar: transient showing (soft input)"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v0, 0x1

    goto/16 :goto_7

    :cond_2d
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/server/policy/MultiPhoneWindowManager;->isExpandedDockedStack()Z

    move-result v10

    if-eqz v10, :cond_8

    sget-boolean v10, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v10, :cond_2e

    const-string/jumbo v10, "WindowManager"

    const-string/jumbo v11, "** HIDING status bar: docked stack (soft input)"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v0, 0x1

    goto/16 :goto_7
.end method

.method public finishPostLayoutPolicyOnNonDefaultDisplayLw(IZ)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public finishedGoingToSleep(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v1, 0x11170

    invoke-static {v1, v4}, Landroid/util/EventLog;->writeEvent(II)I

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Finished going to sleep... (why="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "screen_timeout"

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal;->disableHideSViewCoverOnce()V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    invoke-virtual {v1, p1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedGoingToSleep(IZ)V

    :cond_1
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v1, p1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->finishedGoingToSleep(I)V

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

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Shared devices screen OFF completed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "isScreenOff"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v1

    invoke-interface {v1, v4, v5}, Lcom/android/server/policy/EdgeWindowPolicy;->requestEdgeScreenWakeup(ZI)V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
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

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

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

.method public getConfigDisplayHeight(IIIII)I
    .locals 2

    if-nez p5, :cond_0

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayHeight(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getSecondaryDisplayId()I

    move-result v0

    if-ne v0, p5, :cond_1

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayHeight(IIIII)I

    move-result v0

    return v0

    :cond_1
    return p2
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

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

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

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFifthPressOnPowerBehavior:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isAvailableOneTouchReport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isSafetyAssuranceEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x3

    return v0

    :cond_3
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isDoubleTapOnPowerEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v0

    return v0
.end method

.method public getMultiWindowManagerPolicy()Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    return-object v0
.end method

.method public getNavBarHeightTweak()I
    .locals 2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo p0, "navbar_height"

    const v0, 0x90

    invoke-static {v1, p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getNavigationBarHeight(II)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isDesktopModeForPreparing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->getTaskBarHeightInDesktopMode()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    aget v0, v0, p1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->allowNavBarHeightTweak()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getNavBarHeightTweak()I

    move-result v0

    :cond_1
    return v0
.end method

.method getNavigationBarHeightOnSecondaryDisplay(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnSecondaryDisplay:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationOnSecondaryDisplay:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNonDecorDisplayHeight(IIIII)I
    .locals 1

    if-nez p5, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_0

    if-ge p1, p2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isNavigationBarDisabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    move-result v0

    sub-int/2addr p2, v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0, p1, p2, p5}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->getNonDecorDisplayHeight(III)I

    move-result p2

    :cond_3
    return p2
.end method

.method public getNonDecorDisplayWidth(IIIII)I
    .locals 1

    if-nez p5, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_1

    if-le p1, p2, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isNavigationBarDisabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    move-result v0

    sub-int/2addr p1, v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0, p1, p2, p5}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->getNonDecorDisplayWidth(III)I

    move-result p1

    :cond_2
    return p1
.end method

.method public getNonDecorInsetsLw(IIIILandroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V

    return-void
.end method

.method public getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

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

.method getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;
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

.method public getSamsungPolicy()Lcom/android/server/policy/IPhoneWindowManagerBridge;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    return-object v0
.end method

.method public getStableInsetsLw(IIIILandroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/policy/PhoneWindowManager;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    return-void
.end method

.method public getStableInsetsLw(IIILandroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    iput v0, p4, Landroid/graphics/Rect;->top:I

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
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isCarModeBarVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->getSurfaceLayerCarModeBar()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    return v0

    :cond_2
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

.method goHome()Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/pm/PersonaServiceHelper;->isKnoxKeyguardShownForKioskMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "goHome() > isKnoxKeyguardShownForKioskMode() : true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Not going home because user setup is in progress."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_1
    :try_start_0
    const-string/jumbo v1, "persist.sys.uts-test-mode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "UTS-TEST-MODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x2

    invoke-interface/range {v5 .. v16}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v18

    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_4

    const/4 v1, 0x0

    return v1

    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v17

    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method public goToDownload()V
    .locals 5

    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "download"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V

    return-void
.end method

.method public goToRecovery()V
    .locals 5

    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "recovery"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V

    return-void
.end method

.method handleLongPressOnHome(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->handleLongPressOnHome()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    sget-boolean v1, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_IMMERSIVE_FORCE_TOUCH:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->setHomeConsumed()V

    :cond_2
    invoke-virtual {p0, v3, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Undefined home long press behavior: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$14;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$14;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->getFocusedLauncherId()I

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "ignore long press home for container"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-direct {p0, v3, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_0

    nop

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
    .locals 23

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

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.software.leanback"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    new-instance v2, Lcom/android/server/policy/AccessibilityShortcutController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-direct {v2, v3, v9, v10}, Lcom/android/server/policy/AccessibilityShortcutController;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/server/policy/AccessibilityShortcutController;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    const-string/jumbo v2, "persist.debug.force_burn_in"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-nez v17, :cond_0

    if-eqz v16, :cond_1

    :cond_0
    if-eqz v16, :cond_9

    const/4 v4, -0x8

    const/16 v5, 0x8

    const/4 v6, -0x8

    const/4 v7, -0x4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isRoundWindow()Z

    move-result v2

    if-eqz v2, :cond_8

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

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindowManager;->getDefaultDisplayRotation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v2, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_PHONE_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/SamsungCoreServices;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    new-instance v2, Lcom/android/server/policy/MultiPhoneWindowManager;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/policy/MultiPhoneWindowManager;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    invoke-interface {v2, v3, v0, v9, v10}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->init(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    sget-object v2, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTITAPKEY_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/SamsungCoreServices;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/IMultitapKeyManagerBridge;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultitapKeyManager:Lcom/android/server/policy/IMultitapKeyManagerBridge;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultitapKeyManager:Lcom/android/server/policy/IMultitapKeyManagerBridge;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3}, Lcom/android/server/policy/IMultitapKeyManagerBridge;->init(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/IPhoneWindowManagerBridge;)V

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

    const v3, 0x10e0044

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

    const v3, 0x1120056

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

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v2, v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.category.VR_HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

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

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

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

    const v3, 0x11200a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    const v2, 0x10e006e

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    const v2, 0x10e0034

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    const v2, 0x10e0047

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    const v2, 0x10e00b3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e006c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsScreenLock:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPanicPressOnBackBehavior:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mFifthPressOnPowerBehavior:I

    const-string/jumbo v2, "PanicMode"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v9, "CscFeature_Framework_ConfigActionForMultiPowerPress"

    invoke-virtual {v3, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x68

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

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

    const-string/jumbo v2, "com.tkkg.SERVICES"

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

    new-instance v19, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

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

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070059

    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressVibePattern:[J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070098

    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070056

    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070038

    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mClockTickVibePattern:[J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070032

    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070067

    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070068

    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070039

    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContextClickVibePattern:[J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120064

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
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/policy/PhoneWindowManager$16;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v2, v3}, Landroid/view/WindowManagerInternal;->registerAppTransitionListener(Landroid/view/WindowManagerInternal$AppTransitionListener;)V

    new-instance v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/policy/PhoneWindowManager$17;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/server/policy/PhoneWindowManager$17;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-direct {v2, v3, v9}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    sget-object v2, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_EDGE_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/SamsungCoreServices;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v15, p0

    invoke-interface/range {v9 .. v15}, Lcom/android/server/policy/EdgeWindowPolicy;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/server/policy/IPhoneWindowManagerBridge;Lcom/android/server/policy/SystemGesturesPointerEventListener;Lcom/android/server/policy/PhoneWindowManager;)V

    sget-boolean v2, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_AOD:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_AOD_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/SamsungCoreServices;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getAODWindowPolicy()Lcom/android/server/policy/AODWindowPolicy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v2, v0, v1, v3, v9}, Lcom/android/server/policy/AODWindowPolicy;->init(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/IPhoneWindowManagerBridge;Lcom/android/server/policy/StatusBarController;)V

    :cond_6
    sget-boolean v2, Lcom/android/server/policy/TspStateManagerPolicy;->FEATURE_ENABLED:Z

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_TSP_STATE_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/SamsungCoreServices;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getTspStateManagerPolicy()Lcom/android/server/policy/TspStateManagerPolicy;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/android/server/policy/TspStateManagerPolicy;->init(Landroid/content/Context;)V

    :cond_7
    return-void

    :cond_8
    const/4 v8, -0x1

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v2, 0x10e0030

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v2, 0x10e002d

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const v2, 0x10e0031

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const v2, 0x10e002f

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const v2, 0x10e002e

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_3

    :catch_0
    move-exception v18

    goto/16 :goto_1
.end method

.method initializeHdmiState()V
    .locals 11

    const/4 v10, 0x1

    const/4 v5, 0x0

    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    iput v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIVender:I

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string/jumbo v9, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v8, v9}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

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

    add-int/lit8 v9, v4, -0x1

    const/4 v10, 0x0

    invoke-direct {v8, v0, v10, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_17
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

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
    xor-int/lit8 v8, v5, 0x1

    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    xor-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/policy/PhoneWindowManager;->setHdmiPlugged(Z)V

    return-void

    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_2
    :try_start_3
    const-string/jumbo v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
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

    :goto_3
    :try_start_5
    const-string/jumbo v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
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

    :goto_4
    if-eqz v6, :cond_3

    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_3
    :goto_5
    throw v8

    :catch_5
    move-exception v1

    goto :goto_5

    :cond_4
    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "/sys/devices/platform/11090000.displayport/extcon/extcon0/cable.0/state"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x2

    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIVender:I

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string/jumbo v9, "DEVPATH=/devices/platform/11090000.displayport/extcon/extcon0"

    invoke-virtual {v8, v9}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string/jumbo v3, "/sys/devices/platform/11090000.displayport/extcon/extcon0/cable.0/state"

    const/4 v6, 0x0

    :try_start_8
    new-instance v7, Ljava/io/FileReader;

    const-string/jumbo v8, "/sys/devices/platform/11090000.displayport/extcon/extcon0/cable.0/state"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/16 v8, 0xf

    :try_start_9
    new-array v0, v8, [C

    invoke-virtual {v7, v0}, Ljava/io/FileReader;->read([C)I

    move-result v4

    if-le v4, v10, :cond_5

    new-instance v8, Ljava/lang/String;

    add-int/lit8 v9, v4, -0x1

    const/4 v10, 0x0

    invoke-direct {v8, v0, v10, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_14
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_15
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-result v8

    if-eqz v8, :cond_6

    const/4 v5, 0x1

    :cond_5
    :goto_6
    if-eqz v7, :cond_1

    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v1

    goto/16 :goto_1

    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    :catch_7
    move-exception v2

    :goto_7
    :try_start_b
    const-string/jumbo v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Couldn\'t read extcon hdmi state from /sys/devices/platform/11090000.displayport/extcon/extcon0/cable.0/state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v6, :cond_1

    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_1

    :catch_8
    move-exception v1

    goto/16 :goto_1

    :catch_9
    move-exception v1

    :goto_8
    :try_start_d
    const-string/jumbo v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Couldn\'t read extcon hdmi state from /sys/devices/platform/11090000.displayport/extcon/extcon0/cable.0/state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v6, :cond_1

    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto/16 :goto_1

    :catch_a
    move-exception v1

    goto/16 :goto_1

    :catchall_1
    move-exception v8

    :goto_9
    if-eqz v6, :cond_7

    :try_start_f
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    :cond_7
    :goto_a
    throw v8

    :catch_b
    move-exception v1

    goto :goto_a

    :cond_8
    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "/sys/devices/virtual/switch/secdp/state"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x3

    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIVender:I

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string/jumbo v9, "DEVPATH=/devices/virtual/switch/secdp"

    invoke-virtual {v8, v9}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string/jumbo v3, "/sys/class/switch/secdp/state"

    const/4 v6, 0x0

    :try_start_10
    new-instance v7, Ljava/io/FileReader;

    const-string/jumbo v8, "/sys/class/switch/secdp/state"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_d
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    const/16 v8, 0xf

    :try_start_11
    new-array v0, v8, [C

    invoke-virtual {v7, v0}, Ljava/io/FileReader;->read([C)I

    move-result v4

    if-le v4, v10, :cond_9

    new-instance v8, Ljava/lang/String;

    add-int/lit8 v9, v4, -0x1

    const/4 v10, 0x0

    invoke-direct {v8, v0, v10, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_12
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_13
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    move-result v8

    if-eqz v8, :cond_a

    const/4 v5, 0x1

    :cond_9
    :goto_b
    if-eqz v7, :cond_1

    :try_start_12
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    goto/16 :goto_1

    :catch_c
    move-exception v1

    goto/16 :goto_1

    :cond_a
    const/4 v5, 0x0

    goto :goto_b

    :catch_d
    move-exception v2

    :goto_c
    :try_start_13
    const-string/jumbo v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Couldn\'t read hdmi state from /sys/class/switch/secdp/state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-eqz v6, :cond_1

    :try_start_14
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_e

    goto/16 :goto_1

    :catch_e
    move-exception v1

    goto/16 :goto_1

    :catch_f
    move-exception v1

    :goto_d
    :try_start_15
    const-string/jumbo v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Couldn\'t read hdmi state from /sys/class/switch/secdp/state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    if-eqz v6, :cond_1

    :try_start_16
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_10

    goto/16 :goto_1

    :catch_10
    move-exception v1

    goto/16 :goto_1

    :catchall_2
    move-exception v8

    :goto_e
    if-eqz v6, :cond_b

    :try_start_17
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_11

    :cond_b
    :goto_f
    throw v8

    :catch_11
    move-exception v1

    goto :goto_f

    :catchall_3
    move-exception v8

    move-object v6, v7

    goto :goto_e

    :catch_12
    move-exception v1

    move-object v6, v7

    goto :goto_d

    :catch_13
    move-exception v2

    move-object v6, v7

    goto :goto_c

    :catchall_4
    move-exception v8

    move-object v6, v7

    goto/16 :goto_9

    :catch_14
    move-exception v1

    move-object v6, v7

    goto/16 :goto_8

    :catch_15
    move-exception v2

    move-object v6, v7

    goto/16 :goto_7

    :catchall_5
    move-exception v8

    move-object v6, v7

    goto/16 :goto_4

    :catch_16
    move-exception v1

    move-object v6, v7

    goto/16 :goto_3

    :catch_17
    move-exception v2

    move-object v6, v7

    goto/16 :goto_2
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 54

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v32

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v31

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v37

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v35

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    const/16 v23, 0x1

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v18

    const/high16 v4, 0x20000000

    and-int v4, v4, p3

    if-eqz v4, :cond_2

    const/16 v29, 0x1

    :goto_1
    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "interceptKeyTi keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

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

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " keyguardOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v32

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

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/server/policy/AccessibilityShortcutController;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/policy/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v4

    if-eqz v4, :cond_8

    move/from16 v0, v26

    and-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    xor-int/2addr v4, v6

    if-eqz v4, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v38

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    :goto_2
    const-wide/16 v8, 0x96

    add-long v50, v6, v8

    cmp-long v4, v38, v50

    if-gez v4, :cond_4

    sub-long v6, v50, v38

    return-wide v6

    :cond_1
    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_2
    const/16 v29, 0x0

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    goto :goto_2

    :cond_4
    const/16 v4, 0x19

    move/from16 v0, v31

    if-ne v0, v4, :cond_6

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    if-eqz v4, :cond_6

    if-nez v23, :cond_5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    :cond_5
    const-wide/16 v6, -0x1

    return-wide v6

    :cond_6
    const/16 v4, 0x18

    move/from16 v0, v31

    if-ne v0, v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    if-eqz v4, :cond_8

    if-nez v23, :cond_7

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    :cond_7
    const-wide/16 v6, -0x1

    return-wide v6

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v4, :cond_9

    invoke-static/range {v31 .. v31}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-eqz v4, :cond_a

    invoke-static/range {v31 .. v31}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_a

    invoke-static/range {v31 .. v31}, Landroid/view/KeyEvent;->isAltKey(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v4, v0, v1, v2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v40

    const-wide/16 v6, -0x1

    cmp-long v4, v40, v6

    if-ltz v4, :cond_b

    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "interceptKeyTi s_result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v40

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v40

    :cond_b
    const/4 v4, 0x3

    move/from16 v0, v31

    if-ne v0, v4, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isSharedDeviceUnlockScreens()Z

    move-result v4

    if-eqz v4, :cond_c

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_c
    if-nez v23, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    if-nez v4, :cond_d

    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "Ignoring HOME; down is not pressed."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v4, :cond_e

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    if-eqz v4, :cond_f

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_f
    if-eqz v18, :cond_10

    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "Ignoring HOME; event canceled."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_10
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v4, :cond_11

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

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    const-string/jumbo v6, "VCHK"

    const-string/jumbo v7, "HomeKey Click"

    invoke-interface {v4, v6, v7}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome()V

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_14
    if-eqz p1, :cond_16

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    :goto_3
    if-eqz v15, :cond_19

    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v49, v0

    const/16 v4, 0x7d9

    move/from16 v0, v49

    if-eq v0, v4, :cond_15

    iget v4, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_17

    :cond_15
    const-wide/16 v6, 0x0

    return-wide v6

    :cond_16
    const/4 v15, 0x0

    goto :goto_3

    :cond_17
    iget v4, v15, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v6, 0x10000000

    and-int/2addr v4, v6

    if-nez v4, :cond_15

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v0, v4

    move/from16 v52, v0

    const/16 v28, 0x0

    :goto_4
    move/from16 v0, v28

    move/from16 v1, v52

    if-ge v0, v1, :cond_19

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v4, v4, v28

    move/from16 v0, v49

    if-ne v0, v4, :cond_18

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_18
    add-int/lit8 v28, v28, 0x1

    goto :goto_4

    :cond_19
    if-nez v37, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v4}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isDozeDream()Z

    move-result v4

    if-eqz v4, :cond_1a

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_1a
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

    :cond_1b
    :goto_5
    const-wide/16 v6, -0x1

    return-wide v6

    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_5

    :cond_1d
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v4, :cond_1e

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityGestureTv()Z

    move-result v4

    if-eqz v4, :cond_1e

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_1e
    if-nez v32, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultitapKeyManager:Lcom/android/server/policy/IMultitapKeyManagerBridge;

    invoke-interface {v4}, Lcom/android/server/policy/IMultitapKeyManagerBridge;->isHomeConsumed()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1b

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->handleLongPressOnHome(I)V

    goto :goto_5

    :cond_1f
    const/16 v4, 0x52

    move/from16 v0, v31

    if-ne v0, v4, :cond_20

    const/16 v20, 0x1

    if-eqz v23, :cond_2f

    if-nez v37, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    if-eqz v4, :cond_2f

    and-int/lit8 v4, v35, 0x1

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2f

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

    move/from16 v0, v31

    if-ne v0, v4, :cond_23

    if-eqz v23, :cond_22

    if-nez v37, :cond_21

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

    move/from16 v0, v31

    if-eq v0, v4, :cond_24

    const/16 v4, 0x3e9

    move/from16 v0, v31

    if-ne v0, v4, :cond_2e

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isSharedDeviceKeyguardOn()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isSharedDeviceUnlockScreens()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_26
    if-nez v32, :cond_28

    if-eqz v23, :cond_29

    if-nez v37, :cond_29

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-nez v4, :cond_27

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchKeyConsumed:Z

    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    :cond_28
    :goto_6
    const-wide/16 v6, -0x1

    return-wide v6

    :cond_29
    if-nez v23, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchKeyConsumed:Z

    if-nez v4, :cond_2a

    xor-int/lit8 v4, v18, 0x1

    if-eqz v4, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    :cond_2a
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

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    const-string/jumbo v6, "VCRK"

    const-string/jumbo v7, "RecentKey Click"

    invoke-interface {v4, v6, v7}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_2c
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-nez v4, :cond_2d

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchKeyConsumed:Z

    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v4}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->handleLongPressOnRecent()V

    goto :goto_6

    :cond_2e
    const/16 v4, 0x2a

    move/from16 v0, v31

    if-ne v0, v4, :cond_31

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v4

    if-eqz v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v4}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isMetaKeyEventRequested()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_31

    if-eqz v23, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v42

    if-eqz v42, :cond_2f

    :try_start_0
    invoke-interface/range {v42 .. v42}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2f
    :goto_7
    const/4 v13, 0x0

    invoke-static/range {v31 .. v31}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v4

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v4}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isMetaKeyEventRequested()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-nez v4, :cond_4a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mInitialMetaState:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    :cond_30
    :goto_8
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    if-eqz v13, :cond_4c

    const-wide/16 v6, -0x1

    return-wide v6

    :catch_0
    move-exception v24

    goto :goto_7

    :cond_31
    const/16 v4, 0x2f

    move/from16 v0, v31

    if-ne v0, v4, :cond_33

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v4}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isMetaKeyEventRequested()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_33

    if-eqz v23, :cond_2f

    if-nez v37, :cond_2f

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_32

    const/16 v49, 0x2

    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    move/from16 v0, v49

    invoke-virtual {v4, v0}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_32
    const/16 v49, 0x1

    goto :goto_9

    :cond_33
    const/16 v4, 0x4c

    move/from16 v0, v31

    if-ne v0, v4, :cond_34

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v4

    if-eqz v4, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v4}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isMetaKeyEventRequested()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_34

    if-eqz v23, :cond_2f

    if-nez v37, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2f

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->toggleKeyboardShortcutsMenu(I)V

    goto/16 :goto_7

    :cond_34
    const/16 v4, 0xdb

    move/from16 v0, v31

    if-ne v0, v4, :cond_39

    if-eqz v23, :cond_37

    if-nez v37, :cond_36

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    :cond_35
    :goto_a
    const-wide/16 v6, -0x1

    return-wide v6

    :cond_36
    const/4 v4, 0x1

    move/from16 v0, v37

    if-ne v0, v4, :cond_35

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    if-nez v32, :cond_35

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistLongPressAction()V

    goto :goto_a

    :cond_37
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    if-eqz v4, :cond_38

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    goto :goto_a

    :cond_38
    if-nez v32, :cond_35

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_a

    :cond_39
    const/16 v4, 0xe7

    move/from16 v0, v31

    if-ne v0, v4, :cond_3c

    if-nez v23, :cond_2f

    if-nez v32, :cond_3a

    new-instance v53, Landroid/content/Intent;

    const-string/jumbo v4, "android.speech.action.WEB_SEARCH"

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_b
    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_7

    :cond_3a
    const-string/jumbo v4, "deviceidle"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v21

    if-eqz v21, :cond_3b

    :try_start_1
    const-string/jumbo v4, "voice-search"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_3b
    :goto_c
    new-instance v53, Landroid/content/Intent;

    const-string/jumbo v4, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.speech.extras.EXTRA_SECURE"

    const/4 v6, 0x1

    move-object/from16 v0, v53

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_b

    :cond_3c
    const/16 v4, 0x78

    move/from16 v0, v31

    if-ne v0, v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v4}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isMetaKeyEventRequested()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3e

    if-eqz v23, :cond_3d

    if-nez v37, :cond_3d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3d
    const-wide/16 v6, -0x1

    return-wide v6

    :cond_3e
    const/16 v4, 0xdd

    move/from16 v0, v31

    if-eq v0, v4, :cond_3f

    const/16 v4, 0xdc

    move/from16 v0, v31

    if-ne v0, v4, :cond_43

    :cond_3f
    if-eqz v23, :cond_41

    const/16 v4, 0xdd

    move/from16 v0, v31

    if-ne v0, v4, :cond_42

    const/16 v22, 0x1

    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "screen_brightness_mode"

    const/4 v7, 0x0

    const/4 v8, -0x3

    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v16

    if-eqz v16, :cond_40

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "screen_brightness_mode"

    const/4 v7, 0x0

    const/4 v8, -0x3

    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v33

    sub-int v4, v33, v36

    add-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0xa

    mul-int v48, v4, v22

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

    add-int v17, v17, v48

    move/from16 v0, v33

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v36

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

    const-string/jumbo v6, "com.android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_41
    const-wide/16 v6, -0x1

    return-wide v6

    :cond_42
    const/16 v22, -0x1

    goto/16 :goto_d

    :cond_43
    const/16 v4, 0x18

    move/from16 v0, v31

    if-eq v0, v4, :cond_44

    const/16 v4, 0x19

    move/from16 v0, v31

    if-ne v0, v4, :cond_46

    :cond_44
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v4, :cond_45

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v4, :cond_47

    :cond_45
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_46
    const/16 v4, 0xa4

    move/from16 v0, v31

    if-eq v0, v4, :cond_44

    const/16 v4, 0x3d

    move/from16 v0, v31

    if-ne v0, v4, :cond_48

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v4

    if-eqz v4, :cond_48

    const-wide/16 v6, 0x0

    return-wide v6

    :cond_47
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeEnabled:Z

    if-eqz v4, :cond_2f

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_48
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v4, :cond_49

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->interceptBugreportGestureTv(IZ)Z

    move-result v4

    if-eqz v4, :cond_49

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_49
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v4, :cond_2f

    const/16 v4, 0x17

    move/from16 v0, v31

    if-ne v0, v4, :cond_2f

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityGestureTv()Z

    move-result v4

    if-eqz v4, :cond_2f

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_4a
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_30

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    and-int/lit8 v14, v4, 0x32

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    const/high16 v6, 0x70000

    and-int v34, v4, v6

    if-eqz v34, :cond_4b

    if-eqz v14, :cond_4b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mInitialMetaState:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    or-int v7, v14, v34

    xor-int/2addr v6, v7

    if-ne v4, v6, :cond_4b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/hardware/input/InputManagerInternal;->toggleCapsLock(I)V

    const/4 v13, 0x1

    :cond_4b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    goto/16 :goto_8

    :cond_4c
    invoke-static/range {v31 .. v31}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v4

    if-eqz v4, :cond_4f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v4}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isMetaKeyEventRequested()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4f

    if-eqz v23, :cond_4e

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    :cond_4d
    :goto_e
    const-wide/16 v6, -0x1

    return-wide v6

    :cond_4e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v4, :cond_4d

    const-string/jumbo v4, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_e

    :cond_4f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    if-eqz v4, :cond_52

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v30

    invoke-virtual/range {v30 .. v31}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v4

    if-eqz v4, :cond_52

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    if-eqz v23, :cond_50

    if-nez v37, :cond_50

    xor-int/lit8 v4, v32, 0x1

    if-eqz v4, :cond_50

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v35

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v46

    if-eqz v46, :cond_51

    const/high16 v4, 0x10000000

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_2
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_50
    :goto_f
    const-wide/16 v6, -0x1

    return-wide v6

    :catch_1
    move-exception v25

    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v31 .. v31}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    :cond_51
    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dropping unregistered shortcut key combination: SEARCH+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v31 .. v31}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_52
    if-eqz v23, :cond_53

    if-nez v37, :cond_53

    xor-int/lit8 v4, v32, 0x1

    if-eqz v4, :cond_53

    const/high16 v4, 0x10000

    and-int v4, v4, v35

    if-eqz v4, :cond_53

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v4}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isMetaKeyEventRequested()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_53

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v30

    invoke-virtual/range {v30 .. v31}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v4

    if-eqz v4, :cond_53

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    const v6, -0x70001

    and-int v6, v6, v35

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v4, v0, v1, v6}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v46

    if-eqz v46, :cond_53

    const/high16 v4, 0x10000000

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_3
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_10
    const-wide/16 v6, -0x1

    return-wide v6

    :catch_2
    move-exception v25

    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v31 .. v31}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    :cond_53
    if-eqz v23, :cond_54

    if-nez v37, :cond_54

    xor-int/lit8 v4, v32, 0x1

    if-eqz v4, :cond_54

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    if-eqz v19, :cond_54

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
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_11
    const-wide/16 v6, -0x1

    return-wide v6

    :catch_3
    move-exception v25

    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

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

    goto :goto_11

    :cond_54
    if-eqz v23, :cond_56

    if-nez v37, :cond_56

    const/16 v4, 0x3d

    move/from16 v0, v31

    if-ne v0, v4, :cond_56

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v4}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isMetaKeyEventRequested()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_56

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-nez v4, :cond_59

    xor-int/lit8 v4, v32, 0x1

    if-eqz v4, :cond_59

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v4

    and-int/lit16 v0, v4, -0xc2

    move/from16 v43, v0

    const/4 v4, 0x2

    move/from16 v0, v43

    invoke-static {v0, v4}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v4

    if-nez v4, :cond_55

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->isDesktopModeLw()Z

    move-result v4

    if-eqz v4, :cond_59

    const/16 v4, 0x1002

    move/from16 v0, v43

    invoke-static {v0, v4}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v4

    if-eqz v4, :cond_59

    :cond_55
    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(ZZ)V

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_56
    if-nez v23, :cond_59

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-eqz v4, :cond_59

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    and-int v4, v4, v35

    if-nez v4, :cond_59

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->isDesktopModeLw()Z

    move-result v4

    if-eqz v4, :cond_57

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    const/16 v6, 0x1002

    invoke-static {v4, v6}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_58

    :cond_57
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    :cond_58
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    :cond_59
    if-eqz v23, :cond_5c

    if-nez v37, :cond_5c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v4}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isMetaKeyEventRequested()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5c

    const/16 v4, 0xcc

    move/from16 v0, v31

    if-eq v0, v4, :cond_5a

    const/16 v4, 0x3e

    move/from16 v0, v31

    if-ne v0, v4, :cond_5c

    const/high16 v4, 0x70000

    and-int v4, v4, v35

    if-eqz v4, :cond_5c

    :cond_5a
    move/from16 v0, v35

    and-int/lit16 v4, v0, 0xc1

    if-nez v4, :cond_5b

    const/16 v27, 0x1

    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->switchInputMethod(Z)V

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_5b
    const/16 v27, 0x0

    goto :goto_12

    :cond_5c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    if-eqz v4, :cond_5e

    xor-int/lit8 v4, v23, 0x1

    if-eqz v4, :cond_5e

    const/16 v4, 0xcc

    move/from16 v0, v31

    if-eq v0, v4, :cond_5d

    const/16 v4, 0x3e

    move/from16 v0, v31

    if-ne v0, v4, :cond_5e

    :cond_5d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_5e
    invoke-static/range {v31 .. v31}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v4

    if-eqz v4, :cond_5f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v4, v6, v0, v1}, Lcom/android/server/policy/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_5f

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_5f
    if-eqz v23, :cond_65

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v4}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isMetaKeyEventRequested()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_65

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v44, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_60

    const-wide v6, 0x100000000000L

    or-long v44, v44, v6

    :cond_60
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-eqz v4, :cond_61

    const-wide v6, 0x200000000L

    or-long v44, v44, v6

    :cond_61
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_62

    const-wide v6, 0x100000000L

    or-long v44, v44, v6

    :cond_62
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v4

    if-eqz v4, :cond_63

    const-wide/high16 v6, 0x1000000000000L

    or-long v44, v44, v6

    :cond_63
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v44

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/internal/policy/IShortcutService;

    if-eqz v47, :cond_65

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v4

    if-eqz v4, :cond_64

    move-object/from16 v0, v47

    move-wide/from16 v1, v44

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/IShortcutService;->notifyShortcutKeyPressed(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_64
    :goto_13
    const-wide/16 v6, -0x1

    return-wide v6

    :catch_4
    move-exception v24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v44

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_13

    :cond_65
    const/high16 v4, 0x10000

    and-int v4, v4, v35

    if-eqz v4, :cond_66

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v4}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isMetaKeyEventRequested()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_66

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_66
    const-wide/16 v6, 0x0

    return-wide v6

    :catch_5
    move-exception v24

    goto/16 :goto_c
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v26, v0

    if-nez v26, :cond_1

    sget-boolean v26, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v26, :cond_0

    const-string/jumbo v26, "WindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "interceptKeyTq mSystemBooted = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v26, 0x0

    return v26

    :cond_1
    const/high16 v26, 0x20000000

    and-int v26, v26, p2

    if-eqz v26, :cond_8

    const/4 v13, 0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    if-nez v26, :cond_9

    const/4 v8, 0x1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v10

    const/high16 v26, 0x1000000

    and-int v26, v26, p2

    if-eqz v26, :cond_a

    const/16 v16, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    move-object/from16 v26, v0

    if-nez v26, :cond_b

    const/16 v19, 0x0

    :goto_3
    sget-boolean v26, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v26, :cond_2

    const-string/jumbo v26, "WindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "interceptKeyTq keycode="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " interactive="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " keyguardActive="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " flags="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " canceled = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " policyFlags="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    and-int/lit8 v26, p2, 0x1

    if-nez v26, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    move-result v17

    :goto_4
    if-nez v13, :cond_3

    if-eqz v16, :cond_e

    xor-int/lit8 v26, v17, 0x1

    if-eqz v26, :cond_e

    :cond_3
    const/16 v21, 0x1

    const/16 v17, 0x0

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    move/from16 v26, v0

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    xor-int/lit8 v26, v8, 0x1

    if-eqz v26, :cond_4

    const/16 v21, 0x0

    :cond_4
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v23

    const-string/jumbo v26, "WindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "interceptKeyTq s_result="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v26, v23, 0x20

    if-eqz v26, :cond_12

    const/16 v17, 0x0

    :cond_6
    :goto_6
    and-int/lit8 v26, v23, 0x2

    if-eqz v26, :cond_13

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->performCPUBoost()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v28

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JI)V

    :cond_7
    const-string/jumbo v26, "WindowManager"

    const-string/jumbo v27, "interceptKeyTq : return condition of SPWM"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x0

    return v26

    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_2

    :cond_b
    if-eqz v13, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v19

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v19

    goto/16 :goto_3

    :cond_d
    const/16 v17, 0x1

    goto/16 :goto_4

    :cond_e
    if-nez v13, :cond_f

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(Landroid/view/KeyEvent;)Z

    move-result v26

    if-eqz v26, :cond_f

    const/16 v21, 0x1

    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    goto/16 :goto_5

    :cond_f
    const/16 v21, 0x0

    if-eqz v17, :cond_11

    if-eqz v8, :cond_10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v26

    xor-int/lit8 v26, v26, 0x1

    if-eqz v26, :cond_11

    :cond_10
    const/16 v17, 0x0

    :cond_11
    if-eqz v17, :cond_5

    if-eqz v8, :cond_5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    goto/16 :goto_5

    :cond_12
    and-int/lit8 v26, v23, 0x10

    if-eqz v26, :cond_6

    const/16 v17, 0x1

    goto/16 :goto_6

    :cond_13
    and-int/lit8 v26, v23, 0x4

    if-eqz v26, :cond_16

    or-int/lit8 v21, v21, 0x1

    :cond_14
    :goto_7
    invoke-static/range {v18 .. v18}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v26

    if-eqz v26, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    move-result v26

    if-eqz v26, :cond_17

    if-eqz v17, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    move/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZI)Z

    :cond_15
    return v21

    :cond_16
    and-int/lit8 v26, v23, 0x8

    if-eqz v26, :cond_14

    and-int/lit8 v21, v21, -0x2

    goto :goto_7

    :cond_17
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1f

    sget-boolean v26, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_IMMERSIVE_FORCE_TOUCH:Z

    if-eqz v26, :cond_1f

    const/high16 v26, 0x100000

    and-int v26, v26, v10

    if-eqz v26, :cond_1d

    const/4 v14, 0x1

    :goto_8
    if-nez v8, :cond_1e

    and-int/lit8 v26, p2, 0x2

    if-eqz v26, :cond_1e

    xor-int/lit8 v26, v7, 0x1

    if-eqz v26, :cond_1e

    xor-int/lit8 v25, v14, 0x1

    :goto_9
    sparse-switch v18, :sswitch_data_0

    :cond_18
    :goto_a
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/policy/EdgeWindowPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;II)I

    move-result v26

    and-int v21, v21, v26

    if-eqz v25, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v26, v0

    if-nez v26, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->performSystemKeyFeedback(Landroid/view/KeyEvent;)V

    :cond_19
    :goto_b
    if-eqz v17, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    move/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZI)Z

    :cond_1a
    sget-boolean v26, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v26, :cond_1c

    const/16 v26, 0x3

    move/from16 v0, v18

    move/from16 v1, v26

    if-eq v0, v1, :cond_1b

    const/16 v26, 0x1a

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c

    :cond_1b
    const-string/jumbo v26, "WindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "interceptKeyTq result = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return v21

    :cond_1d
    const/4 v14, 0x0

    goto/16 :goto_8

    :cond_1e
    const/16 v25, 0x0

    goto :goto_9

    :cond_1f
    if-eqz v8, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v26, v0

    if-nez v26, :cond_21

    if-eqz v13, :cond_22

    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v26

    if-nez v26, :cond_23

    const/16 v25, 0x1

    goto/16 :goto_9

    :cond_21
    and-int/lit8 v26, p2, 0x2

    if-nez v26, :cond_20

    :cond_22
    const/16 v25, 0x0

    goto/16 :goto_9

    :cond_23
    const/16 v25, 0x0

    goto/16 :goto_9

    :sswitch_0
    if-eqz v8, :cond_24

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptBackKeyDown()V

    goto/16 :goto_a

    :cond_24
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->interceptBackKeyUp(Landroid/view/KeyEvent;)Z

    move-result v11

    if-eqz v11, :cond_18

    and-int/lit8 v21, v21, -0x2

    goto/16 :goto_a

    :sswitch_1
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/android/server/policy/EdgeWindowPolicy;->isEdgeWakeupPending()Z

    move-result v26

    if-eqz v26, :cond_25

    and-int/lit8 v21, v21, -0x2

    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v24

    if-eqz v24, :cond_29

    invoke-virtual/range {v24 .. v24}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v26

    if-eqz v26, :cond_29

    if-eqz v8, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v26, v0

    if-eqz v26, :cond_26

    const/16 v26, 0x18

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isVolumeKeyMode()Z

    move-result v26

    if-eqz v26, :cond_26

    const-string/jumbo v26, "WindowManager"

    const-string/jumbo v27, "ringing: Accept the call(volume up)"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v24 .. v24}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    and-int/lit8 v21, v21, -0x2

    goto/16 :goto_a

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isCarModeEnabled()Z

    move-result v26

    if-eqz v26, :cond_27

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v26, "com.sec.android.automotive.drivelink.volumeChanged"

    move-object/from16 v0, v26

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v26, "com.sec.android.automotive.drivelink"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_27
    const-string/jumbo v26, "WindowManager"

    const-string/jumbo v27, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v24 .. v24}, Landroid/telecom/TelecomManager;->silenceRinger()V

    :cond_28
    and-int/lit8 v21, v21, -0x2

    goto/16 :goto_a

    :cond_29
    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/media/IAudioService;->getMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    :goto_c
    if-eqz v24, :cond_2a

    invoke-virtual/range {v24 .. v24}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v26

    if-nez v26, :cond_2b

    :cond_2a
    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v6, v0, :cond_2c

    const/4 v15, 0x1

    :goto_d
    if-eqz v15, :cond_2d

    and-int/lit8 v26, v21, 0x1

    if-nez v26, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v26

    const/high16 v27, -0x80000000

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_a

    :catch_0
    move-exception v9

    const-string/jumbo v26, "WindowManager"

    const-string/jumbo v27, "Error getting AudioService in interceptKeyBeforeQueueing."

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :cond_2b
    const/4 v15, 0x1

    goto :goto_d

    :cond_2c
    const/4 v15, 0x0

    goto :goto_d

    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    move/from16 v26, v0

    if-nez v26, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2f

    :cond_2e
    or-int/lit8 v21, v21, 0x1

    goto/16 :goto_a

    :cond_2f
    and-int/lit8 v26, v21, 0x1

    if-nez v26, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v26

    const/high16 v27, -0x80000000

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_a

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v13, v8}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->interceptEndCallKey(Landroid/view/KeyEvent;ZZ)I

    move-result v22

    const/16 v26, 0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    const/16 v17, 0x0

    goto/16 :goto_a

    :sswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    and-int/lit8 v26, v21, 0x1

    if-eqz v26, :cond_30

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRequestedSystemKey:Z

    :cond_30
    const/16 v17, 0x0

    if-eqz v8, :cond_31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_a

    :cond_31
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v7}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V

    goto/16 :goto_a

    :sswitch_4
    and-int/lit8 v21, v21, -0x2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->interceptSystemNavigationKey(Landroid/view/KeyEvent;)V

    goto/16 :goto_a

    :sswitch_5
    and-int/lit8 v21, v21, -0x2

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v26

    if-nez v26, :cond_32

    const/16 v25, 0x0

    :cond_32
    if-eqz v8, :cond_33

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepPress(J)V

    goto/16 :goto_a

    :cond_33
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepRelease(J)V

    goto/16 :goto_a

    :sswitch_6
    and-int/lit8 v21, v21, -0x2

    const/16 v17, 0x0

    if-nez v8, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManagerInternal;->setUserInactiveOverrideFromWindowManager()V

    goto/16 :goto_a

    :sswitch_7
    and-int/lit8 v21, v21, -0x2

    const/16 v17, 0x1

    goto/16 :goto_a

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/media/session/MediaSessionLegacyHelper;->isGlobalPriorityActive()Z

    move-result v26

    if-eqz v26, :cond_34

    and-int/lit8 v21, v21, -0x2

    :cond_34
    and-int/lit8 v26, v21, 0x1

    if-nez v26, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    new-instance v27, Landroid/view/KeyEvent;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    const/16 v28, 0x3

    move-object/from16 v0, v26

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    const/16 v26, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_a

    :sswitch_9
    if-eqz v8, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v24

    if-eqz v24, :cond_18

    invoke-virtual/range {v24 .. v24}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v26

    if-eqz v26, :cond_18

    const-string/jumbo v26, "WindowManager"

    const-string/jumbo v27, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v24 .. v24}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    and-int/lit8 v21, v21, -0x2

    goto/16 :goto_a

    :sswitch_a
    and-int/lit8 v26, v21, 0x1

    if-nez v26, :cond_18

    xor-int/lit8 v26, v8, 0x1

    if-eqz v26, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    if-eqz v19, :cond_35

    const/16 v26, 0x1

    :goto_e
    const/16 v28, 0xc

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v26

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v20

    const/16 v26, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_a

    :cond_35
    const/16 v26, 0x0

    goto :goto_e

    :sswitch_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressWindowBehavior:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    move/from16 v26, v0

    if-eqz v26, :cond_18

    if-nez v8, :cond_36

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenu(Landroid/view/KeyEvent;)V

    :cond_36
    and-int/lit8 v21, v21, -0x2

    goto/16 :goto_a

    :cond_37
    sget-boolean v26, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_IMMERSIVE_FORCE_TOUCH:Z

    if-nez v26, :cond_38

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    goto/16 :goto_b

    :cond_38
    const/16 v26, 0x0

    const v27, 0xc377

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    goto/16 :goto_b

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_9
        0x6 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1a -> :sswitch_3
        0x4f -> :sswitch_8
        0x55 -> :sswitch_8
        0x56 -> :sswitch_8
        0x57 -> :sswitch_8
        0x58 -> :sswitch_8
        0x59 -> :sswitch_8
        0x5a -> :sswitch_8
        0x5b -> :sswitch_8
        0x7e -> :sswitch_8
        0x7f -> :sswitch_8
        0x82 -> :sswitch_8
        0xa4 -> :sswitch_1
        0xab -> :sswitch_b
        0xde -> :sswitch_8
        0xdf -> :sswitch_5
        0xe0 -> :sswitch_7
        0xe7 -> :sswitch_a
        0x114 -> :sswitch_6
        0x118 -> :sswitch_4
        0x119 -> :sswitch_4
        0x11a -> :sswitch_4
        0x11b -> :sswitch_4
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
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(Landroid/view/KeyEvent;)Z

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

.method isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z
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

.method public isKeyguardOccluded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

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

.method public isKeyguardShowingAndNotOccluded()Z
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

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    xor-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public isKeyguardTrustedLw()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isTrusted()Z

    move-result v0

    return v0
.end method

.method public isNavBarForcedShownLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/view/IWindowStateBridge;->isHomeTask()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    return v0
.end method

.method public isScreenOn()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
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

    const-string/jumbo v2, "com.sec.enterprise.knox.shareddevice.SetupWizardSecuritySettingsPreference"

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

.method public isShowingDreamLw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    return v0
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
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTvUserSetupComplete()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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

.method synthetic lambda$-com_android_server_policy_PhoneWindowManager_246653(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;
    .locals 1

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-object v0
.end method

.method launchHomeFromHotKey()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    return-void
.end method

.method launchHomeFromHotKey(ZZ)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/pm/PersonaServiceHelper;->isKnoxKeyguardShownForKioskMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "launchHomeFromHotKey() > isKnoxKeyguardShownForKioskMode() : true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isEnableAccessControl(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$18;

    invoke-direct {v2, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$18;-><init>(Lcom/android/server/policy/PhoneWindowManager;Z)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    return-void

    :cond_3
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/MultiPhoneWindowManager;->updateImeTargetFreeformTaskId()V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    if-eqz v1, :cond_5

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->performHome()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/MultiPhoneWindowManager;->minimizeAllFreeformTasks()V

    return-void

    :cond_5
    const-string/jumbo v1, "homekey"

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    invoke-virtual {p0, v3, p1}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(ZZ)V

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
    .locals 52

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->canReceiveInput(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_0

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x8de

    if-eq v2, v3, :cond_0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isForceHideBySViewCover()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isNeedLayoutCoverApplication(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->updateSViewCoverLayout(Z)V

    const/16 v41, 0x1

    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v38

    if-eqz v38, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_6

    const/16 v43, 0x1

    :goto_0
    const/16 v40, 0x0

    const/16 v42, 0x0

    if-nez v43, :cond_8

    :cond_3
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v45, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v47, v0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v49

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/server/policy/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    sget-object v18, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    sget-object v31, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    sget-object v32, Lcom/android/server/policy/PhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz v38, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v21

    :goto_2
    move/from16 v0, v47

    and-int/lit16 v11, v0, 0xf0

    if-nez v38, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    :goto_3
    if-nez v38, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    iput v2, v6, Landroid/graphics/Rect;->left:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    iput v2, v6, Landroid/graphics/Rect;->top:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->right:I

    iput v2, v6, Landroid/graphics/Rect;->right:I

    iput v2, v5, Landroid/graphics/Rect;->right:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-object/from16 v3, p1

    move-object/from16 v8, v18

    move-object/from16 v9, v31

    invoke-interface/range {v2 .. v9}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/MultiPhoneWindowManager;->hasDockedStack()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v48

    const/4 v2, 0x3

    move/from16 v0, v48

    if-eq v0, v2, :cond_4

    const/4 v2, 0x1

    move/from16 v0, v48

    if-ne v0, v2, :cond_5

    :cond_4
    if-nez p2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v31

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    :cond_5
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v22

    move-object/from16 v23, p1

    move-object/from16 v24, p2

    move-object/from16 v25, v34

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v18

    invoke-interface/range {v22 .. v31}, Lcom/android/server/policy/EdgeWindowPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_57

    return-void

    :cond_6
    const/16 v43, 0x0

    goto/16 :goto_0

    :cond_7
    const/16 v43, 0x0

    goto/16 :goto_0

    :cond_8
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isInMultiWindowMode()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_9

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Offset ime target window by the last ime window state"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_1

    :cond_a
    const/16 v21, 0x0

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-eq v2, v3, :cond_d

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x960

    if-ne v2, v3, :cond_10

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    iput v2, v6, Landroid/graphics/Rect;->left:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    iput v2, v6, Landroid/graphics/Rect;->top:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v7, Landroid/graphics/Rect;->right:I

    iput v2, v6, Landroid/graphics/Rect;->right:I

    iput v2, v5, Landroid/graphics/Rect;->right:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

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

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v7, Landroid/graphics/Rect;->right:I

    iput v2, v6, Landroid/graphics/Rect;->right:I

    iput v2, v5, Landroid/graphics/Rect;->right:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    :cond_e
    :goto_5
    const/16 v2, 0x50

    move-object/from16 v0, v34

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

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    iput v2, v6, Landroid/graphics/Rect;->left:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->left:I

    goto :goto_5

    :cond_10
    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7ef

    if-ne v2, v3, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v6, Landroid/graphics/Rect;->left:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v6, Landroid/graphics/Rect;->top:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v6, Landroid/graphics/Rect;->right:I

    iput v2, v5, Landroid/graphics/Rect;->right:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x10

    if-eq v11, v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v2, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    :goto_6
    const/16 v2, 0x30

    if-eq v11, v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v2, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    :cond_12
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-ne v2, v3, :cond_14

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->layoutWallpaper(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v6, Landroid/graphics/Rect;->left:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v6, Landroid/graphics/Rect;->top:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    add-int/2addr v2, v3

    iput v2, v6, Landroid/graphics/Rect;->right:I

    iput v2, v5, Landroid/graphics/Rect;->right:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    add-int/2addr v2, v3

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x10

    if-ne v11, v2, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    move-object/from16 v0, v31

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    move-object/from16 v0, v31

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    move-object/from16 v0, v31

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    move-object/from16 v0, v31

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_1c

    const/16 v36, 0x1

    :goto_7
    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1e

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x63

    if-gt v2, v3, :cond_1d

    const/16 v37, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1f

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    xor-int/lit8 v50, v2, 0x1

    :goto_9
    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v2, :cond_20

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v2, :cond_20

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_20

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_20

    const/16 v39, 0x1

    :goto_a
    const/16 v35, 0x1

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFullscreenFreeformLw()Z

    move-result v35

    :cond_17
    if-eqz v37, :cond_1a

    xor-int/lit8 v2, v36, 0x1

    if-eqz v2, :cond_1a

    xor-int/lit8 v2, v50, 0x1

    if-eqz v2, :cond_1a

    if-eqz v39, :cond_1a

    if-eqz v35, :cond_1a

    and-int/lit8 v2, v49, 0x4

    if-nez v2, :cond_19

    and-int/lit16 v2, v10, 0x400

    if-nez v2, :cond_19

    const/high16 v2, 0x4000000

    and-int/2addr v2, v10

    if-nez v2, :cond_19

    const/high16 v2, -0x80000000

    and-int/2addr v2, v10

    if-nez v2, :cond_18

    const/high16 v2, 0x20000

    and-int v2, v2, v45

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v31

    iput v2, v0, Landroid/graphics/Rect;->top:I

    :cond_18
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v2

    if-nez v2, :cond_19

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

    :cond_19
    const/high16 v2, 0x8000000

    and-int/2addr v2, v10

    if-nez v2, :cond_1a

    and-int/lit8 v2, v49, 0x2

    if-nez v2, :cond_1a

    const/high16 v2, -0x80000000

    and-int/2addr v2, v10

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v31

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, v31

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :cond_1a
    const v2, 0x10100

    and-int/2addr v2, v10

    const v3, 0x10100

    if-ne v2, v3, :cond_32

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_1b

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "layoutWindowLw("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v34 .. v34}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "): IN_SCREEN, INSET_DECOR"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    if-eqz p2, :cond_22

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v12, p2

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    invoke-virtual/range {v8 .. v18}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_1c
    const/16 v36, 0x0

    goto/16 :goto_7

    :cond_1d
    const/16 v37, 0x0

    goto/16 :goto_8

    :cond_1e
    const/16 v37, 0x0

    goto/16 :goto_8

    :cond_1f
    const/16 v50, 0x0

    goto/16 :goto_9

    :cond_20
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-nez v2, :cond_21

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_21

    const/16 v39, 0x1

    goto/16 :goto_a

    :cond_21
    const/16 v39, 0x0

    goto/16 :goto_a

    :cond_22
    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_23

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-ne v2, v3, :cond_26

    :cond_23
    if-eqz v21, :cond_27

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    :goto_b
    iput v2, v6, Landroid/graphics/Rect;->left:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v6, Landroid/graphics/Rect;->top:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    if-eqz v21, :cond_28

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    :goto_c
    iput v2, v6, Landroid/graphics/Rect;->right:I

    iput v2, v5, Landroid/graphics/Rect;->right:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    if-eqz v21, :cond_29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    :goto_d
    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_24

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Laying out status bar window: (%d,%d - %d,%d)"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x0

    aput-object v9, v8, v12

    iget v9, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x1

    aput-object v9, v8, v12

    iget v9, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v8, v12

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x3

    aput-object v9, v8, v12

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    :goto_e
    and-int/lit16 v2, v10, 0x400

    if-nez v2, :cond_2f

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v2

    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    iput v2, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    :cond_25
    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v1, v10, v7}, Lcom/android/server/policy/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    const/16 v2, 0x30

    if-eq v11, v2, :cond_31

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :cond_26
    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x8e9

    if-eq v2, v3, :cond_23

    const/high16 v2, 0x2000000

    and-int/2addr v2, v10

    if-eqz v2, :cond_2a

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2a

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_2a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v6, Landroid/graphics/Rect;->left:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v6, Landroid/graphics/Rect;->top:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v6, Landroid/graphics/Rect;->right:I

    iput v2, v5, Landroid/graphics/Rect;->right:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_e

    :cond_27
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto/16 :goto_b

    :cond_28
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto/16 :goto_c

    :cond_29
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto/16 :goto_d

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_2c

    move/from16 v0, v49

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_2c

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2c

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isMobileKeyboardEnabled()Z

    move-result v2

    if-nez v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isCarModeBarVisible()Z

    move-result v2

    :goto_10
    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v5, Landroid/graphics/Rect;->right:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_e

    :cond_2b
    const/4 v2, 0x1

    goto :goto_10

    :cond_2c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v5, Landroid/graphics/Rect;->right:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_e

    :cond_2d
    const/16 v2, 0x10

    if-eq v11, v2, :cond_2e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v2, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    :cond_2e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v2, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    :cond_2f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_25

    const/16 v2, 0x10

    if-eq v11, v2, :cond_30

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    :cond_30
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    :cond_31
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_32
    and-int/lit16 v2, v10, 0x100

    if-nez v2, :cond_33

    move/from16 v0, v49

    and-int/lit16 v2, v0, 0x600

    if-eqz v2, :cond_4b

    :cond_33
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_34

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "layoutWindowLw("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v34 .. v34}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "): IN_SCREEN"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_35

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-ne v2, v3, :cond_38

    :cond_35
    if-eqz v21, :cond_3a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    :goto_11
    iput v2, v7, Landroid/graphics/Rect;->left:I

    iput v2, v6, Landroid/graphics/Rect;->left:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    iput v2, v6, Landroid/graphics/Rect;->top:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    if-eqz v21, :cond_3b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    :goto_12
    iput v2, v7, Landroid/graphics/Rect;->right:I

    iput v2, v6, Landroid/graphics/Rect;->right:I

    iput v2, v5, Landroid/graphics/Rect;->right:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    if-eqz v21, :cond_3c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    :goto_13
    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    and-int/lit16 v2, v10, 0x400

    if-nez v2, :cond_36

    const/16 v2, 0x10

    if-ne v11, v2, :cond_36

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v2, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    :cond_36
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_37

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Laying out IN_SCREEN status bar window: (%d,%d - %d,%d)"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x0

    aput-object v9, v8, v12

    iget v9, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x1

    aput-object v9, v8, v12

    iget v9, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v8, v12

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x3

    aput-object v9, v8, v12

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move-object/from16 v19, v0

    move-object/from16 v20, p1

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    invoke-interface/range {v19 .. v25}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->applyFrameInLayoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v1, v10, v7}, Lcom/android/server/policy/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    const/16 v2, 0x30

    if-eq v11, v2, :cond_4a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :cond_38
    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e4

    if-eq v2, v3, :cond_35

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x8e9

    if-eq v2, v3, :cond_35

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e3

    if-eq v2, v3, :cond_39

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e8

    if-ne v2, v3, :cond_3d

    :cond_39
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v6, Landroid/graphics/Rect;->left:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v6, Landroid/graphics/Rect;->top:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v6, Landroid/graphics/Rect;->right:I

    iput v2, v5, Landroid/graphics/Rect;->right:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_37

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Laying out navigation bar window: (%d,%d - %d,%d)"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x0

    aput-object v9, v8, v12

    iget v9, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x1

    aput-object v9, v8, v12

    iget v9, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v8, v12

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x3

    aput-object v9, v8, v12

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    :cond_3a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto/16 :goto_11

    :cond_3b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto/16 :goto_12

    :cond_3c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto/16 :goto_13

    :cond_3d
    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7df

    if-eq v2, v3, :cond_3e

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-ne v2, v3, :cond_3f

    :cond_3e
    and-int/lit16 v2, v10, 0x400

    if-eqz v2, :cond_40

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    iput v2, v6, Landroid/graphics/Rect;->left:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    iput v2, v6, Landroid/graphics/Rect;->top:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->right:I

    iput v2, v6, Landroid/graphics/Rect;->right:I

    iput v2, v5, Landroid/graphics/Rect;->right:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_14

    :cond_3f
    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7f4

    if-eq v2, v3, :cond_3e

    :cond_40
    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-ne v2, v3, :cond_41

    xor-int/lit8 v2, v41, 0x1

    if-nez v2, :cond_42

    :cond_41
    const/high16 v2, 0x2000000

    and-int/2addr v2, v10

    if-eqz v2, :cond_43

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_43

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_43

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    iput v2, v6, Landroid/graphics/Rect;->left:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    iput v2, v6, Landroid/graphics/Rect;->top:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->right:I

    iput v2, v6, Landroid/graphics/Rect;->right:I

    iput v2, v5, Landroid/graphics/Rect;->right:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_14

    :cond_42
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    iput v2, v6, Landroid/graphics/Rect;->left:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    iput v2, v6, Landroid/graphics/Rect;->top:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->right:I

    iput v2, v6, Landroid/graphics/Rect;->right:I

    iput v2, v5, Landroid/graphics/Rect;->right:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_14

    :cond_43
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_47

    move/from16 v0, v49

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_47

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-eq v2, v3, :cond_44

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-ne v2, v3, :cond_46

    :cond_44
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    iput v2, v6, Landroid/graphics/Rect;->left:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    iput v2, v6, Landroid/graphics/Rect;->top:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->right:I

    iput v2, v6, Landroid/graphics/Rect;->right:I

    iput v2, v5, Landroid/graphics/Rect;->right:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    and-int/lit16 v2, v10, 0x100

    if-nez v2, :cond_37

    and-int/lit16 v2, v10, 0x400

    if-eqz v2, :cond_45

    move/from16 v0, v49

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_37

    :cond_45
    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_37

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_37

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    iput v2, v6, Landroid/graphics/Rect;->top:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    goto/16 :goto_14

    :cond_46
    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7f2

    if-eq v2, v3, :cond_44

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->isSamsungDividerPanelWindow(I)Z

    move-result v2

    if-nez v2, :cond_44

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7f1

    if-eq v2, v3, :cond_44

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_47

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-le v2, v3, :cond_44

    :cond_47
    move/from16 v0, v49

    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_49

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v6, Landroid/graphics/Rect;->left:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v6, Landroid/graphics/Rect;->top:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v6, Landroid/graphics/Rect;->right:I

    iput v2, v5, Landroid/graphics/Rect;->right:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x10

    if-eq v11, v2, :cond_48

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v2, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_14

    :cond_48
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v2, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_14

    :cond_49
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    iput v2, v6, Landroid/graphics/Rect;->left:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    iput v2, v6, Landroid/graphics/Rect;->top:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->right:I

    iput v2, v6, Landroid/graphics/Rect;->right:I

    iput v2, v5, Landroid/graphics/Rect;->right:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_14

    :cond_4a
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_4b
    if-eqz p2, :cond_4d

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_4c

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "layoutWindowLw("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v34 .. v34}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "): attached to "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v12, p2

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    invoke-virtual/range {v8 .. v18}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_4d
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_4e

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "layoutWindowLw("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v34 .. v34}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "): normal window"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_4f

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e4

    if-ne v2, v3, :cond_50

    :cond_4f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    iput v2, v6, Landroid/graphics/Rect;->left:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    iput v2, v6, Landroid/graphics/Rect;->top:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->right:I

    iput v2, v6, Landroid/graphics/Rect;->right:I

    iput v2, v5, Landroid/graphics/Rect;->right:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :cond_50
    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x8e9

    if-eq v2, v3, :cond_4f

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-eq v2, v3, :cond_51

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d3

    if-ne v2, v3, :cond_53

    :cond_51
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    iput v2, v6, Landroid/graphics/Rect;->left:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/MultiPhoneWindowManager;->isExpandedDockedStack()Z

    move-result v2

    if-eqz v2, :cond_52

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    iput v2, v6, Landroid/graphics/Rect;->top:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    :goto_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iput v2, v7, Landroid/graphics/Rect;->right:I

    iput v2, v6, Landroid/graphics/Rect;->right:I

    iput v2, v5, Landroid/graphics/Rect;->right:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :cond_52
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    iput v2, v6, Landroid/graphics/Rect;->top:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    goto :goto_15

    :cond_53
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v2, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v2, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v2

    if-eqz v2, :cond_54

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    iput v2, v6, Landroid/graphics/Rect;->left:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    iput v2, v6, Landroid/graphics/Rect;->top:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    iput v2, v7, Landroid/graphics/Rect;->right:I

    iput v2, v6, Landroid/graphics/Rect;->right:I

    iput v2, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    :goto_16
    const/16 v2, 0x30

    if-eq v11, v2, :cond_56

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :cond_54
    const/16 v2, 0x10

    if-eq v11, v2, :cond_55

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    iput v2, v6, Landroid/graphics/Rect;->left:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    iput v2, v6, Landroid/graphics/Rect;->top:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v2, v7, Landroid/graphics/Rect;->right:I

    iput v2, v6, Landroid/graphics/Rect;->right:I

    iput v2, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_16

    :cond_55
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    iput v2, v6, Landroid/graphics/Rect;->left:I

    iput v2, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    iput v2, v6, Landroid/graphics/Rect;->top:I

    iput v2, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v2, v7, Landroid/graphics/Rect;->right:I

    iput v2, v6, Landroid/graphics/Rect;->right:I

    iput v2, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_16

    :cond_56
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_57
    and-int/lit16 v2, v10, 0x200

    if-eqz v2, :cond_58

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7da

    if-eq v2, v3, :cond_58

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isInMultiWindowMode()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_58

    const/16 v2, -0x2710

    iput v2, v5, Landroid/graphics/Rect;->top:I

    const/16 v2, -0x2710

    iput v2, v5, Landroid/graphics/Rect;->left:I

    const/16 v2, 0x2710

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x2710

    iput v2, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-eq v2, v3, :cond_58

    const/16 v2, -0x2710

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->top:I

    const/16 v2, -0x2710

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->left:I

    const/16 v2, -0x2710

    iput v2, v7, Landroid/graphics/Rect;->top:I

    const/16 v2, -0x2710

    iput v2, v7, Landroid/graphics/Rect;->left:I

    const/16 v2, -0x2710

    iput v2, v6, Landroid/graphics/Rect;->top:I

    const/16 v2, -0x2710

    iput v2, v6, Landroid/graphics/Rect;->left:I

    const/16 v2, 0x2710

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x2710

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->right:I

    const/16 v2, 0x2710

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x2710

    iput v2, v7, Landroid/graphics/Rect;->right:I

    const/16 v2, 0x2710

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x2710

    iput v2, v6, Landroid/graphics/Rect;->right:I

    :cond_58
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v10}, Lcom/android/server/policy/PhoneWindowManager;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v51

    if-eqz v38, :cond_5a

    if-eqz v51, :cond_5a

    sget-object v33, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    iget v2, v7, Landroid/graphics/Rect;->left:I

    iget v3, v7, Landroid/graphics/Rect;->top:I

    iget v8, v7, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v3, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ScreenShapeHelper;->getWindowOutsetBottomPx(Landroid/content/res/Resources;)I

    move-result v44

    if-lez v44, :cond_5a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    move/from16 v46, v0

    if-nez v46, :cond_60

    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int v2, v2, v44

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_59
    :goto_17
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_5a

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "applying bottom outset of "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, " with rotation "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v46

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, ", result: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_5b

    const-string/jumbo v3, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Compute frame "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v34 .. v34}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, ": sim=#"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " attach="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " type="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v34

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " flags=0x%08x"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " pf="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " df="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " of="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " cf="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " vf="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " dcf="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " sf="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " osf="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v33, :cond_63

    const-string/jumbo v2, "null"

    :goto_18
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    move-object/from16 v25, p1

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v18

    invoke-interface/range {v25 .. v33}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-eq v2, v3, :cond_5c

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x960

    if-ne v2, v3, :cond_5d

    :cond_5c
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5d

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    :cond_5d
    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7ef

    if-ne v2, v3, :cond_5e

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5e

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->offsetVoiceInputWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    :cond_5e
    if-eqz v41, :cond_5f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->updateSViewCoverLayout(Z)V

    :cond_5f
    return-void

    :cond_60
    const/4 v2, 0x1

    move/from16 v0, v46

    if-ne v0, v2, :cond_61

    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int v2, v2, v44

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_17

    :cond_61
    const/4 v2, 0x2

    move/from16 v0, v46

    if-ne v0, v2, :cond_62

    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, v2, v44

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_17

    :cond_62
    const/4 v2, 0x3

    move/from16 v0, v46

    if-ne v0, v2, :cond_59

    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int v2, v2, v44

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_17

    :cond_63
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_18
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

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->needSensorRunningLp()I

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

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 7

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

    const/4 v1, 0x0

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

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->notifyLidSwitchChanged(JZ)Z

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
    .locals 6

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isMobileKeyboardEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    const v3, 0x1050158

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v3, v4, v5

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    const v3, 0x105015a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v3, v4, v5

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    const v3, 0x105015e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v3, v4, v5

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    aput v3, v4, v5

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v3, v4, v5

    aput v3, v1, v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->onConfigurationChanged()V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-virtual {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/MultiPhoneWindowManager;->onConfigurationChanged()V

    :cond_2
    return-void
.end method

.method public onKeyguardOccludedChangedLw(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZ)Z

    goto :goto_0
.end method

.method public onNonDefaultDisplayConfigurationChanged(I)V
    .locals 7

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, p1}, Lcom/android/server/policy/PhoneWindowManager;->getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationOnSecondaryDisplay:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    const v4, 0x1050158

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationOnSecondaryDisplay:[I

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v4, v5, v6

    aput v4, v2, v3

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationOnSecondaryDisplay:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    const v4, 0x105015a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationOnSecondaryDisplay:[I

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v4, v5, v6

    aput v4, v2, v3

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationOnSecondaryDisplay:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    const v4, 0x105015e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationOnSecondaryDisplay:[I

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v4, v5, v6

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationOnSecondaryDisplay:[I

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    aput v4, v5, v6

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationOnSecondaryDisplay:[I

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v4, v5, v6

    aput v4, v2, v3

    return-void
.end method

.method public onSystemUiStarted()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    return-void
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v4, p1, p2, p3}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v4

    return v4

    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-nez v4, :cond_1

    return v7

    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "haptic_feedback_enabled"

    const/4 v6, -0x2

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    xor-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_3

    return v7

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->getVibrationEffect(I)Landroid/os/VibrationEffect;

    move-result-object v0

    if-nez v0, :cond_4

    return v7

    :cond_4
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v5, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v4, v3, v2, v0, v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    const/4 v4, 0x1

    return v4

    :cond_5
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method powerMultiPressAction(JZI)V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0, p4}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->powerMultiPressAction(I)Z

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
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x7

    const/4 v4, 0x0

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v1, p1, p2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :sswitch_1
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

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    invoke-direct {p0, v1, v6}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZ)Z

    goto :goto_0

    :sswitch_2
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

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVisibilityListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    invoke-virtual {v1, v2, v6}, Lcom/android/server/policy/BarController;->setOnBarVisibilityChangedListener(Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;Z)V

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

    :sswitch_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.STATUS_BAR_SERVICE"

    const-string/jumbo v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/server/policy/EdgeWindowPolicy;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    sget-boolean v1, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_AOD:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getAODWindowPolicy()Lcom/android/server/policy/AODWindowPolicy;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/server/policy/AODWindowPolicy;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_5
    return v4

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_1
        0x7de -> :sswitch_3
        0x7e1 -> :sswitch_3
        0x7e3 -> :sswitch_2
        0x7e8 -> :sswitch_3
        0x7f1 -> :sswitch_3
        0x904 -> :sswitch_0
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

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_2

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/StatusBarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/policy/EdgeWindowPolicy;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    sget-boolean v0, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_AOD:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getAODWindowPolicy()Lcom/android/server/policy/AODWindowPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/policy/AODWindowPolicy;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0
.end method

.method requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
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
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isLockTaskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_2

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Not showing transient bar, becuase LockTask mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->isNaviBarGestureLockedByGameTools()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Not showing NavigationBar, becuase Locked by GameTools"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    monitor-exit v3

    return-void

    :cond_4
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

    xor-int/lit8 v0, v2, 0x1

    :goto_0
    if-nez v1, :cond_5

    if-eqz v0, :cond_c

    :cond_5
    if-nez v0, :cond_8

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_8

    :cond_6
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v4, "Not showing transient bar, wrong swipe target"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    if-nez v1, :cond_9

    :try_start_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq p1, v2, :cond_6

    :cond_9
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

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    :cond_a
    if-eqz v0, :cond_b

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->showTransient()V

    :cond_b
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    :cond_c
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_d

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    invoke-virtual {v2, v4}, Lcom/android/server/policy/ImmersiveModeConfirmation;->showNextButton(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_d
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
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

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v4, p1, p2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->rotationForOrientationLw(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    move v1, v2

    :goto_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    if-ltz v1, :cond_23

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

    if-eqz v4, :cond_c

    move v1, v3

    goto :goto_1

    :cond_a
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v6, 0x4

    if-eq v4, v6, :cond_8

    :cond_b
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    if-eqz v4, :cond_d

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    goto :goto_1

    :cond_c
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    goto :goto_1

    :cond_d
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v4, :cond_e

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-nez v4, :cond_e

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    if-ltz v4, :cond_e

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    goto :goto_1

    :cond_e
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    if-eqz v4, :cond_f

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    goto :goto_1

    :cond_f
    const/16 v4, 0xe

    if-ne p1, v4, :cond_10

    move v1, p2

    goto :goto_1

    :cond_10
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    if-nez v4, :cond_11

    const/4 v1, -0x1

    goto :goto_1

    :cond_11
    if-nez v0, :cond_16

    const/4 v4, 0x2

    if-eq p1, v4, :cond_12

    const/4 v4, -0x1

    if-ne p1, v4, :cond_15

    :cond_12
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    if-gez v4, :cond_13

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x112000c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:Z

    if-eqz v4, :cond_17

    const/4 v4, 0x1

    :goto_2
    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    :cond_13
    const/4 v4, 0x2

    if-ne v3, v4, :cond_14

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_18

    :cond_14
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeEnabled:Z

    if-eqz v4, :cond_19

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_15
    const/16 v4, 0xb

    if-eq p1, v4, :cond_12

    const/16 v4, 0xc

    if-eq p1, v4, :cond_12

    const/16 v4, 0xd

    if-eq p1, v4, :cond_12

    :cond_16
    const/4 v4, 0x4

    if-eq p1, v4, :cond_12

    const/16 v4, 0xa

    if-eq p1, v4, :cond_12

    const/4 v4, 0x6

    if-eq p1, v4, :cond_12

    const/4 v4, 0x7

    if-eq p1, v4, :cond_12

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1a

    const/4 v4, 0x5

    if-eq p1, v4, :cond_1a

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    goto/16 :goto_1

    :cond_17
    const/4 v4, 0x0

    goto :goto_2

    :cond_18
    const/16 v4, 0xa

    if-eq p1, v4, :cond_14

    const/16 v4, 0xd

    if-eq p1, v4, :cond_14

    move v1, p2

    goto/16 :goto_1

    :cond_19
    move v1, v3

    goto/16 :goto_1

    :cond_1a
    const/4 v1, -0x1

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1b

    monitor-exit v5

    return v1

    :cond_1b
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

    if-eqz v4, :cond_1c

    monitor-exit v5

    return v1

    :cond_1c
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

    if-eqz v4, :cond_1d

    monitor-exit v5

    return v1

    :cond_1d
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

    if-eqz v4, :cond_1e

    monitor-exit v5

    return v1

    :cond_1e
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

    if-eqz v4, :cond_1f

    monitor-exit v5

    return v1

    :cond_1f
    :try_start_a
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v4

    if-eqz v4, :cond_20

    monitor-exit v5

    return p2

    :cond_20
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

    if-eqz v4, :cond_21

    monitor-exit v5

    return v1

    :cond_21
    :try_start_d
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v4

    if-eqz v4, :cond_22

    monitor-exit v5

    return p2

    :cond_22
    :try_start_e
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit v5

    return v4

    :cond_23
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
    .locals 3

    const/4 v2, 0x0

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

    invoke-direct {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->screenTurnedOff()V

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

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public screenTurningOff(Landroid/view/WindowManagerPolicy$ScreenOffListener;)V
    .locals 3

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screenTurningOff: screenOffListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->screenTurningOff(Landroid/view/WindowManagerPolicy$ScreenOffListener;)V

    return-void
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 5

    const/4 v4, 0x6

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Screen turning on..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getKeyguardDrawnTimeout()J

    move-result-wide v2

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
    .locals 9

    const/4 v8, 0x3

    const/4 v7, -0x1

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v3, p1, p2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v3, :cond_9

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v3, v7, :cond_4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v3, v7, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-nez v1, :cond_1

    if-eqz v0, :cond_5

    :cond_1
    return v7

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    if-eq p2, v4, :cond_6

    const/4 v3, 0x4

    if-ne p2, v3, :cond_7

    :cond_6
    const v3, 0x10a0032

    return v3

    :cond_7
    if-eq p2, v6, :cond_8

    if-ne p2, v8, :cond_18

    :cond_8
    const v3, 0x10a0031

    return v3

    :cond_9
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v3, :cond_17

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v3, :cond_a

    return v5

    :cond_a
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-nez v3, :cond_f

    if-eq p2, v4, :cond_b

    const/4 v3, 0x4

    if-ne p2, v3, :cond_d

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-eqz v3, :cond_c

    const v3, 0x10a002c

    return v3

    :cond_c
    const v3, 0x10a002b

    return v3

    :cond_d
    if-eq p2, v6, :cond_e

    if-ne p2, v8, :cond_18

    :cond_e
    const v3, 0x10a002a

    return v3

    :cond_f
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v3, v6, :cond_13

    if-eq p2, v4, :cond_10

    const/4 v3, 0x4

    if-ne p2, v3, :cond_11

    :cond_10
    const v3, 0x10a0030

    return v3

    :cond_11
    if-eq p2, v6, :cond_12

    if-ne p2, v8, :cond_18

    :cond_12
    const v3, 0x10a002f

    return v3

    :cond_13
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v3, v4, :cond_18

    if-eq p2, v4, :cond_14

    const/4 v3, 0x4

    if-ne p2, v3, :cond_15

    :cond_14
    const v3, 0x10a002e

    return v3

    :cond_15
    if-eq p2, v6, :cond_16

    if-ne p2, v8, :cond_18

    :cond_16
    const v3, 0x10a002d

    return v3

    :cond_17
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7f2

    if-ne v3, v4, :cond_18

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->selectDockedDividerAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v3

    return v3

    :cond_18
    const/4 v3, 0x5

    if-ne p2, v3, :cond_19

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v3

    if-eqz v3, :cond_1a

    const v3, 0x10a0017

    return v3

    :cond_19
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e7

    if-ne v3, v4, :cond_1a

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v3, :cond_1a

    if-ne p2, v6, :cond_1a

    return v7

    :cond_1a
    return v5
.end method

.method public selectRotationAnimationLw([I)V
    .locals 5

    const v4, 0x10a0086

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getRotationAnimationHint()I

    move-result v0

    if-gtz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    :cond_0
    packed-switch v0, :pswitch_data_0

    aput v2, p1, v3

    aput v2, p1, v2

    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v1, p1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->selectRotationAnimationLw([I)V

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/policy/EdgeWindowPolicy;->selectRotationAnimationLw([I)V

    return-void

    :pswitch_0
    const v1, 0x10a0088

    aput v1, p1, v2

    aput v4, p1, v3

    goto :goto_0

    :pswitch_1
    const v1, 0x10a0087

    aput v1, p1, v2

    aput v4, p1, v3

    goto :goto_0

    :cond_1
    aput v2, p1, v3

    aput v2, p1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
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
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    if-le v3, v4, :cond_1

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    if-ge v3, v4, :cond_1

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v3, p10, Landroid/graphics/Rect;->left:I

    iput v3, p9, Landroid/graphics/Rect;->left:I

    iput v3, p8, Landroid/graphics/Rect;->left:I

    iput v3, p7, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v3, p10, Landroid/graphics/Rect;->top:I

    iput v3, p9, Landroid/graphics/Rect;->top:I

    iput v3, p8, Landroid/graphics/Rect;->top:I

    iput v3, p7, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v3, p10, Landroid/graphics/Rect;->right:I

    iput v3, p9, Landroid/graphics/Rect;->right:I

    iput v3, p8, Landroid/graphics/Rect;->right:I

    iput v3, p7, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v3, p10, Landroid/graphics/Rect;->bottom:I

    iput v3, p9, Landroid/graphics/Rect;->bottom:I

    iput v3, p8, Landroid/graphics/Rect;->bottom:I

    iput v3, p7, Landroid/graphics/Rect;->bottom:I

    :goto_0
    and-int/lit16 v3, p2, 0x100

    if-nez v3, :cond_0

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object p7

    :cond_0
    invoke-virtual {p6, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_1
    const/16 v3, 0x10

    if-eq p3, v3, :cond_6

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, p2

    if-nez v3, :cond_4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isInMultiWindowMode()Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_5

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    :goto_2
    invoke-virtual {p9, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_2
    :goto_3
    if-eqz p5, :cond_e

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    :goto_4
    invoke-virtual {p7, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p5, :cond_3

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object p9

    :cond_3
    invoke-virtual {p8, p9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p10, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_2

    :cond_6
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p9, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, p9, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    if-ge v3, v4, :cond_7

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    iput v3, p9, Landroid/graphics/Rect;->left:I

    :cond_7
    iget v3, p9, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    if-ge v3, v4, :cond_8

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    iput v3, p9, Landroid/graphics/Rect;->top:I

    :cond_8
    iget v3, p9, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    if-le v3, v4, :cond_9

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    iput v3, p9, Landroid/graphics/Rect;->right:I

    :cond_9
    iget v3, p9, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    if-le v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    iput v3, p9, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_a
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    if-ge v3, v4, :cond_2

    iget v3, p9, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    if-ge v3, v4, :cond_b

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v3, p9, Landroid/graphics/Rect;->left:I

    :cond_b
    iget v3, p9, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    if-ge v3, v4, :cond_c

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v3, p9, Landroid/graphics/Rect;->top:I

    :cond_c
    iget v3, p9, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    if-le v3, v4, :cond_d

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v3, p9, Landroid/graphics/Rect;->right:I

    :cond_d
    iget v3, p9, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    if-le v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v3, p9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_e
    move-object v3, p9

    goto/16 :goto_4
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
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/server/policy/AccessibilityShortcutController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/server/policy/AccessibilityShortcutController;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/AccessibilityShortcutController;->setCurrentUser(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setCurrentUser(I)V

    :cond_2
    invoke-virtual {p0, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method public setDeadzoneHole(Landroid/os/Bundle;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/TspStateManagerPolicy;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getTspStateManagerPolicy()Lcom/android/server/policy/TspStateManagerPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/policy/TspStateManagerPolicy;->setDeadzoneHole(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setDismissImeOnBackKeyPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

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

.method public setInitialDisplaySize(Landroid/view/Display;IIIIII)V
    .locals 17

    invoke-virtual/range {p1 .. p1}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    const/4 v14, -0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    if-eqz v9, :cond_2

    :cond_0
    if-eqz v10, :cond_1

    const/4 v2, -0x1

    if-eq v2, v9, :cond_2

    :cond_1
    return-void

    :cond_2
    if-nez v9, :cond_3

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_7

    move/from16 v15, p3

    move/from16 v11, p2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    const v2, 0x112008e

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    :goto_0
    mul-int/lit16 v2, v15, 0xa0

    div-int v16, v2, p4

    mul-int/lit16 v2, v11, 0xa0

    div-int v12, v2, p4

    move/from16 v0, p2

    move/from16 v1, p3

    if-eq v0, v1, :cond_9

    const/16 v2, 0x258

    move/from16 v0, v16

    if-ge v0, v2, :cond_9

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    const v2, 0x1120096

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    const-string/jumbo v2, "portrait"

    const-string/jumbo v3, "persist.demo.hdmirotation"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    :goto_2
    const-string/jumbo v2, "persist.demo.hdmirotationlock"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    const-string/jumbo v2, "portrait"

    const-string/jumbo v3, "persist.demo.remoterotation"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    :goto_3
    const-string/jumbo v2, "persist.demo.rotationlock"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    const/16 v2, 0x3c0

    if-lt v12, v2, :cond_c

    const/16 v2, 0x2d0

    move/from16 v0, v16

    if-lt v0, v2, :cond_c

    const v2, 0x112006d

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string/jumbo v2, "true"

    const-string/jumbo v3, "config.override_forced_orient"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    if-nez v9, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v2 .. v8}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->setInitialDisplaySize(IIIIII)V

    :cond_4
    if-nez v9, :cond_5

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v2

    move/from16 v0, p4

    invoke-interface {v2, v0}, Lcom/android/server/policy/EdgeWindowPolicy;->initCocktailBarSize(I)V

    :cond_5
    return-void

    :cond_6
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    goto/16 :goto_0

    :cond_7
    move/from16 v15, p2

    move/from16 v11, p3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    const v2, 0x112008e

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    goto/16 :goto_3

    :cond_c
    const/4 v2, 0x0

    goto :goto_4
.end method

.method public setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    return-void
.end method

.method public setPipVisibilityLw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    return-void
.end method

.method public setRecentsVisibilityLw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    return-void
.end method

.method public setRotationLw(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->setRotationLw(I)V

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

.method public setSwitchingUser(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setSwitchingUser(Z)V

    return-void
.end method

.method public setUserRotationMode(II)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, -0x2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v1, p1, p2}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->setUserRotationMode(II)Z

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

.method shouldBeHiddenByKeyguard(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 9

    const/high16 v8, 0x80000

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v7, p1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->shouldBeHiddenIfNeeded(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v7

    if-eqz v7, :cond_0

    return v6

    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    if-eqz v7, :cond_1

    return v5

    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p2, :cond_7

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v7, v8

    if-nez v7, :cond_6

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/android/view/IWindowStateBridge;->isShowWhenLockedAppWindow()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v7

    if-nez v7, :cond_6

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v7

    xor-int/lit8 v4, v7, 0x1

    :goto_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isInputMethodWindow()Z

    move-result v7

    if-nez v7, :cond_3

    if-ne p2, p0, :cond_8

    :cond_3
    move v0, v4

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v7, v8

    if-nez v7, :cond_9

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_4

    move v5, v6

    :cond_4
    :goto_2
    or-int/2addr v0, v5

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7f2

    if-ne v5, v7, :cond_a

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Landroid/view/WindowManagerInternal;->isStackVisible(I)Z

    move-result v5

    xor-int/lit8 v2, v5, 0x1

    :goto_3
    if-eqz v3, :cond_b

    xor-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_b

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v5

    if-nez v5, :cond_b

    :goto_4
    return v6

    :cond_6
    const/4 v4, 0x1

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    :cond_9
    move v5, v6

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    :cond_b
    move v6, v2

    goto :goto_4
.end method

.method public shouldRotateSeamlessly(II)Z
    .locals 5

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    if-eq p1, v2, :cond_0

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p2, v2, :cond_1

    :cond_0
    return v4

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-nez v2, :cond_2

    return v4

    :cond_2
    sub-int v0, p2, p1

    if-gez v0, :cond_3

    add-int/lit8 v0, v0, 0x4

    :cond_3
    if-ne v0, v3, :cond_4

    return v4

    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq v1, v2, :cond_5

    return v4

    :cond_5
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    if-eq v2, v3, :cond_6

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    :cond_6
    const/4 v2, 0x1

    return v2

    :cond_7
    return v4
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$21;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$21;-><init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V

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

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/pm/PersonaServiceHelper;->isKnoxKeyguardShownForKioskMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "startDockOrHome() > isKnoxKeyguardShownForKioskMode() : true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    :cond_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerPerformance;->getBooster()Lcom/android/server/am/ActivityManagerPerformance;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerPerformance;->isHomeKeyPressed()V

    :cond_2
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v4}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->performHome()V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    :try_start_0
    const-string/jumbo v4, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    :cond_4
    if-eqz p1, :cond_5

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v4, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_5
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

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
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PersonaManagerService;->onStartedGoingToSleep(I)V

    :cond_2
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

    const-string/jumbo v3, "Started waking up... reason="

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
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PersonaManagerService;->onStartedWakingUp(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v1, p1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->startedWakingUp(I)V

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public systemBooted()V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn()V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->systemBooted()V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isSharedDeviceEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Shared devices on boot completed true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string/jumbo v1, "isDeviceBooted"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public systemReady()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-interface {v0, v1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->systemReady(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/server/vr/VrManagerInternal;->addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readCameraLensCoverState()V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateUiMode()V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$20;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$20;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->systemReady()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->systemReady()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/GlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    :cond_2
    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method toggleRecentApps()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V

    :cond_0
    return-void
.end method

.method updateOrientationListenerLp()V
    .locals 5

    const/4 v4, 0x1

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

    invoke-virtual {v1, v4}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->enable(Z)V

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Enabling listeners"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

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

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "all_rotations"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:Z

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

    const-string/jumbo v11, "incall_back_button_behavior"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    iput v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

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

    invoke-virtual {v8, v11}, Lcom/android/server/policy/ImmersiveModeConfirmation;->loadSetting(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmed:Z
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
    .packed-switch 0x10a0087
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
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/IPhoneWindowManagerBridge;

    invoke-interface {v1}, Lcom/android/server/policy/IPhoneWindowManagerBridge;->performCPUBoost()V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, p1, p2, p4}, Landroid/os/PowerManager;->wakeUp(JI)V

    const/4 v1, 0x1

    return v1
.end method
