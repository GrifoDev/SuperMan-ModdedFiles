.class public Lcom/android/server/policy/SamsungPhoneWindowManager;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/SamsungWindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/SamsungPhoneWindowManager$10;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$11;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$12;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$13;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$14;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$15;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$16;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$17;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$18;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$19;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$1;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$2;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$3;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$4;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$5;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$6;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$7;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$8;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$9;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$SettingsObserver;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$WakeupPreventionObserver;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$KillApp;
    }
.end annotation


# static fields
.field static final ACTION_PANIC_CALL:Ljava/lang/String; = "com.samsung.android.action.PANIC_CALL"

.field static final DEBUG:Z = false

.field static final EXTRAS_PANIC_CALL:Ljava/lang/String; = "panic_call"

.field private static final FEATURE_COVER_NFC_AUTHENTICATION:Ljava/lang/String; = "com.sec.feature.cover.nfc_authentication"

.field private static final FINGERPRINT_KEY_IGNORE_DURATION:I = 0x3e8

.field private static final INTENT_ACTION_HOME_DOUBLE_CLICK:Ljava/lang/String; = "com.samsung.android.action.HOME_DOUBLE_CLICK"

.field private static final INTENT_ACTION_START_DOCK_OR_HOME:Ljava/lang/String; = "com.samsung.android.action.START_DOCK_OR_HOME"

.field private static final INTENT_PERMISSION_HOME_DOUBLE_CLICK:Ljava/lang/String; = "com.samsung.android.permisson.HOME_DOUBLE_CLICK"

.field private static final INTENT_PERMISSION_START_DOCK_OR_HOME:Ljava/lang/String; = "com.samsung.android.permisson.START_DOCK_OR_HOME"

.field private static final MATE_ACTION_EXT_AGENT_SCREEN_TURNED_OFF:I = 0x210002

.field static final PERMISSION_PANIC_CALL:Ljava/lang/String; = "com.samsung.android.permission.PANIC_CALL"

.field static final SAFE_DEBUG:Z

.field static final SAMSUNGPAY_LAUNCH_ACTION:Ljava/lang/String; = "com.samsung.android.spay.quickpay"

.field static final SCREENCAPTURE_BOTH:I = 0x3

.field static final SCREENCAPTURE_FULLSCREEN:I = 0x1

.field static final SCREENCAPTURE_KEY:I = 0x1

.field static final SCREENCAPTURE_KNOX_DESKTOP:I = 0x4

.field static final SCREENCAPTURE_MAIN:I = 0x1

.field static final SCREENCAPTURE_ORIGINAL:I = 0x1

.field static final SCREENCAPTURE_PALM:I = 0x2

.field static final SCREENCAPTURE_PARTIAL:I = 0x2

.field static final SCREENCAPTURE_QUICK_PANEL:I = 0x3

.field static final SCREENCAPTURE_SUB:I = 0x2

.field static final SCREENCAPTURE_SWEEP_LEFT:I = 0x2

.field static final SCREENCAPTURE_SWEEP_RIGHT:I = 0x3

.field static final SCREENCAPTURE_WINDOW:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SamsungPhoneWindowManager"

.field public static final TORCH_FILE:Ljava/lang/String; = "/sys/class/camera/flash/rear_flash"

.field private static final USERKEY_LONGPRESS:I = 0x1f4

.field private static final USERKEY_TIMEOUT:I = 0xaa

.field static final localLOGV:Z

.field private static mCameraId:Ljava/lang/String;

.field private static mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private static mCurrentUser:I

.field private static mIsJapanModel:Z

.field private static mIsTablet:Z

.field private static mModelName:Ljava/lang/String;

.field private static mRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

.field static final mTmpCarModeFrame:Landroid/graphics/Rect;

.field private static mWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;


# instance fields
.field private ACTION_RESOLUTION_CHANGED:Ljava/lang/String;

.field final MAX_SCREENSHOT_CONNECTION:I

.field final QUICKACCESS_AOD_DOUBLETAB:I

.field final QUICKACCESS_AOD_FORCE_PRESS:I

.field final QUICKACCESS_AOD_LONGPROESS:I

.field final QUICKACCESS_AOD_PRESS:I

.field final QUICKACCESS_CAMERA:I

.field final QUICKACCESS_CHANGE_AOD_MODE:I

.field final QUICKACCESS_FORCE_PRESS:I

.field final QUICKACCESS_FORCE_RELEASE:I

.field final QUICKACCESS_SAMSUNGPAY:I

.field final QUICKACCESS_STATUS:I

.field final QUICKACCESS_SUBSCREEN_WAKEUP:I

.field private bIsTorchOn:Z

.field private mActiveKeyCurTime:J

.field private final mActiveKeyPress:Ljava/lang/Runnable;

.field private mActiveKeyTriggered:Z

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mAppsShowWhenLocked:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/IApplicationToken;",
            ">;"
        }
    .end annotation
.end field

.field mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/IApplicationToken;",
            ">;"
        }
    .end annotation
.end field

.field mAudioManager:Landroid/media/AudioManager;

.field mAvailableDoublTapOnHomeCommand:Z

.field mAvailableVoiceCommand:Z

.field private mBackKeyConsumed:Z

.field private mBackKill:I

.field volatile mBeganFromNonInteractiveEndCall:Z

.field mBlockKeyForDrivingMode:Z

.field private mBlockedHwKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleted:Z

.field mCaptureReceiver:Landroid/content/BroadcastReceiver;

.field mCapturedDisplay:I

.field mCapturedOrigin:I

.field private mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mCarModeBarOnBottom:Z

.field private mCarModeSize:I

.field private final mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

.field mCombinationKeyManager:Lcom/android/server/policy/CombinationKeyManager;

.field mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

.field mContext:Landroid/content/Context;

.field private mContextLoggingThread:Ljava/lang/Thread;

.field mCoverCloseRotation:I

.field mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field mCoverNoteEnabled:Z

.field mCoverState:Lcom/samsung/android/cover/CoverState;

.field final mDcmAppPkg:Ljava/lang/String;

.field mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field mDirectAccessBehavior:I

.field private mDisplayEnabled:Z

.field mDoubleTapHomeUser:I

.field mDoubleTapOnHomeBehavior:I

.field mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEasyOneHandEnabled:I

.field private mEasyOneHandTriggerType:I

.field volatile mEndCallKeyPressCounter:I

.field private final mEndCallLongPress:Ljava/lang/Runnable;

.field mFakeFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mFingerPrintIntent:Landroid/content/Intent;

.field mFingerPrintPending:Z

.field private final mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

.field mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

.field mFlipFolderOpenedIntent:Landroid/content/Intent;

.field private mFolderCloseSound:Ljava/lang/String;

.field private mFolderOpenSound:Ljava/lang/String;

.field private mFolderSoundEnable:Z

.field mForceStatusBarFromSViewCover:Z

.field mForceUserActivityTimeoutWin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field mHasDaynotePackage:Z

.field private mHasFakeMenuKeyBack:Z

.field private mHasFakeMenuKeyRecent:Z

.field mHasFlashAnnotateComponent:Z

.field mHideLockScreenByCover:Z

.field mHideSViewCover:I

.field mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private mInputMethod:Landroid/view/WindowManagerPolicy$WindowState;

.field mIsCheckDrivingMode:Z

.field mIsDockHomeEnabled:Z

.field mIsEasyModeEnabled:Z

.field mIsEnabledAccessControl:Z

.field private mIsGearVrDocked:Z

.field mIsMetaKeyConsumed:Z

.field private mIsQDSetting:Z

.field private mIsRingingOrOffhook:Z

.field mIsSafetyAssuranceEnabled:Z

.field mIsSupportFlipCover:Z

.field mIsSupportSViewCover:Z

.field mIsUseAccessControl:Z

.field private mIsWakekey:Z

.field private mIsWakeupPrevention:Z

.field mKHandler:Landroid/os/Handler;

.field private mKeyEventInjectionThread:Ljava/lang/Thread;

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field mKillProcess:Ljava/lang/Runnable;

.field private mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

.field mLastCoverAppCovered:Z

.field private mLastNavigationBarIconColor:I

.field final mLock:Ljava/lang/Object;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTaskModeState:I

.field mLowPowerMode:Z

.field private mMateService:Lcom/samsung/android/mateservice/IMateService;

.field private mMenuConsumed:Z

.field private mMobileKeyboardAlertToast:Landroid/widget/Toast;

.field public mMobileKeyboardEnabled:Z

.field private mMobileKeyboardHeight:I

.field private mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

.field private mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

.field mNaviBarForceTouchManager:Lcom/android/server/policy/NaviBarForceTouchManager;

.field private mNavigationBarCustomHeight:I

.field private mNavigationBarHeight:I

.field private mNeedTriggerQD:Z

.field mNetworkSelectionLongPress:Z

.field mOriginalDockBottom:I

.field mOriginalDockLeft:I

.field mOriginalDockRight:I

.field mOriginalDockTop:I

.field mOriginalStableBottom:I

.field mOriginalStableFullscreenBottom:I

.field mOriginalStableFullscreenLeft:I

.field mOriginalStableFullscreenRight:I

.field mOriginalStableFullscreenTop:I

.field mOriginalStableLeft:I

.field mOriginalStableRight:I

.field mOriginalStableTop:I

.field mOriginalSystemBottom:I

.field mOriginalSystemLeft:I

.field mOriginalSystemRight:I

.field mOriginalSystemTop:I

.field mOriginalUnrestrictedScreenHeight:I

.field mOriginalUnrestrictedScreenLeft:I

.field mOriginalUnrestrictedScreenTop:I

.field mOriginalUnrestrictedScreenWidth:I

.field mOutdoorModeSetting:Z

.field mPWM:Lcom/android/server/policy/PhoneWindowManager;

.field mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field mPenInsertedIntent:Landroid/content/Intent;

.field mPenInsertedIntentUserSwitch:Landroid/content/Intent;

.field mPenNotifyVibrationChecked:Z

.field mPenState:I

.field mPerformEditAfterScreenCapture:Z

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

.field mPowerDoubleBehavior:Z

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mPowerSave:Z

.field mPowerSaveChangeReceiver:Landroid/content/BroadcastReceiver;

.field mPremiumWatchReceiver:Landroid/content/BroadcastReceiver;

.field private mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

.field private mProKioskReEnableVolumeUpKey:Z

.field private mRecentConsumed:Z

.field private mRecentKill:I

.field mReconfigureDebugReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoveFromRecent:I

.field mRingtone:Landroid/media/Ringtone;

.field private final mRotationForQuickAccess:Ljava/lang/Runnable;

.field mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

.field private mSFinderLaunchPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;

.field mSViewCoverDockBottom:I

.field mSViewCoverDockLeft:I

.field mSViewCoverDockRight:I

.field mSViewCoverDockTop:I

.field mSViewCoverStableBottom:I

.field mSViewCoverStableFullscreenBottom:I

.field mSViewCoverStableFullscreenLeft:I

.field mSViewCoverStableFullscreenRight:I

.field mSViewCoverStableFullscreenTop:I

.field mSViewCoverStableLeft:I

.field mSViewCoverStableRight:I

.field mSViewCoverStableTop:I

.field mSViewCoverSystemBottom:I

.field mSViewCoverSystemLeft:I

.field mSViewCoverSystemRight:I

.field mSViewCoverSystemTop:I

.field mSViewCoverUnrestrictedScreenHeight:I

.field mSViewCoverUnrestrictedScreenLeft:I

.field mSViewCoverUnrestrictedScreenTop:I

.field mSViewCoverUnrestrictedScreenWidth:I

.field mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

.field private mSafeModeReason:Ljava/lang/String;

.field final mScreenshotLock:Ljava/lang/Object;

.field mSecondLcdLastRotation:I

.field mSecondLcdUserRotationMode:I

.field final mServiceAquireLock:Ljava/lang/Object;

.field mServiceConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ServiceConnection;",
            "Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;",
            ">;"
        }
    .end annotation
.end field

.field mSettingsObserver:Lcom/android/server/policy/SamsungPhoneWindowManager$SettingsObserver;

.field mShowingSViewCover:Z

.field mSideSyncSourcePresentationActived:Z

.field private mSupportedCPUFreqTable:[I

.field mSweepDirection:I

.field mSweepReceiver:Landroid/content/BroadcastReceiver;

.field mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field mTorchlightEnabled:Z

.field mTorchlightOn:Z

.field mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mTurnOffTorchlight:Ljava/lang/Runnable;

.field private mUserKeyConsumed:Z

.field mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field mVibrator:Landroid/os/Vibrator;

.field mVoiceCommandIntent:Landroid/content/Intent;

.field mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mVolumeDownLongPress:Ljava/lang/Runnable;

.field private final mVolumeUpLongPress:Ljava/lang/Runnable;

.field mWakeSPenSetting:Z

.field private mWakeupPreventionObserver:Lcom/android/server/policy/SamsungPhoneWindowManager$WakeupPreventionObserver;

.field private mWakeupPreventionPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mWatchLaunching:Z

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/SamsungPhoneWindowManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyCurTime:J

    return-wide v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/SamsungPhoneWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandEnabled:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/SamsungPhoneWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandTriggerType:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/SamsungPhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/SamsungPhoneWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastNavigationBarIconColor:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/SamsungPhoneWindowManager;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardAlertToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic -get7()Lcom/samsung/android/os/SemDvfsManager;
    .locals 1

    sget-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    return-object v0
.end method

.method static synthetic -get8()Lcom/samsung/android/os/SemDvfsManager;
    .locals 1

    sget-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->bIsTorchOn:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyTriggered:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/policy/SamsungPhoneWindowManager;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandEnabled:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandTriggerType:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrDocked:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/policy/SamsungPhoneWindowManager;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardAlertToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/SamsungPhoneWindowManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSpenInboxModel()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/SamsungPhoneWindowManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isUsingSound()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/SamsungPhoneWindowManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->TorchModeFlashSet(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/SamsungPhoneWindowManager;JZI)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->endCallPress(JZI)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->finishEndCallKeyPress()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->handleTorchKey()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->initCameraManager()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->setPowerSave(Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->updatePowerSave()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    sput-boolean v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsTablet:Z

    const-string/jumbo v0, "ro.build.characteristics"

    const-string/jumbo v1, "phone"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsTablet:Z

    const-string/jumbo v0, "ro.product.name"

    const-string/jumbo v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mModelName:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isJapanModel()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsJapanModel:Z

    sput-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    sput v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCurrentUser:I

    sput-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    sput-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKill:I

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRecentKill:I

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRemoveFromRecent:I

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleted:Z

    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenState:I

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapHomeUser:I

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableDoublTapOnHomeCommand:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDirectAccessBehavior:I

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSweepDirection:I

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCapturedDisplay:I

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCapturedOrigin:I

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverNoteEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNetworkSelectionLongPress:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightOn:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderSoundEnable:Z

    const-string/jumbo v0, "UNKNOWN"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderOpenSound:Ljava/lang/String;

    const-string/jumbo v0, "UNKNOWN"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderCloseSound:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFakeMenuKeyRecent:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_STATUS:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_CAMERA:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_SAMSUNGPAY:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_FORCE_PRESS:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_FORCE_RELEASE:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_SUBSCREEN_WAKEUP:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_CHANGE_AOD_MODE:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_AOD_PRESS:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_AOD_LONGPROESS:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_AOD_DOUBLETAB:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_AOD_FORCE_PRESS:I

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLowPowerMode:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->bIsTorchOn:Z

    const-string/jumbo v0, "com.nttdocomo.android.mascot"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDcmAppPkg:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdUserRotationMode:I

    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdLastRotation:I

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarOnBottom:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNeedTriggerQD:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsQDSetting:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsWakekey:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWatchLaunching:Z

    const-string/jumbo v0, "com.samsung.ssrm.RESOLUTION_CHANGED"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->ACTION_RESOLUTION_CHANGED:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceStatusBarFromSViewCover:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShowingSViewCover:Z

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCover:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportFlipCover:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportSViewCover:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideLockScreenByCover:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastCoverAppCovered:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardEnabled:Z

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastNavigationBarIconColor:I

    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarCustomHeight:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppsShowWhenLocked:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceUserActivityTimeoutWin:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyTriggered:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyCurTime:J

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDisplayEnabled:Z

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$1;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyPress:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMateService:Lcom/samsung/android/mateservice/IMateService;

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrDocked:Z

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$2;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSweepReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$3;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$4;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$5;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$6;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$7;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerSaveChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$8;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMenuConsumed:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRecentConsumed:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserKeyConsumed:Z

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->MAX_SCREENSHOT_CONNECTION:I

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$9;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$10;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$11;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$12;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$13;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRotationForQuickAccess:Ljava/lang/Runnable;

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockTaskModeState:I

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSafeModeReason:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$14;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$14;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPremiumWatchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$15;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$15;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$16;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$16;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$17;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$17;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$18;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$18;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$19;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$19;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mReconfigureDebugReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$KillApp;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$KillApp;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKillProcess:Ljava/lang/Runnable;

    return-void
.end method

.method private TorchModeFlashSet(I)V
    .locals 8

    const/4 v7, 0x0

    sget-boolean v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Torch Time Out ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const/4 v2, 0x0

    if-lez p1, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightOn:Z

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    int-to-long v6, p1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo v1, "1"

    :goto_0
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string/jumbo v4, "/sys/class/camera/flash/rear_flash"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iput-boolean v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightOn:Z

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string/jumbo v1, "0"

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_2
    :try_start_3
    const-string/jumbo v4, "SamsungPhoneWindowManager"

    const-string/jumbo v5, "exception occurred. /sys/class/camera/flash/rear_flash"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_3
    return-void

    :catch_2
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_5
    throw v4

    :catch_3
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v4

    move-object v2, v3

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method

.method private checkTriggerQD(Z)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsQDSetting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNeedTriggerQD:Z

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNeedTriggerQD:Z

    return v0

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNeedTriggerQD:Z

    goto :goto_0
.end method

.method private endCallPress(JZI)V
    .locals 3

    const/4 v1, 0x2

    if-ne p4, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x3

    if-ne p4, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBeganFromNonInteractiveEndCall:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "security.ode.encrypting"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isRingingOrOffhook()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/policy/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_0
.end method

.method private finishEndCallKeyPress()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBeganFromNonInteractiveEndCall:Z

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEndCallKeyPressCounter:I

    return-void
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/4 v9, 0x0

    sget-object v5, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v3, v5

    sget-object v7, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v7, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v9
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getLidControlsSleep()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "isMirrorLinkEnabled : LidControlsSleep is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized getMateService()Lcom/samsung/android/mateservice/IMateService;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMateService:Lcom/samsung/android/mateservice/IMateService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "mate_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mateservice/IMateService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mateservice/IMateService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMateService:Lcom/samsung/android/mateservice/IMateService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMateService:Lcom/samsung/android/mateservice/IMateService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private getTimeoutTimeOfKeyCombination(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/CombinationKeyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/CombinationKeyManager;->getTimeoutTimeOfKeyCombination(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private handleTorchKey()V
    .locals 4

    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->initCameraManager()V

    :cond_1
    :try_start_0
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Torch light bIsTorchOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->bIsTorchOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mCameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    sget-object v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->bIsTorchOn:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t initialize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleUserKey(Z)Z
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportBCM()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v8}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getModeType()I

    move-result v3

    sget-boolean v8, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "SamsungPhoneWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "now mode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "flag"

    const/16 v9, 0x800

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v8, -0x1

    if-ne v3, v8, :cond_2

    const-string/jumbo v8, "enabled"

    invoke-virtual {v0, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v0, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return v12

    :cond_2
    if-ne v3, v13, :cond_1

    const-string/jumbo v8, "enabled"

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "long_press_app"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_4

    const/16 v8, 0x2f

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_4
    :goto_2
    sget-boolean v8, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v8, :cond_5

    const-string/jumbo v8, "SamsungPhoneWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Found pkg="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", cls="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " longPress = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string/jumbo v8, "torch"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string/jumbo v8, "torch"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string/jumbo v8, "service.camera.running"

    const-string/jumbo v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->checkLaunchSetting()I

    move-result v8

    if-eqz v8, :cond_6

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->handleTorchKey()V

    const/4 v7, 0x1

    :cond_6
    :goto_3
    return v7

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportBCM()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v8}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getModeType()I

    move-result v8

    if-ne v8, v13, :cond_8

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "short_press_app_battery_conserve"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_8
    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "short_press_app"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v8, "SamsungPhoneWindowManager"

    const-string/jumbo v9, "Invalid user key app defined"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_9
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->handleTorchKey()V

    const/4 v7, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportBCM()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportActiveDouble()Z

    move-result v8

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyTriggered:Z

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyguardLw()V

    goto :goto_3
.end method

.method private initCameraManager()V
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "camera"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    sput-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    :cond_0
    sget-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v2, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getCameraId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    :goto_0
    sget-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "Couldn\'t initialize."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sput-object v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v2

    sput-object v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    throw v2

    :cond_2
    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "camera service is not availabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private initHomeBoost()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "HOME_BOOSTER"

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSupportedCPUFreqTable:[I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSupportedCPUFreqTable:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    const-wide v2, 0x3fe6666666666666L    # 0.7

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(D)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_0
    return-void
.end method

.method private injectionKeyEvent(IZ)V
    .locals 3

    const/16 v0, 0x52

    if-ne v0, p1, :cond_0

    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKill:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->diKillApp()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/SamsungPhoneWindowManager$25;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager$25;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    return-void
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    return v2
.end method

.method private isBackKeyConsumed()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private isBuiltInKeyboardVisible()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isCarModeBarVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isDefaultLauncher(Ljava/lang/String;)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.HOME"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    const-string/jumbo v7, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isDefaultLauncher :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    move v6, v5

    :cond_0
    return v6

    :cond_1
    move v4, v6

    goto :goto_0
.end method

.method private isHardwareKeyAllowed(IZ)Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    const-string/jumbo v3, "kioskmode"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, p2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isHardwareKeyAllowed(Lcom/samsung/android/knox/ContextInfo;IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "Exception while getting kiosk mode service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isJapanModel()Z
    .locals 3

    const-string/jumbo v1, ""

    :try_start_0
    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    const-string/jumbo v2, "DCM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "KDI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "XJP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "SBM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isKnoxCreatingOnTop()Z
    .locals 7

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    sget-boolean v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SemPersonaState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v5

    aget v6, v1, v0

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->getState()Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    aget v4, v1, v0

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/knox/SemPersonaState;->CREATING:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->inState(Lcom/samsung/android/knox/SemPersonaState;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isKnoxSetupWizardTopActivity()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    :cond_1
    sget-boolean v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isKnoxCreatingOnTop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isKnoxKeyguardShowing()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "KnoxKeyguard is showing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isKnoxSetupWizardTopActivity()Z
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.sec.knox.knoxsetupwizardclient"

    const-string/jumbo v4, "com.sec.knox.knoxsetupwizardclient.SetupWizardKnoxNameSettingActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.knox.securefolder.setupwizard"

    const-string/jumbo v4, "com.samsung.knox.securefolder.setupwizard.SetupWizardKnoxNameSettingActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v3}, Lcom/android/server/policy/SystemKeyManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v3}, Lcom/android/server/policy/SystemKeyManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    sget-boolean v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCurrentTopActivity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v5}, Lcom/android/server/policy/SystemKeyManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isKnoxSetupWizardTopActivity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

.method private isPreloadInstallComplete()Z
    .locals 4

    const-string/jumbo v1, "persist.sys.storage_preload"

    const-string/jumbo v2, "2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPreloadInstallComplete = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isScreenCaptureEnabled()Z
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    const-string/jumbo v4, "restriction_policy"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabledEx(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string/jumbo v4, "persona"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PersonaManagerService;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/server/pm/PersonaManagerService;->isKnoxMultiWindowExist()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "SamsungPhoneWindowManager"

    const-string/jumbo v5, "KnoxMultiwindowExists. isScreenCaptureEnabled() returns false"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const v6, 0x10409f2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return v7

    :cond_2
    const-string/jumbo v4, "SamsungPhoneWindowManager"

    const-string/jumbo v5, "mEDM.getRestrictionPolicy().isScreenCaptureEnabled() return false"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v7

    :cond_3
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isSpenInboxModel()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    rem-int/lit8 v3, v0, 0xa

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "spen inbox model"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2
.end method

.method private isStubPTTApp()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.kodiak.intent.action.PTT_BUTTON"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.bell.ptt"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isSupportAndAttachedSViewCover()Z
    .locals 3

    const/4 v1, 0x3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportSViewCover:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->model:I

    if-eq v0, v1, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isUserKeyConsumed()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserKeyConsumed:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserKeyConsumed:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private isUsingSound()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->semIsFmRadioActive()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->semIsVoiceCallActive()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isWatchRunning()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isWatchRunning "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "com.sec.android.app.premiumwatch"

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v7

    :cond_0
    return v6
.end method

.method private playSound(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->stop()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4, v7}, Landroid/media/Ringtone;->setStreamType(I)V

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->play()V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Fail to stop Ringtone - already done : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "SamsungPhoneWindowManager"

    const-string/jumbo v5, "There are no ringtones"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "SamsungPhoneWindowManager"

    const-string/jumbo v5, "AudioManager loading fail"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private playSoundEffect()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "trigger_restart_min_framework"

    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "keyguard - disable key sound"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->playSoundEffect(II)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Couldn\'t get audio manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private rotationForSecondLcdOrientationLw(II)I
    .locals 10

    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v7, 0x2

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v4, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "2nd LCD, rotationForSecondLcdOrientationLw(orient="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", last="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "); user="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdUserRotationMode:I

    if-ne v2, v6, :cond_0

    const-string/jumbo v2, "USER_ROTATION_LOCKED"

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " sensorRotation="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdLastRotation:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v1

    const/16 v2, 0xe

    if-ne p1, v2, :cond_1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdLastRotation:I

    :goto_1
    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdLastRotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return v0

    :cond_0
    :try_start_1
    const-string/jumbo v2, ""

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdUserRotationMode:I

    if-nez v2, :cond_5

    if-eq p1, v7, :cond_2

    const/4 v2, -0x1

    if-ne p1, v2, :cond_4

    :cond_2
    if-ne v1, v7, :cond_3

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    if-ne v2, v6, :cond_6

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    const/16 v2, 0xb

    if-eq p1, v2, :cond_2

    const/16 v2, 0xc

    if-eq p1, v2, :cond_2

    if-eq p1, v9, :cond_2

    :cond_5
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    if-eq p1, v8, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    const/4 v2, 0x7

    if-eq p1, v2, :cond_2

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdUserRotationMode:I

    if-ne v2, v6, :cond_7

    const/4 v2, 0x5

    if-eq p1, v2, :cond_7

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    goto :goto_1

    :cond_6
    if-eq p1, v8, :cond_3

    if-eq p1, v9, :cond_3

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdLastRotation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_7
    const/4 v0, -0x1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private setKnoxDesktopTaskBar(Z)V
    .locals 12

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_1

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v7, v9, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v8, v7, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/samsung/android/framework/res/R$dimen;->task_bar_height:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v11, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v11, v11, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v9, v10, v11

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v11, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v11, v11, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    aput v9, v10, v11

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v11, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v11, v11, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v9, v10, v11

    aput v9, v7, v8

    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    invoke-interface {v5, p1, v7}, Lcom/android/internal/statusbar/IStatusBarService;->setKnoxDesktopTaskBar(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9, v8}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v9, v10}, Lcom/android/server/policy/PhoneWindowManager;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    :cond_2
    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x112006a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, v9, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v6, v2, :cond_3

    move v3, v6

    :goto_2
    mul-int/lit16 v9, v3, 0xa0

    iget v10, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int v4, v9, v10

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    if-eq v6, v2, :cond_4

    const/16 v10, 0x258

    if-ge v4, v10, :cond_4

    :goto_3
    iput-boolean v7, v9, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050018

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v11, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v11, v11, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v9, v10, v11

    aput v9, v7, v8

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050019

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v11, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v11, v11, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v9, v10, v11

    aput v9, v7, v8

    goto/16 :goto_0

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move v7, v8

    goto :goto_3

    :catch_0
    move-exception v1

    const-string/jumbo v7, "SamsungPhoneWindowManager"

    const-string/jumbo v8, "RemoteException when setKnoxDesktopTaskBar"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method private setPowerSave(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerSave:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerSave:Z

    return-void
.end method

.method private shouldPassEventForPTT(Landroid/view/KeyEvent;)Z
    .locals 3

    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldPassEventForPTT Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "BMC"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "com.bell.ptt"

    invoke-direct {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isStubPTTApp()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private startCustomApp()Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    if-nez v7, :cond_0

    const-string/jumbo v7, "SamsungPhoneWindowManager"

    const-string/jumbo v8, "mKnoxCustomSystemManager null"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_0
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v7}, Lcom/samsung/android/knox/custom/SystemManager;->getRecentLongPressMode()I

    move-result v3

    if-nez v3, :cond_1

    return v10

    :cond_1
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-ne v3, v11, :cond_2

    invoke-direct {p0, v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDefaultLauncher(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v7}, Lcom/samsung/android/knox/custom/SystemManager;->getRecentLongPressActivity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_3
    const-string/jumbo v7, "SamsungPhoneWindowManager"

    const-string/jumbo v8, "appToStart null"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_4
    const-string/jumbo v7, "SamsungPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Foreground taskName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_5
    const-string/jumbo v7, "SamsungPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "starting custom app : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v8}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return v11

    :catch_0
    move-exception v2

    const-string/jumbo v7, "SamsungPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startCustomApp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method

.method private startSGA(Ljava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "SGA is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-boolean v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "no Launch intent of SGA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateMySettings()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "remove_killed_apps_from_recents"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRemoveFromRecent:I

    const-string/jumbo v1, "back_key"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKill:I

    const-string/jumbo v1, "recent_key"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRecentKill:I

    return-void
.end method

.method private updateNavigationBarIconColorLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 2

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private updatePowerSave()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->setPowerSave(Z)V

    return-void
.end method

.method private updateWakeupPreventionPackages(Ljava/lang/String;)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    if-eqz p1, :cond_0

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateWakeupPreventionPackages = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    array-length v0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public adjustConfigurationLw(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_button_background"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->showButtonBackground:I

    return-void

    :cond_0
    iput v2, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    goto :goto_0
.end method

.method public applyForceUserActivityTimeoutWin(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    const-wide/16 v2, 0x0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-wide v0, p2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceUserActivityTimeoutWin:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x146a

    iput-wide v0, p2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    :cond_0
    return-void
.end method

.method public applyLidSwitchState()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isBuiltInKeyboardVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setKeyboardVisibility(Z)V

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "applyLidSwitchState isRunningFactoryApp() = true. ignore it."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getLidControlsSleep()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isPreloadInstallComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;Z)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v3, v3, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v3, :cond_3

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p4, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/view/IWindowStateBridge;->isOnScreen()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppsShowWhenLocked:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFakeFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v3, :cond_2

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFakeFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_2
    return-void

    :cond_3
    iput-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideLockScreenByCover:Z

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v3, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/view/IWindowStateBridge;->getCoverMode()I

    move-result v2

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v3, v5, :cond_5

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_5

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    const/4 v1, 0x1

    :goto_2
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    if-eqz v1, :cond_0

    if-ne v2, v5, :cond_7

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCover:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    iget v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCover:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iget-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShowingSViewCover:Z

    iput-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceStatusBarFromSViewCover:Z

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Hide sview cover : mHideSViewCover ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCover:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", SViewCoverWindow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v7, :cond_6

    if-eqz v2, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    if-ne v2, v6, :cond_8

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/view/IWindowStateBridge;->willBeHideSViewCoverOnce()Z

    move-result v3

    if-eqz v3, :cond_4

    iput v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCover:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v7, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppsShowWhenLocked:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public beginCoverLayoutLw(III)V
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v11, v1, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    move/from16 v26, v0

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v26}, Lcom/android/server/policy/SamsungPhoneWindowManager;->prepareSViewCoverLayout(IIIIIIIIIIIIIIIIIIIIIIIII)V

    return-void
.end method

.method public beginLayoutLw(IIII)V
    .locals 13

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardEnabled:Z

    if-eqz v1, :cond_0

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-ge p1, p2, :cond_4

    iget v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v11, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    sub-int/2addr v2, v12

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    sub-int/2addr v2, v10

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    sub-int/2addr v2, v11

    sub-int/2addr v2, v12

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    sub-int/2addr v2, v10

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    add-int/2addr v2, v11

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    sub-int/2addr v2, v12

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    sub-int/2addr v2, v10

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/view/IWindowStateBridge;->getDisplayId()I

    move-result v1

    move/from16 v0, p4

    if-ne v1, v0, :cond_2

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "beginLayoutLw mCarModeBar = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarOnBottom:Z

    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int v2, p2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeBarVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarOnBottom:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    iget v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    :goto_2
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarOnBottom:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iget v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    sget-object v8, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-interface/range {v1 .. v9}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    move/from16 v0, p3

    invoke-virtual {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarHeight:I

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x3

    move/from16 v0, p3

    if-ne v0, v1, :cond_5

    iget v11, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    goto/16 :goto_0

    :cond_5
    iget v12, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    goto/16 :goto_0

    :pswitch_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarOnBottom:Z

    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    iget v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public beginPostLayoutPolicyLw(II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppsShowWhenLocked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceStatusBarFromSViewCover:Z

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShowingSViewCover:Z

    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCover:I

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideLockScreenByCover:Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWatchLaunching:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    :cond_1
    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFakeFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastCoverAppCovered:Z

    goto :goto_0
.end method

.method public broadcastHardKeyIntent(Landroid/view/KeyEvent;)V
    .locals 5

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/ProKioskManager;->getHardKeyIntentState()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_0

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.knox.intent.action.HARD_KEY_PRESS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.KEY_CODE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.sec.action.HARD_KEY_PRESS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.sec.intent.extra.KEY_CODE"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x52 -> :sswitch_0
        0xbb -> :sswitch_0
    .end sparse-switch
.end method

.method public callAccessibilityScreenCurtain()V
    .locals 4

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "callAccessibilityScreenCurtain() is called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ADPD"

    const-string/jumbo v3, "PowerKey DoubleClick"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->semToggleDarkScreenMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public callAccessibilityTalkbackMode()V
    .locals 4

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "callAccessibilityTalkbackMode() is called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->setTalkbackMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public canBeForceHiddenBySViewCover(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/view/IWindowStateBridge;->getCoverMode()I

    move-result v0

    if-nez v0, :cond_1

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v3, :sswitch_data_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v5, 0x7d0

    invoke-virtual {v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v4

    if-ge v3, v4, :cond_4

    :goto_0
    return v1

    :sswitch_0
    return v2

    :sswitch_1
    return v1

    :cond_1
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCover:I

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/view/IWindowStateBridge;->willBeHideSViewCoverOnce()Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_3
    if-ne v0, v1, :cond_0

    return v2

    :cond_4
    move v1, v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7d4 -> :sswitch_0
        0x7d5 -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x833 -> :sswitch_0
        0x8ac -> :sswitch_0
        0x8ad -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7d9 -> :sswitch_1
        0x8b2 -> :sswitch_1
        0x8de -> :sswitch_1
        0x8df -> :sswitch_1
    .end sparse-switch
.end method

.method public changeAppOpsMode(IILjava/lang/String;)I
    .locals 7

    const/4 v1, 0x3

    const-string/jumbo v4, "com.nttdocomo.android.mascot"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, p2, p3, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    const-string/jumbo v4, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mode change : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v4, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception occured for AppOpsManager "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public changeNavigationBarHeight(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isKnoxDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardEnabled:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_CUSTOM_HEIGHT:Z

    if-eqz v0, :cond_2

    iput p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarCustomHeight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput p1, v2, v3

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    aput p1, v2, v3

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput p1, v2, v3

    aput p1, v0, v1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput p1, v2, v3

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    aput p1, v2, v3

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput p1, v2, v3

    aput p1, v0, v1

    :cond_2
    return-void
.end method

.method public checkLaunchSetting()I
    .locals 4

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "active_key_on_lockscreen"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkLaunchSetting state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public completeToggleSplitScreen()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->completeToggleSplitScreen()V

    return-void
.end method

.method public diKillApp()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKillProcess:Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public downloadForSGA(Ljava/lang/String;)V
    .locals 4

    sget-boolean v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "try download SGA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v2, 0x30000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "Samsung apps is not installed. so you are moving to Samsung apps download page."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->downloadForSamsungApps()V

    goto :goto_0
.end method

.method public downloadForSamsungApps()V
    .locals 5

    sget-boolean v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "try download SamsungApps"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v2, "http://apps.samsung.com/mw/apk_en.as"

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x30000020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "There is not browsable apps for samsungapps download"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "--- Samsung Window Policy ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSafeModeReason="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSafeModeReason:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFakeFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFakeFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFakeFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPenState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPerformEditAfterScreenCapture="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mHasFlashAnnotateComponent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsSafetyAssuranceEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mIsUseAccessControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mIsEnabledAccessControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, " mIsEasyModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mIsDockHomeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDoubleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mAvailableDoublTapOnHomeCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableDoublTapOnHomeCommand:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "mDoubleTapHomeUser="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapHomeUser:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mComponentNameOfDoubleTapOnHomeCommandIntent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDirectAccessBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDirectAccessBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mAvailableVoiceCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHasFakeMenuKeyRecent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFakeMenuKeyRecent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mHasFakeMenuKeyBack="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSideSyncSourcePresentationActived="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsGearVrDocked="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrDocked:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsWakeupPrevention="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWakeupPreventionPackages="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/CombinationKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/CombinationKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/SystemKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/policy/SamsungPolicyProperties;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCoverCloseRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverCloseRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsSupportFlipCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportFlipCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsSupportSViewCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportSViewCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHideSViewCoverWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "OriginalmUnrestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOriginalStableFullscreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOriginalStable=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOriginalSystem=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOriginalDock=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSViewCoverUnrestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSViewCoverStableFullscreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSViewCoverStable=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSViewCoverSystem=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSViewCoverDock=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mMobileKeyboardEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public endCallByGamekey()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public finishPostLayoutPolicyLw(I)I
    .locals 6

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "finishPostLayoutPolicyLw: mHideSViewCover="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCover:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCover:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v3, v3, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v4, 0xff

    if-eq v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isRingingOrOffhook()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isTphoneRelaxMode()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastCoverAppCovered:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/samsung/android/cover/ICoverManager;->onCoverAppCovered(Z)I

    move-result v2

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastCoverAppCovered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->processSViewCoverSetHiddenResultLw(I)Z

    move-result v3

    if-eqz v3, :cond_3

    or-int/lit8 p1, p1, 0x1

    :cond_3
    :goto_1
    return p1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastCoverAppCovered:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/samsung/android/cover/ICoverManager;->onCoverAppCovered(Z)I

    move-result v2

    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastCoverAppCovered:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->processSViewCoverSetHiddenResultLw(I)Z

    move-result v3

    if-eqz v3, :cond_3

    or-int/lit8 p1, p1, 0x1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public finishScreenTurningOn()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getTspStateManagerPolicy()Lcom/android/server/policy/TspStateManagerPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0, v1, v2}, Lcom/android/server/policy/TspStateManagerPolicy;->updateWindowPolicy(Landroid/view/WindowManagerPolicy$WindowState;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public focusChangedLw()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/SystemKeyManager;->updateFocusedWindow(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getTspStateManagerPolicy()Lcom/android/server/policy/TspStateManagerPolicy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1, v2, v3}, Lcom/android/server/policy/TspStateManagerPolicy;->updateWindowPolicy(Landroid/view/WindowManagerPolicy$WindowState;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAppsShowWhenLockedLw()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/IApplicationToken;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppsShowWhenLocked:Ljava/util/ArrayList;

    return-object v0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 3

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public declared-synchronized getCoverManager()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getCoverStateSwitch()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getCustomBootMsgDialog()Lcom/samsung/android/app/CustomBootMsgDialog;
    .locals 4

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    new-instance v0, Lcom/samsung/android/app/CustomBootMsgDialog;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->isUpgrade()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x10403b9

    :goto_1
    invoke-direct {v0, v3, v2}, Lcom/samsung/android/app/CustomBootMsgDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/samsung/android/app/CustomBootMsgDialog;->show()V

    return-object v0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const v2, 0x10403ba

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHideSViewCover()I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCover:I

    return v0
.end method

.method public getHideSViewCoverWindowState()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method public getNavigationBarCustomHeight()I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarCustomHeight:I

    return v0
.end method

.method public getNonDecorDisplayHeight(III)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardEnabled:Z

    if-eqz v0, :cond_0

    if-ge p1, p2, :cond_0

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    sub-int/2addr p2, v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeBarVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/view/IWindowStateBridge;->getDisplayId()I

    move-result v0

    if-ne v0, p3, :cond_1

    if-ge p1, p2, :cond_1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr p2, v0

    :cond_1
    return p2
.end method

.method public getNonDecorDisplayWidth(III)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardEnabled:Z

    if-eqz v0, :cond_0

    if-le p1, p2, :cond_0

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    sub-int/2addr p1, v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeBarVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/view/IWindowStateBridge;->getDisplayId()I

    move-result v0

    if-ne v0, p3, :cond_1

    if-le p1, p2, :cond_1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr p1, v0

    :cond_1
    return p1
.end method

.method public getProKioskManager()Lcom/samsung/android/knox/custom/ProKioskManager;
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    return-object v0
.end method

.method public getRemoveFromRecent()I
    .locals 2

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRemoveFromRecent:I

    return v0
.end method

.method public getSViewCoverHeight(Landroid/view/DisplayInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    return v0

    :cond_0
    iget v0, p1, Landroid/view/DisplayInfo;->appHeight:I

    return v0
.end method

.method public getSViewCoverWidth(Landroid/view/DisplayInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    return v0

    :cond_0
    iget v0, p1, Landroid/view/DisplayInfo;->appWidth:I

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public handleLongPressOnHome()Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isScreenOffOnLongPressHome()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Home longpress block in KNOX"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Home longpress block in ProKiosk Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3

    :cond_3
    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Home longpress block when Verizon Setup Wizard Running"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Home longpress block in Ringing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v3

    :cond_6
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Home longpress block in emergency & upsm mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_7
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEnableAccessControl(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Home longpress blocked by Interaction control"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_8
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Home longpress block in UserSetup not complete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_9
    const/4 v1, 0x0

    return v1
.end method

.method public handleLongPressOnMenu()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMenuConsumed:Z

    invoke-virtual {p0, v2, v1, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    return-void
.end method

.method public handleLongPressOnRecent()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isRecentAppStart()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRecentConsumed:Z

    return v6

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v6

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    iput-boolean v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRecentConsumed:Z

    iget v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRecentKill:I

    if-eqz v3, :cond_2

    if-ne v3, v6, :cond_4

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->diKillApp()V

    return v6

    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "db_split_screen_view_shortcut"

    const/4 v5, -0x2

    invoke-static {v3, v4, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v6, :cond_5

    const/4 v2, 0x1

    :goto_1
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_3

    if-eqz v2, :cond_6

    :cond_3
    return v7

    :cond_4
    const/16 v2, 0x52

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->injectionKeyEvent(IZ)V

    return v6

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    return v6
.end method

.method public handleLongPressOnStar()V
    .locals 5

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v3, "reason"

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.applicationshortcut"

    const-string/jumbo v3, "com.sec.android.applicationshortcut.MainviewActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v1, :cond_0

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launch applicationshortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "No activity to launch applicationshortcut."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public hasCustomDoubleTapHomeCommand()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ignorePowerKeyInEncrypting()Z
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "vold.encrypt_progress"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    const/16 v3, 0x64

    if-ge v1, v3, :cond_0

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "Ignore Power Off Key!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error parsing progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return v6
.end method

.method public init(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput-object p3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    iput-object p4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    new-instance v0, Lcom/android/server/policy/CombinationKeyManager;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/policy/CombinationKeyManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/CombinationKeyManager;

    new-instance v0, Lcom/android/server/policy/SystemKeyManager;

    invoke-direct {v0, p2, p0}, Lcom/android/server/policy/SystemKeyManager;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "PhoneWindowManager.mTorchlightWakeLock"

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-boolean v0, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_IMMERSIVE_FORCE_TOUCH:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/policy/NaviBarForceTouchManager;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/policy/NaviBarForceTouchManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNaviBarForceTouchManager:Lcom/android/server/policy/NaviBarForceTouchManager;

    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "com.samsung.action.DEBUG_RECONFIGURE"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mReconfigureDebugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "com.samsung.android.motion.SWEEP_LEFT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.android.motion.SWEEP_RIGHT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.android.motion.SWEEP_DOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.android.motion.SWEEP_FULL_SCREEN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSweepReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v4, "com.samsung.permission.PALM_MOTION"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "com.samsung.android.capture.QuickPanelCapture"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.android.capture.DesktopCapture"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v4, "com.samsung.permission.CAPTURE"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerSaveChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->ACTION_RESOLUTION_CHANGED:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTIWINDOW_PHONE_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-static {v0, v7}, Lcom/android/server/SamsungCoreServices;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    sget-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTIWINDOW_MANAGER_INTERNAL:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-static {v0}, Lcom/android/server/SamsungCoreServices;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    new-instance v6, Landroid/content/IntentFilter;

    sget-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String;

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string/jumbo v1, "isThisComeFromHomeKeyDoubleClickConcept"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string/jumbo v1, "CHECK_SCHEDULE_ENABLED"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string/jumbo v1, "isQuickLaunchMode"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.action.SVOICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string/jumbo v1, "isThisComeFromHomeKeyDoubleClickConcept"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string/jumbo v1, "CHECK_SCHEDULE_ENABLED"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.pen.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.pen.INSERT.USER_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.flipfolder.OPEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.secretmode.action.REQ_SHOW_VISUAL_CUE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.secretmode.service"

    const-string/jumbo v4, "com.samsung.android.secretmode.service.SecretModeService"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v0, "com.sec.android.daynote"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "PhoneWindowManager.mVoiceWakeUpWakeLock"

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$20;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$20;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_2
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "com.sec.android.intent.action.PAUSE_WATCH"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.sec.android.intent.action.STOP_WATCH"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPremiumWatchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.findo"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    invoke-direct {v0, p0, v5}, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;)V

    move-object v5, v0

    :cond_3
    iput-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/SamsungPhoneWindowManager$SettingsObserver;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/SamsungPhoneWindowManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager$SettingsObserver;->observe()V

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$WakeupPreventionObserver;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager$WakeupPreventionObserver;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeupPreventionObserver:Lcom/android/server/policy/SamsungPhoneWindowManager$WakeupPreventionObserver;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeupPreventionObserver:Lcom/android/server/policy/SamsungPhoneWindowManager$WakeupPreventionObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager$WakeupPreventionObserver;->observe()V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->initHomeBoost()V

    iput v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverCloseRotation:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportFlipCover:Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportSViewCover:Z

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportFlipCover:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportSViewCover:Z

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mobile_keyboard"

    invoke-static {v0, v1, v8, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/SamsungPhoneWindowManager$30;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/SamsungPhoneWindowManager$30;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public interceptEndCallKey(Landroid/view/KeyEvent;ZZ)I
    .locals 12

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCombinationKeyTriggered()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    const/4 v7, 0x0

    return v7

    :cond_1
    iget v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEndCallKeyPressCounter:I

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    if-eqz p3, :cond_5

    if-eqz p2, :cond_4

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCombinationKeyTriggered()Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v10

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    const/4 v7, 0x0

    return v7

    :cond_4
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v4

    const/4 v7, 0x1

    if-le v4, v7, :cond_3

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBeganFromNonInteractiveEndCall:Z

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    if-nez v7, :cond_3

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->endCall()Z

    :cond_6
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v7

    if-eqz v7, :cond_9

    iget v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEndCallKeyPressCounter:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEndCallKeyPressCounter:I

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    iget v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEndCallKeyPressCounter:I

    if-ge v7, v4, :cond_8

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_7

    const/4 v7, 0x1

    :goto_1
    iget v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEndCallKeyPressCounter:I

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v8, v11, v7, v9, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v7, 0x0

    return v7

    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    :cond_8
    iget v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEndCallKeyPressCounter:I

    invoke-direct {p0, v2, v3, p2, v7}, Lcom/android/server/policy/SamsungPhoneWindowManager;->endCallPress(JZI)V

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->finishEndCallKeyPress()V

    goto/16 :goto_0

    :cond_9
    if-nez v0, :cond_3

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x0

    return v7

    :cond_a
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    if-nez v7, :cond_3

    if-nez v0, :cond_3

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/os/PowerManager;->goToSleep(JII)V

    const/4 v7, 0x1

    return v7
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v28

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v32

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v40

    if-nez v40, :cond_0

    const/4 v15, 0x1

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getTimeoutTimeOfKeyCombination(I)J

    move-result-wide v36

    cmp-long v40, v30, v36

    if-gez v40, :cond_1

    sub-long v40, v36, v30

    return-wide v40

    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    :cond_1
    const/16 v40, 0x19

    move/from16 v0, v27

    move/from16 v1, v40

    if-eq v0, v1, :cond_2

    const/16 v40, 0x18

    move/from16 v0, v27

    move/from16 v1, v40

    if-ne v0, v1, :cond_4

    :cond_2
    if-eqz v32, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v40, v0

    if-eqz v40, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v40

    if-eqz v40, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v40

    if-eqz v40, :cond_4

    sget-boolean v40, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v40, :cond_3

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "knox: volume key is blocked"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-wide/16 v40, -0x1

    return-wide v40

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/CombinationKeyManager;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/CombinationKeyManager;->isConsumedKeyCombination(Landroid/view/KeyEvent;)Z

    move-result v40

    if-eqz v40, :cond_5

    const-wide/16 v40, -0x1

    return-wide v40

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v40

    if-eqz v40, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z

    move-result v40

    if-eqz v40, :cond_7

    sget-boolean v40, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v40, :cond_6

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "interceptKeyTi : Key was blocked by sidesync."

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-wide/16 v40, -0x1

    return-wide v40

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWatchLaunching:Z

    move/from16 v40, v0

    if-eqz v40, :cond_8

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "Home key is blocked during watch is displayed"

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v40, -0x1

    return-wide v40

    :cond_8
    sget-boolean v40, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v40, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isUsingTaskPositioner()Z

    move-result v40

    if-eqz v40, :cond_9

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "TaskPositioner is used by moving or resizing a task."

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v40, -0x1

    return-wide v40

    :cond_9
    sparse-switch v27, :sswitch_data_0

    :cond_a
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v40

    if-eqz v40, :cond_61

    if-eqz p1, :cond_5f

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_60

    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v40, v0

    const/16 v41, 0x7d0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_60

    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v40, v0

    move/from16 v0, v40

    and-int/lit16 v0, v0, 0x400

    move/from16 v40, v0

    if-nez v40, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v40, v0

    const-string/jumbo v41, "reason"

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    const-wide/16 v40, 0x64

    return-wide v40

    :sswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNeedTriggerQD:Z

    move/from16 v40, v0

    if-eqz v40, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v40

    move/from16 v0, v40

    and-int/lit16 v0, v0, 0x80

    move/from16 v40, v0

    if-eqz v40, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultitapKeyManager:Lcom/android/server/policy/MultitapKeyPolicy;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lcom/android/server/policy/MultitapKeyPolicy;->isHomeConsumed()Z

    move-result v40

    if-nez v40, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v40, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/policy/PhoneWindowManager;->handleLongPressOnHome(I)V

    :cond_b
    const-wide/16 v40, -0x1

    return-wide v40

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsWakekey:Z

    move/from16 v40, v0

    if-eqz v40, :cond_d

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "Homekey is used as a wake key on quick dial status"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultitapKeyManager:Lcom/android/server/policy/MultitapKeyPolicy;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move-object/from16 v1, p2

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lcom/android/server/policy/MultitapKeyPolicy;->dispatchMultitapKeyEvent(Landroid/view/KeyEvent;Z)Z

    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsWakekey:Z

    const-wide/16 v40, -0x1

    return-wide v40

    :cond_d
    sget-boolean v40, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v40, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isKnoxDesktopMode()Z

    move-result v40

    if-eqz v40, :cond_e

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v40

    if-eqz v40, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v40

    if-eqz v40, :cond_f

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v40

    if-eqz v40, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v29

    if-eqz v29, :cond_12

    const/16 v24, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v40

    if-nez v40, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v40

    if-nez v40, :cond_11

    const/16 v40, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v24

    :goto_3
    if-nez v24, :cond_12

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "home key disabled by edm"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v40, -0x1

    return-wide v40

    :cond_f
    if-nez v15, :cond_10

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v40

    if-eqz v40, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->isFreeformWindow(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v40

    if-eqz v40, :cond_10

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMetaKeyConsumed:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    move-object/from16 v41, v0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v40

    check-cast v40, Landroid/os/IBinder;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->minimizeOtherFreeforms(Landroid/os/IBinder;)V

    :cond_10
    const-wide/16 v40, -0x1

    return-wide v40

    :cond_11
    const/16 v40, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v24

    goto :goto_3

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isChangeRequested()I

    move-result v40

    if-gtz v40, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getBootBanner()Lcom/samsung/android/knox/lockscreen/BootBanner;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/knox/lockscreen/BootBanner;->isDodBannerVisible()Z

    move-result v40

    if-eqz v40, :cond_14

    :cond_13
    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "home key disabled by either pwd policy OR DoD Banner"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v40, -0x1

    return-wide v40

    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isKnoxKeyguardShowing()Z

    move-result v40

    if-eqz v40, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    move/from16 v40, v0

    if-nez v40, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v40

    if-eqz v40, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v40

    if-eqz v40, :cond_17

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrDocked:Z

    move/from16 v40, v0

    if-eqz v40, :cond_19

    const-class v40, Lcom/android/server/vr/GearVrManagerInternal;

    invoke-static/range {v40 .. v40}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/vr/GearVrManagerInternal;

    if-eqz v38, :cond_18

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/vr/GearVrManagerInternal;->isHomeKeyBlocked()Z

    move-result v40

    if-eqz v40, :cond_19

    sget-boolean v40, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v40, :cond_16

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "Home Key is blocked by VR"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const-wide/16 v40, -0x1

    return-wide v40

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    new-instance v41, Landroid/content/Intent;

    const-string/jumbo v42, "com.samsung.knox.kss.KnoxKeyguardHomeButton"

    invoke-direct/range {v41 .. v42}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v42, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v40 .. v42}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-wide/16 v40, -0x1

    return-wide v40

    :cond_18
    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "HMT SamsungPhoneWindowManager failed"

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v40

    if-eqz v40, :cond_1a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v40

    if-eqz v40, :cond_1a

    const-wide/16 v40, -0x1

    return-wide v40

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v40

    if-eqz v40, :cond_1b

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "isMirrorLinkEnabled() true"

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v40, -0x1

    return-wide v40

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    move/from16 v40, v0

    if-eqz v40, :cond_1c

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "carmode true"

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v40, -0x1

    return-wide v40

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/policy/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_1d

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "Home key is blocked by policy"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v40, -0x1

    return-wide v40

    :cond_1d
    if-nez v15, :cond_1e

    :cond_1e
    if-nez v15, :cond_a

    goto/16 :goto_1

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v40, v0

    if-eqz v40, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v40

    if-eqz v40, :cond_20

    sget-boolean v40, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v40, :cond_1f

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "Recent key is blocked in ProKiosk mode"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const-wide/16 v40, -0x1

    return-wide v40

    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v40

    if-eqz v40, :cond_22

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isChangeRequested()I

    move-result v40

    if-gtz v40, :cond_21

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getBootBanner()Lcom/samsung/android/knox/lockscreen/BootBanner;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/knox/lockscreen/BootBanner;->isDodBannerVisible()Z

    move-result v40

    if-eqz v40, :cond_22

    :cond_21
    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "recent apps key disabled by either pwd policy OR DoD Banner"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v40, -0x1

    return-wide v40

    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isKnoxKeyguardShowing()Z

    move-result v40

    if-nez v40, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isKnoxCreatingOnTop()Z

    move-result v40

    if-eqz v40, :cond_24

    :cond_23
    const-wide/16 v40, -0x1

    return-wide v40

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v40

    if-eqz v40, :cond_25

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "isMirrorLinkEnabled() true"

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v40, -0x1

    return-wide v40

    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    move/from16 v40, v0

    if-eqz v40, :cond_26

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "carmode true"

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v40, -0x1

    return-wide v40

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/policy/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_28

    sget-boolean v40, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v40, :cond_27

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "Recent key is blocked by policy"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const-wide/16 v40, -0x1

    return-wide v40

    :cond_28
    if-eqz v15, :cond_a

    if-nez v32, :cond_a

    goto/16 :goto_1

    :sswitch_2
    const/16 v40, 0x6f

    move/from16 v0, v27

    move/from16 v1, v40

    if-ne v0, v1, :cond_29

    if-eqz v15, :cond_2a

    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    move/from16 v40, v0

    if-eqz v40, :cond_a

    if-nez v15, :cond_2c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isBackKeyConsumed()Z

    move-result v40

    if-eqz v40, :cond_a

    const-wide/16 v40, -0x1

    return-wide v40

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v40

    if-nez v40, :cond_29

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v40

    if-eqz v40, :cond_29

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v40

    if-eqz v40, :cond_2b

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "Open Task Manager"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const-wide/16 v40, -0x1

    return-wide v40

    :cond_2b
    const/16 v40, 0x52

    move-object/from16 v0, p0

    move/from16 v1, v40

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->injectionKeyEvent(IZ)V

    goto :goto_4

    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v40, v0

    if-nez v40, :cond_a

    const/16 v40, 0xa

    move/from16 v0, v32

    move/from16 v1, v40

    if-eq v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v40, v0

    if-eqz v40, :cond_a

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x80

    move/from16 v40, v0

    if-eqz v40, :cond_a

    :cond_2d
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    const/16 v40, 0x52

    move-object/from16 v0, p0

    move/from16 v1, v40

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->injectionKeyEvent(IZ)V

    goto/16 :goto_1

    :sswitch_3
    if-eqz v15, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v41, v0

    const-wide/16 v42, 0x3e8

    invoke-virtual/range {v40 .. v43}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2e
    const-wide/16 v40, -0x1

    return-wide v40

    :sswitch_4
    if-nez v15, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    move/from16 v40, v0

    if-eqz v40, :cond_2f

    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->launchFingerPrint()V

    :cond_2f
    const-wide/16 v40, -0x1

    return-wide v40

    :sswitch_5
    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v40

    if-eqz v40, :cond_38

    const-string/jumbo v40, "service.media.dmb"

    invoke-static/range {v40 .. v40}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    const-string/jumbo v41, "dmb_antenna_auto_start"

    const/16 v42, 0x0

    const/16 v43, -0x2

    invoke-static/range {v40 .. v43}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_35

    const/16 v25, 0x1

    :goto_5
    const/4 v8, 0x0

    const/16 v26, 0x0

    if-eqz v14, :cond_30

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_30

    const-string/jumbo v40, "1"

    move-object/from16 v0, v40

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_36

    const/4 v8, 0x1

    :cond_30
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v40

    if-eqz v40, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    move-result v26

    :cond_31
    const-string/jumbo v40, "SamsungPhoneWindowManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "KEYCODE_DMB_ANT_OPEN dmb_running="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, ", isSecureKeyguard="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, ", isDmbAutoStarton="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v15, :cond_33

    if-nez v32, :cond_33

    :try_start_0
    const-string/jumbo v6, "/efs/FactoryApp/tdmb_det_count"

    new-instance v40, Ljava/io/File;

    move-object/from16 v0, v40

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v41, 0x0

    const/16 v42, 0x0

    invoke-static/range {v40 .. v42}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "TDMB_DET_COUNT : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v35, :cond_37

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_37

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v40

    const-wide/16 v42, 0x1

    add-long v12, v40, v42

    const-wide/32 v40, 0xf423f

    cmp-long v40, v12, v40

    if-lez v40, :cond_32

    const-wide/16 v12, 0x1

    :cond_32
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-static {v6, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_33
    :goto_7
    if-nez v15, :cond_a

    if-nez v32, :cond_a

    if-nez v8, :cond_a

    if-nez v26, :cond_a

    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v41, v0

    invoke-static/range {v40 .. v41}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v40

    if-nez v40, :cond_a

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "KEYCODE_DMB_ANT_OPEN"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v40, Landroid/content/ComponentName;

    const-string/jumbo v41, "com.sec.android.app.dmb"

    const-string/jumbo v42, "com.sec.android.app.dmb.activity.DMBFullScreenView"

    invoke-direct/range {v40 .. v42}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v40 .. v40}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v23

    const-string/jumbo v40, "com.sec.android.action.DMB_ANT_OPEN"

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v40, 0x10000000

    move-object/from16 v0, v23

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v40, v0

    sget-object v41, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v40

    if-eqz v40, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v40, v0

    new-instance v41, Lcom/android/server/policy/SamsungPhoneWindowManager$24;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager$24;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    invoke-virtual/range {v40 .. v41}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_34
    const-wide/16 v40, -0x1

    return-wide v40

    :cond_35
    const/16 v25, 0x0

    goto/16 :goto_5

    :cond_36
    const-string/jumbo v40, "0"

    move-object/from16 v0, v40

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_30

    const/4 v8, 0x0

    goto/16 :goto_6

    :cond_37
    :try_start_2
    const-string/jumbo v40, "0"

    move-object/from16 v0, v40

    invoke-static {v6, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    :catch_0
    move-exception v18

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "IOException : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :catch_1
    move-exception v19

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "NumberFormatException : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :catch_2
    move-exception v16

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "No activity to launch DMB."

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    :cond_38
    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v40

    if-eqz v40, :cond_a

    const/16 v26, 0x0

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "SISO DTV  APPLICATION KEYCODE_DTV_ANTENNA_OPEN"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v40

    if-eqz v40, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    move-result v26

    :cond_39
    if-nez v15, :cond_a

    if-nez v32, :cond_a

    if-nez v26, :cond_a

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "SISO DTV  APPLICATION KEYCODE_DTV_ANTENNA_OPEN TO SEND BROADCAST"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v40, "com.samsung.sec.mtv.DTV_ANTENNA_OPEN"

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    sget-object v41, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-wide/16 v40, -0x1

    return-wide v40

    :sswitch_6
    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v40

    if-eqz v40, :cond_3a

    if-nez v15, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v41, v0

    invoke-static/range {v40 .. v41}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v40

    if-nez v40, :cond_a

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "KEYCODE_DMB_ANT_CLOSE"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v40, "com.sec.android.action.DMB_ANT_CLOSE"

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    sget-object v41, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-wide/16 v40, -0x1

    return-wide v40

    :cond_3a
    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v40

    if-eqz v40, :cond_a

    if-nez v15, :cond_a

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "KEYCODE_DTV_ANT_CLOSE"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v40, "com.samsung.sec.mtv.DTV_ANTENNA_CLOSE"

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    sget-object v41, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-wide/16 v40, -0x1

    return-wide v40

    :sswitch_7
    if-eqz v15, :cond_a

    if-nez v28, :cond_a

    if-nez v32, :cond_a

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v34

    if-eqz v34, :cond_3b

    invoke-interface/range {v34 .. v34}, Lcom/android/internal/statusbar/IStatusBarService;->toggleNotificationPanel()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_9

    :cond_3b
    :goto_9
    const-wide/16 v40, -0x1

    return-wide v40

    :sswitch_8
    if-nez v15, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->launchSFinderIfPossible()Z

    :cond_3c
    const-wide/16 v40, -0x1

    return-wide v40

    :sswitch_9
    if-nez v15, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v40

    if-eqz v40, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v40

    if-eqz v40, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isScreenCaptureEnabled()Z

    move-result v40

    if-eqz v40, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v40, v0

    new-instance v41, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;I)V

    invoke-virtual/range {v40 .. v41}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :sswitch_a
    if-nez v15, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v40

    if-eqz v40, :cond_3d

    if-eqz v28, :cond_3e

    :cond_3d
    :goto_a
    const-wide/16 v40, -0x1

    return-wide v40

    :cond_3e
    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "KEYCODE_MULTI_WINDOW key input"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :sswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v40

    if-eqz v40, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v40

    if-eqz v40, :cond_a

    const-wide/16 v40, -0x1

    return-wide v40

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const v42, 0x10409aa

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x0

    invoke-static/range {v40 .. v42}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/widget/Toast;->show()V

    const-wide/16 v40, -0x1

    return-wide v40

    :cond_3f
    if-eqz v15, :cond_42

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v40

    if-eqz v40, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->shouldPassEventForPTT(Landroid/view/KeyEvent;)Z

    move-result v40

    if-nez v40, :cond_41

    sget-boolean v40, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v40, :cond_40

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "User key longpress - Do longpress"

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserKeyConsumed:Z

    :cond_41
    const/16 v40, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->handleUserKey(Z)Z

    move-result v40

    if-eqz v40, :cond_a

    const-wide/16 v40, -0x1

    return-wide v40

    :cond_42
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isUserKeyConsumed()Z

    move-result v40

    if-eqz v40, :cond_44

    sget-boolean v40, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v40, :cond_43

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "User key up after long press - ignore up key"

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    const-wide/16 v40, -0x1

    return-wide v40

    :cond_44
    const/16 v40, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->handleUserKey(Z)Z

    move-result v40

    if-eqz v40, :cond_a

    const-wide/16 v40, -0x1

    return-wide v40

    :sswitch_d
    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "KeyEvent.KEYCODE_NETWORK_SEL"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v40

    if-nez v40, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_46

    :cond_45
    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "Network selection key - no action in factory mode"

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_46
    if-nez v28, :cond_47

    if-eqz v15, :cond_48

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x80

    move/from16 v40, v0

    if-eqz v40, :cond_48

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "Network selection long press action"

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v40, "ACTION_NETWORK_LONGPRESS_KEY"

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    sget-object v41, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNetworkSelectionLongPress:Z

    :cond_47
    :goto_b
    const-wide/16 v40, -0x1

    return-wide v40

    :cond_48
    if-nez v15, :cond_47

    if-nez v32, :cond_47

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNetworkSelectionLongPress:Z

    move/from16 v40, v0

    if-nez v40, :cond_49

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "Network selection short press action"

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v40, "ACTION_NETWORK_KEY"

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    sget-object v41, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_b

    :cond_49
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNetworkSelectionLongPress:Z

    goto :goto_b

    :sswitch_e
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v40

    if-nez v40, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_4b

    :cond_4a
    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "Data key - no action in factory mode"

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4b
    if-nez v15, :cond_a

    if-nez v32, :cond_a

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "3G key action"

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v23, Landroid/content/Intent;

    const-string/jumbo v40, "android.settings.DATA_NETWORK_KEY_PRESSED"

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    sget-object v41, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    :sswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSimLocked()Z

    move-result v40

    if-nez v40, :cond_4c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarrierLocked()Z

    move-result v40

    if-nez v40, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/policy/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_a

    :cond_4c
    sget-boolean v40, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v40, :cond_4d

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "Key was blocked by sim or carrier status"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    const-wide/16 v40, -0x1

    return-wide v40

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/policy/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_a

    sget-boolean v40, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v40, :cond_4e

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "Key was blocked by carrier status"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    const-wide/16 v40, -0x1

    return-wide v40

    :sswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v40

    if-nez v40, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v40

    if-eqz v40, :cond_a

    if-nez v15, :cond_4f

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSweepDirection:I

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCapturedDisplay:I

    const/16 v40, 0x4

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCapturedOrigin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lcom/android/server/wm/IWindowManagerServiceBridge;->getFocusedTaskId()I

    move-result v40

    const/16 v41, -0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_50

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "window screenshot"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v40, v0

    new-instance v41, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;

    const/16 v42, 0x64

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;I)V

    invoke-virtual/range {v40 .. v41}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4f
    :goto_c
    const-wide/16 v40, -0x1

    return-wide v40

    :cond_50
    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "full screenshot"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v40, v0

    new-instance v41, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;I)V

    invoke-virtual/range {v40 .. v41}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    :sswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v40

    if-nez v40, :cond_a

    if-nez v15, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v40

    if-eqz v40, :cond_a

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "launch SFinder"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMetaKeyConsumed:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->launchSFinderIfPossible()Z

    const-wide/16 v40, -0x1

    return-wide v40

    :sswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v40

    if-nez v40, :cond_a

    if-nez v15, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v40

    if-nez v40, :cond_51

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v40

    if-eqz v40, :cond_a

    :cond_51
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v40

    if-eqz v40, :cond_52

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMetaKeyConsumed:Z

    :cond_52
    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "launch Bixby"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v40, "com.samsung.android.DeviceCog"

    move-object/from16 v0, v40

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v40, "key"

    const/16 v41, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    sget-object v41, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-wide/16 v40, -0x1

    return-wide v40

    :sswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isKnoxDesktopMode()Z

    move-result v40

    if-eqz v40, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v40

    if-eqz v40, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v40

    if-nez v40, :cond_a

    if-nez v15, :cond_53

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "window locked"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMetaKeyConsumed:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    :cond_53
    const-wide/16 v40, -0x1

    return-wide v40

    :sswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v40

    if-nez v40, :cond_a

    if-nez v15, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v40

    if-eqz v40, :cond_a

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "launch Quick Setting"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v33

    if-eqz v33, :cond_54

    const/16 v40, 0x1

    :try_start_4
    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMetaKeyConsumed:Z

    const/16 v40, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_8

    :cond_54
    :goto_d
    const-wide/16 v40, -0x1

    return-wide v40

    :sswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v40

    if-nez v40, :cond_a

    if-nez v15, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v40

    if-eqz v40, :cond_a

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "launch volume panel"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMetaKeyConsumed:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v41, v0

    invoke-static {}, Landroid/media/AudioManager;->semGetActiveStreamType()I

    move-result v41

    const/16 v42, 0x0

    const/16 v43, 0x1

    invoke-virtual/range {v40 .. v43}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    const-wide/16 v40, -0x1

    return-wide v40

    :sswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v40

    if-nez v40, :cond_a

    if-nez v15, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v40

    if-eqz v40, :cond_a

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lcom/android/server/wm/IWindowManagerServiceBridge;->getFocusedTaskId()I

    move-result v22

    const/16 v40, -0x1

    move/from16 v0, v22

    move/from16 v1, v40

    if-eq v0, v1, :cond_55

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "finish focused window"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMetaKeyConsumed:Z

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->removeTask(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_7

    :cond_55
    :goto_e
    const-wide/16 v40, -0x1

    return-wide v40

    :sswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v40

    if-nez v40, :cond_a

    if-nez v15, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v40

    if-eqz v40, :cond_a

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lcom/android/server/wm/IWindowManagerServiceBridge;->getFocusedTaskId()I

    move-result v22

    const/16 v40, -0x1

    move/from16 v0, v22

    move/from16 v1, v40

    if-eq v0, v1, :cond_56

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "finish focused window"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->removeTask(I)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_56
    :goto_f
    const-wide/16 v40, -0x1

    return-wide v40

    :sswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v40

    if-nez v40, :cond_57

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isKnoxDesktopMode()Z

    move-result v40

    if-eqz v40, :cond_57

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMetaKeyConsumed:Z

    move/from16 v40, v0

    if-eqz v40, :cond_58

    :cond_57
    if-nez v15, :cond_a

    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMetaKeyConsumed:Z

    goto/16 :goto_1

    :cond_58
    if-nez v15, :cond_57

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v34

    if-eqz v34, :cond_59

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->sendKeyEventToKnoxDesktopTaskbar(Landroid/view/KeyEvent;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_59
    :goto_10
    const-wide/16 v40, -0x1

    return-wide v40

    :catch_3
    move-exception v17

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "RemoteException when sendKeyEventToKnoxDesktopTaskbar"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    :sswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v40

    if-eqz v40, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v40

    if-eqz v40, :cond_a

    const-wide/16 v40, -0x1

    return-wide v40

    :sswitch_1b
    sget-boolean v40, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v40, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isKnoxDesktopMode()Z

    move-result v40

    if-eqz v40, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v40

    if-eqz v40, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v40

    if-nez v40, :cond_a

    if-nez v15, :cond_5a

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v40

    if-eqz v40, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->isFreeformWindow(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v40

    if-eqz v40, :cond_5a

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMetaKeyConsumed:Z

    new-instance v5, Landroid/view/DisplayInfo;

    invoke-direct {v5}, Landroid/view/DisplayInfo;-><init>()V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v40

    move/from16 v0, v40

    iput v0, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v40, v0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-interface {v0, v1, v9}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->resizeTaskWithRelaunchAnim(Landroid/view/IApplicationToken;Landroid/graphics/Rect;)V

    :cond_5a
    const-wide/16 v40, -0x1

    return-wide v40

    :sswitch_1c
    sget-boolean v40, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v40, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isKnoxDesktopMode()Z

    move-result v40

    if-eqz v40, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v40

    if-eqz v40, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v40

    if-nez v40, :cond_a

    if-nez v15, :cond_5b

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v40

    if-eqz v40, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->isFreeformWindow(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v40

    if-eqz v40, :cond_5b

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMetaKeyConsumed:Z

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v40

    move/from16 v0, v40

    iput v0, v9, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v40, v0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-interface {v0, v1, v9}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->resizeTaskWithRelaunchAnim(Landroid/view/IApplicationToken;Landroid/graphics/Rect;)V

    :cond_5b
    const-wide/16 v40, -0x1

    return-wide v40

    :sswitch_1d
    sget-boolean v40, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v40, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isKnoxDesktopMode()Z

    move-result v40

    if-eqz v40, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v40

    if-eqz v40, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v40

    if-nez v40, :cond_a

    if-nez v15, :cond_5c

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v40

    if-eqz v40, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->isFreeformWindow(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v40

    if-eqz v40, :cond_5c

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v40

    if-eqz v40, :cond_5d

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMetaKeyConsumed:Z

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v39

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v40, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v41, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v42, v0

    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v40, v0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-interface {v0, v1, v9}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->resizeTaskWithRelaunchAnim(Landroid/view/IApplicationToken;Landroid/graphics/Rect;)V

    :cond_5c
    :goto_11
    const-wide/16 v40, -0x1

    return-wide v40

    :cond_5d
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isInMultiWindowMode()Z

    move-result v40

    if-eqz v40, :cond_5c

    const/16 v40, 0x1

    :try_start_8
    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMetaKeyConsumed:Z

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v41

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v40

    check-cast v40, Landroid/os/IBinder;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->exitFreeformMode(Landroid/os/IBinder;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_11

    :catch_4
    move-exception v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_11

    :sswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isKnoxDesktopMode()Z

    move-result v40

    if-eqz v40, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v40

    if-eqz v40, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v40

    if-nez v40, :cond_a

    if-nez v15, :cond_5e

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v40

    if-eqz v40, :cond_5e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->isFreeformWindow(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v40

    if-eqz v40, :cond_5e

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isInMultiWindowMode()Z

    move-result v40

    if-nez v40, :cond_5e

    const/16 v40, 0x1

    :try_start_9
    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMetaKeyConsumed:Z

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v41

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v40

    check-cast v40, Landroid/os/IBinder;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->exitFreeformMode(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_5e
    :goto_12
    const-wide/16 v40, -0x1

    return-wide v40

    :catch_5
    move-exception v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_12

    :sswitch_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v40

    if-nez v40, :cond_a

    if-nez v15, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v40

    if-eqz v40, :cond_a

    const-string/jumbo v40, "SamsungPhoneWindowManager"

    const-string/jumbo v41, "toggle recentapp"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMetaKeyConsumed:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    const-wide/16 v40, -0x1

    return-wide v40

    :cond_5f
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_60
    const-wide/16 v40, 0x0

    return-wide v40

    :cond_61
    const/16 v40, 0x6

    move/from16 v0, v27

    move/from16 v1, v40

    if-ne v0, v1, :cond_64

    if-eqz p1, :cond_62

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    :goto_13
    if-eqz v7, :cond_63

    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v40, v0

    move/from16 v0, v40

    and-int/lit16 v0, v0, 0x400

    move/from16 v40, v0

    if-eqz v40, :cond_63

    const-wide/16 v40, 0x0

    return-wide v40

    :cond_62
    const/4 v7, 0x0

    goto :goto_13

    :cond_63
    const-wide/16 v40, -0x1

    return-wide v40

    :cond_64
    const-wide/16 v40, -0x2

    return-wide v40

    :catch_6
    move-exception v17

    goto/16 :goto_f

    :catch_7
    move-exception v17

    goto/16 :goto_e

    :catch_8
    move-exception v17

    goto/16 :goto_d

    :catch_9
    move-exception v20

    goto/16 :goto_9

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_2
        0x13 -> :sswitch_1d
        0x14 -> :sswitch_1e
        0x15 -> :sswitch_1b
        0x16 -> :sswitch_1c
        0x18 -> :sswitch_1a
        0x19 -> :sswitch_1a
        0x1a -> :sswitch_b
        0x1b -> :sswitch_f
        0x22 -> :sswitch_12
        0x25 -> :sswitch_13
        0x28 -> :sswitch_14
        0x2d -> :sswitch_15
        0x32 -> :sswitch_16
        0x34 -> :sswitch_17
        0x3d -> :sswitch_1f
        0x6f -> :sswitch_2
        0x75 -> :sswitch_19
        0x76 -> :sswitch_19
        0x78 -> :sswitch_11
        0x86 -> :sswitch_18
        0xbb -> :sswitch_1
        0x3e9 -> :sswitch_1
        0x3eb -> :sswitch_7
        0x3ec -> :sswitch_9
        0x3f7 -> :sswitch_c
        0x3f9 -> :sswitch_5
        0x3fa -> :sswitch_6
        0x40c -> :sswitch_e
        0x415 -> :sswitch_3
        0x416 -> :sswitch_4
        0x417 -> :sswitch_d
        0x41a -> :sswitch_b
        0x425 -> :sswitch_a
        0x428 -> :sswitch_8
        0x431 -> :sswitch_10
    .end sparse-switch
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 30

    const/high16 v26, 0x20000000

    and-int v26, v26, p2

    if-eqz v26, :cond_1

    const/16 v18, 0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    if-nez v26, :cond_2

    const/4 v12, 0x1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockTaskModeState:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    const/16 v26, 0x3

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    const/16 v26, 0xbb

    move/from16 v0, v20

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    :cond_0
    const-string/jumbo v26, "SamsungPhoneWindowManager"

    const-string/jumbo v27, "Key was blocked by LOCK_TASK_MODE_LOCKED"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x2

    return v26

    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v26

    if-eqz v26, :cond_4

    sparse-switch v20, :sswitch_data_0

    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->broadcastHardKeyIntent(Landroid/view/KeyEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_8

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/CombinationKeyManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/CombinationKeyManager;->interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v26

    if-nez v26, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v12, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->processTorchlight(IZZ)V

    :cond_6
    const/16 v26, 0x3

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEnableAccessControl(I)Z

    move-result v26

    if-eqz v26, :cond_c

    sget-boolean v26, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_7

    const-string/jumbo v26, "SamsungPhoneWindowManager"

    const-string/jumbo v27, "interceptKeyTq : Key was blocked by access control"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/16 v26, 0x2

    return v26

    :sswitch_0
    const-string/jumbo v26, "SamsungPhoneWindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Blocked by MirrorLink:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x2

    return v26

    :cond_8
    const/16 v19, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    if-nez v26, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v26

    if-nez v26, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v26

    if-eqz v26, :cond_a

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v19

    const/16 v26, 0x18

    move/from16 v0, v20

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    move/from16 v26, v0

    if-eqz v26, :cond_9

    const/16 v19, 0x1

    :cond_9
    :goto_2
    if-nez v19, :cond_5

    const-string/jumbo v26, "SamsungPhoneWindowManager"

    const-string/jumbo v27, "MDM: key is blocked"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x2

    return v26

    :cond_a
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v19

    goto :goto_2

    :cond_b
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v19

    goto :goto_2

    :cond_c
    sparse-switch v20, :sswitch_data_1

    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v26, v0

    if-eqz v26, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v26

    if-eqz v26, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v26

    if-eqz v26, :cond_33

    if-eqz v12, :cond_33

    const/16 v26, 0x19

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_e

    const/16 v26, 0x18

    move/from16 v0, v20

    move/from16 v1, v26

    if-ne v0, v1, :cond_33

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/policy/PhoneWindowManager;->isGlobalActionsDialogShowing()Z

    move-result v26

    if-eqz v26, :cond_24

    const-string/jumbo v26, "SamsungPhoneWindowManager"

    const-string/jumbo v27, "Knox Custom: GlobalActions dialog showing; not doing Volume Key app switching"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x18

    move/from16 v0, v20

    move/from16 v1, v26

    if-ne v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/policy/PhoneWindowManager;->isGlobalActionsDialogPowerOptionHidden()Z

    move-result v26

    if-eqz v26, :cond_23

    const-string/jumbo v26, "SamsungPhoneWindowManager"

    const-string/jumbo v27, "Knox Custom: GlobalActions dialog showing; forward the key for Power option display"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x1

    return v26

    :sswitch_1
    const/16 v23, 0x1

    const/16 v26, 0x3

    move/from16 v0, v20

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/policy/SamsungPhoneWindowManager;->checkTriggerQD(Z)Z

    move-result v26

    if-eqz v26, :cond_f

    if-nez v18, :cond_12

    and-int/lit8 v26, p2, 0x1

    if-nez v26, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    move-result v26

    :goto_4
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsWakekey:Z

    const/16 v23, 0x5

    :cond_f
    if-nez v18, :cond_10

    if-eqz v12, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->hasCustomDoubleTapHomeCommand()Z

    move-result v26

    if-eqz v26, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNeedTriggerQD:Z

    move/from16 v26, v0

    if-eqz v26, :cond_13

    :cond_10
    :goto_5
    return v23

    :cond_11
    const/16 v26, 0x1

    goto :goto_4

    :cond_12
    const/16 v26, 0x0

    goto :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultitapKeyManager:Lcom/android/server/policy/MultitapKeyPolicy;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/android/server/policy/MultitapKeyPolicy;->dispatchMultitapKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v26

    if-eqz v26, :cond_10

    or-int/lit8 v23, v23, 0x8

    goto :goto_5

    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v26

    if-eqz v26, :cond_14

    const-string/jumbo v26, "SamsungPhoneWindowManager"

    const-string/jumbo v27, "isMirrorLinkEnabled() true"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x2

    return v26

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrDocked:Z

    move/from16 v26, v0

    if-eqz v26, :cond_15

    const/16 v26, 0x2

    return v26

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v26

    if-nez v26, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v26

    if-eqz v26, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->semGetDisplayId()I

    move-result v26

    if-nez v26, :cond_17

    :cond_16
    const/16 v26, 0x4

    return v26

    :cond_17
    const/16 v26, 0x8

    return v26

    :sswitch_3
    if-nez v12, :cond_19

    const-string/jumbo v26, "SamsungPhoneWindowManager"

    const-string/jumbo v27, "launch voice LPSD"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v26

    if-eqz v26, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    const-wide/16 v28, 0x1388

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    const-string/jumbo v5, "com.samsung.android.app.sounddetector.VOICE_WAKEUP"

    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    sget-object v27, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_19
    const/16 v26, 0x2

    return v26

    :sswitch_4
    if-nez v12, :cond_1b

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v26

    if-nez v26, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_1c

    :cond_1a
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v26, "com.sec.android.intent.action.VOICE_WAKEUP_KEY"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v28, "com.sec.android.permission.HANDLE_VOICE_WAKEUP_KEY"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_1b
    :goto_6
    const/16 v26, 0x2

    return v26

    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1d

    const-string/jumbo v26, "SamsungPhoneWindowManager"

    const-string/jumbo v27, "launch drivelink"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v26, "com.sec.android.automotive.drivelink.ACTION_VOICE_WAKEUP"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_6

    :cond_1d
    const-string/jumbo v26, "SamsungPhoneWindowManager"

    const-string/jumbo v27, "launch voice command"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "com.samsung.alwaysmicon.alwaysmiconservice.ACTION_VOICE_WAKEUP"

    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_6

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "screen_off_memo"

    const/16 v28, 0x0

    const/16 v29, -0x2

    invoke-static/range {v26 .. v29}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v26

    if-eqz v26, :cond_1e

    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    new-instance v26, Landroid/content/ComponentName;

    const-string/jumbo v27, "com.samsung.android.app.notes"

    const-string/jumbo v28, "com.samsung.android.app.notes.screenoffmemo.ScreenOffMemoService"

    invoke-direct/range {v26 .. v28}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :cond_1e
    const/16 v26, 0x2

    return v26

    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportActiveDouble()Z

    move-result v26

    if-eqz v26, :cond_21

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyCurTime:J

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyTriggered:Z

    move/from16 v26, v0

    if-nez v26, :cond_1f

    if-nez v12, :cond_20

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyTriggered:Z

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyCurTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0xaa

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyCurTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyPress:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyPress:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    const-wide/16 v28, 0xaa

    invoke-virtual/range {v26 .. v29}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1f
    :goto_7
    const/16 v26, 0x14

    return v26

    :cond_20
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyCurTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x1f4

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyCurTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyPress:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyPress:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x1f4

    invoke-virtual/range {v26 .. v29}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    :cond_21
    const/16 v26, 0x4

    return v26

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    move/from16 v26, v0

    if-nez v26, :cond_22

    if-eqz v12, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    const-wide/16 v28, 0xbb8

    invoke-virtual/range {v26 .. v29}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v26

    if-eqz v26, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_3

    :cond_23
    const/16 v26, 0x2

    return v26

    :cond_24
    const-string/jumbo v26, "SamsungPhoneWindowManager"

    const-string/jumbo v27, "Knox Custom: Volume Key app switching starting"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppsList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_25

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v26

    if-nez v26, :cond_27

    :cond_25
    const-string/jumbo v26, "SamsungPhoneWindowManager"

    const-string/jumbo v27, "Knox Custom: no apps in list"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_8
    const-string/jumbo v26, "SamsungPhoneWindowManager"

    const-string/jumbo v27, "Knox Custom: Volume Key app switching done"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x2

    return v26

    :cond_27
    const-string/jumbo v26, "SamsungPhoneWindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Knox Custom: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " apps in list"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string/jumbo v27, "activity"

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_29

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_28

    const-string/jumbo v26, "SamsungPhoneWindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Knox Custom: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " available"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_28
    const-string/jumbo v26, "SamsungPhoneWindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Knox Custom: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " not available"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_29
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-nez v26, :cond_2a

    const-string/jumbo v26, "SamsungPhoneWindowManager"

    const-string/jumbo v27, "Knox Custom: no available apps"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_2a
    const v26, 0x7fffffff

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v26, "SamsungPhoneWindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Knox Custom: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " in foreground"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, -0x1

    const/16 v16, 0x0

    :goto_a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_2c

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2b

    const-string/jumbo v26, "SamsungPhoneWindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Knox Custom: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " found at index "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v15, v16

    :cond_2b
    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    :cond_2c
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v15, v0, :cond_2d

    const-string/jumbo v26, "SamsungPhoneWindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Knox Custom: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " not found in list; use first"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    move-object/from16 v21, v14

    const/16 v26, 0x19

    move/from16 v0, v20

    move/from16 v1, v26

    if-ne v0, v1, :cond_30

    if-lez v15, :cond_2f

    add-int/lit8 v26, v15, -0x1

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    :cond_2e
    :goto_b
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_32

    const-string/jumbo v26, "SamsungPhoneWindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Knox Custom: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " already in foreground"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_2f
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    goto :goto_b

    :cond_30
    const/16 v26, 0x18

    move/from16 v0, v20

    move/from16 v1, v26

    if-ne v0, v1, :cond_2e

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-ge v15, v0, :cond_31

    add-int/lit8 v26, v15, 0x1

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    goto :goto_b

    :cond_31
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    goto :goto_b

    :cond_32
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v26, "SamsungPhoneWindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Knox Custom: switching to "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_26

    const/high16 v26, 0x10400000

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v10, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v13

    const-string/jumbo v26, "SamsungPhoneWindowManager"

    const-string/jumbo v27, "No activity to launch Knox Custom switching."

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    :cond_33
    const/16 v26, 0x1

    return v26

    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x3f7 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_1
        0x19 -> :sswitch_7
        0x1a -> :sswitch_2
        0x3f7 -> :sswitch_6
        0x426 -> :sswitch_4
        0x427 -> :sswitch_3
        0x436 -> :sswitch_5
    .end sparse-switch
.end method

.method public interceptPowerKeyDown()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportFlipCover:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportSViewCover:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportFlipCover:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportSViewCover:Z

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    invoke-interface {v1}, Lcom/samsung/android/cover/ICoverManager;->sendPowerKeyToCover()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "CoverManager threw RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isAccessiblityEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isActivitiesAvailable(Landroid/content/Intent;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v2, 0x50000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    return v3
.end method

.method public isAnyKeyMode()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "anykey_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->semGetDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x1

    return v0

    :sswitch_0
    return v1

    :cond_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method public isBlockedPowerKeyByKeyTest()Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v1}, Lcom/android/server/policy/SystemKeyManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {}, Landroid/os/FactoryTest;->needBlockingPowerKey()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.sec.factory.app.ui.UIHardKey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.sec.OneJigBinary.testitem.KeyTest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.sec.android.app.simplefunctiontest.KeypadTest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.sec.factory.app.spcselftest.SpcSelfTestMain"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.sec.android.app.latin.tdfnotifier"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-boolean v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Skip power key behavior by FactoryTest application"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public isCarrierLocked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCombinationKeyTriggered()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/CombinationKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/CombinationKeyManager;->isCombinationKeyTriggered()Z

    move-result v0

    return v0
.end method

.method public isComponentAvailable(Landroid/content/ComponentName;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    return v3

    :catch_0
    move-exception v0

    return v3
.end method

.method public isCurrentUserSetupComplete()Z
    .locals 1

    sget v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCurrentUser:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDeviceProvisioned()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

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

.method public isDirectAccessEnabled(Z)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-static {v2}, Lcom/android/server/policy/SamsungPolicyProperties;->isVzwSetupWizardRunning(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "block to trigger accessiblity when Verizon Setup Wizard Running"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-eqz p1, :cond_1

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandEnabled:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandTriggerType:I

    if-ne v2, v0, :cond_1

    return v0

    :cond_1
    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDirectAccessBehavior:I

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public isDockHomeEnabled(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsTablet:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsJapanModel:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SC-04F"

    sget-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mModelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SCL23"

    sget-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mModelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    const-string/jumbo v2, "android.intent.category.DESK_DOCK"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    :cond_1
    return v0
.end method

.method public isDoubleTapOnHomeEnabled()Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Home Double Tap block when Verizon Setup Wizard Running"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const-string/jumbo v1, "service.camera.running"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDoubleTapOnPowerEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    return v0
.end method

.method public isEasyModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    return v0
.end method

.method public isEasyOneHandEnabled()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandEnabled:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnableAccessControl(I)Z
    .locals 8

    const/4 v7, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "access_control_power_button"

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "access_control_volume_button"

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "access_control_keyboard_block"

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x7

    if-lt p1, v5, :cond_1

    const/16 v5, 0x12

    if-gt p1, v5, :cond_1

    iget-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    sparse-switch p1, :sswitch_data_0

    iget-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    return v3

    :sswitch_0
    iget-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    return v3

    :sswitch_1
    iget-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    move v4, v3

    :cond_2
    return v4

    :sswitch_2
    iget-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    move v4, v3

    :cond_3
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1a -> :sswitch_1
    .end sparse-switch
.end method

.method public isForceHideBySViewCover()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isForceStatusBarFromSViewCover()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceStatusBarFromSViewCover:Z

    return v0
.end method

.method public isGearVrDocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrDocked:Z

    return v0
.end method

.method public isGearVrSupport()Z
    .locals 2

    const-class v1, Lcom/android/server/vr/GearVrManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/GearVrManagerInternal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerInternal;->hasHmtFeature()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isKeyguardLocked()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method public isKnoxDesktopMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLockTaskModeEnabled()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockTaskModeState:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isMenuConsumed()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMenuConsumed:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMenuConsumed:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public isMetaKeyEventRequested()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SystemKeyManager;->isMetaKeyEventRequested()Z

    move-result v0

    return v0
.end method

.method public isMetaKeyEventRequested(Landroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SystemKeyManager;->isMetaKeyEventRequested(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isMirrorLinkEnabled()Z
    .locals 2

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "net.mirrorlink.on"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMobileKeyboardEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardEnabled:Z

    return v0
.end method

.method public isNavigationBarVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedLayoutCoverApplication(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/view/IWindowStateBridge;->getCoverMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/view/IWindowStateBridge;->willBeHideSViewCoverOnce()Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_0
    if-eq v0, v2, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    :cond_1
    return v2

    :cond_2
    if-nez v0, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    :cond_3
    return v3

    :sswitch_0
    return v2

    :sswitch_data_0
    .sparse-switch
        0x7d5 -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x833 -> :sswitch_0
    .end sparse-switch
.end method

.method public isOneTouchReportEnabled()Z
    .locals 17

    const-string/jumbo v15, "go.police.report"

    const-string/jumbo v14, "com.android.vending"

    const/4 v13, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    :try_start_0
    const-string/jumbo v2, "go.police.report"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v2, "com.android.vending"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v11

    const/4 v2, 0x0

    return v2

    :cond_1
    const-string/jumbo v9, "content://go.police.provider.report"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v2, "content://go.police.provider.report"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "customer_agreement"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v2, -0x1

    if-eq v8, v2, :cond_2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    const/4 v2, 0x1

    if-ne v2, v10, :cond_4

    const/4 v12, 0x1

    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    return v12

    :cond_4
    const/4 v12, 0x0

    goto :goto_0

    :catch_1
    move-exception v11

    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method public isPackageAvailable(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    return v3

    :catch_0
    move-exception v0

    return v3
.end method

.method public isPowerSave()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerSave:Z

    return v0
.end method

.method public isQuickPanelExpanded()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v3, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    if-le v0, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    return v2
.end method

.method public isRecentAppStart()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/SystemManager;->getRecentLongPressMode()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->startCustomApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public isRecentConsumed()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRecentConsumed:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRecentConsumed:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public isRecentsVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    return v0
.end method

.method public isRingingOrOffhook()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSafetyAssuranceEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    return v0
.end method

.method public isScreenOffOnLongPressHome()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/SystemManager;->getScreenOffOnHomeLongPressState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShowingSViewCover()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShowingSViewCover:Z

    return v0
.end method

.method public isSideSyncPresentationRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    return v0
.end method

.method public isSimLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v0

    return v0
.end method

.method public isStatusBarKeyguard()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isStatusBarKeyguard(I)Z

    move-result v0

    return v0
.end method

.method isStatusBarKeyguard(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isStatusBarSViewCover()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isStatusBarVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportActiveDouble()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "double_press_app"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSupportBCM()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isBatteryConversingModeSupported()Z

    move-result v0

    return v0
.end method

.method public isSupportPowerTriplePress()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isTphoneRelaxMode()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isSktTphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "skt_phone20_relax_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    return v3

    :cond_0
    return v2
.end method

.method public isTripleTapOnHomeEnabled()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDirectAccessEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isUseAccessControl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    return v0
.end method

.method public isVolumeKeyAppsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isWakeupPreventionPackage(Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Turning screen on : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Turning screen block by WakeupPreventionPackage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method keyguardOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public launchDoubleTapOnHomeCommand()V
    .locals 7

    const-string/jumbo v4, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "launchDoubleTapOnHomeCommand mDoubleTapOnHomeBehavior = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-nez v4, :cond_0

    const-string/jumbo v4, "SamsungPhoneWindowManager"

    const-string/jumbo v5, "mDoubleTapOnHomeBehavior is false"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->hasCustomDoubleTapHomeCommand()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->launchVoiceCommand()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableDoublTapOnHomeCommand:Z

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDoubleTapOnHomeEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "SamsungPhoneWindowManager"

    const-string/jumbo v5, "launch double tap command"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    move-result v3

    :goto_1
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string/jumbo v5, "isSecure"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v5}, Lcom/android/server/policy/SystemKeyManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const/high16 v5, 0x200000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_2
    :try_start_0
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_3
    :try_start_1
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v5, "homekey"

    invoke-virtual {v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    sget-boolean v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_6

    const-string/jumbo v4, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Add cleartask flag by policy: isShowing = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", isScreenOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const/high16 v5, 0x24000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v4, "SamsungPhoneWindowManager"

    const-string/jumbo v5, "No activity to launch double tap command."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_7
    const-string/jumbo v4, "SamsungPhoneWindowManager"

    const-string/jumbo v5, "Device is not available double tap command or setting"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v4, "SamsungPhoneWindowManager"

    const-string/jumbo v5, "Device is not provisioned"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_3
.end method

.method public launchFingerPrint()V
    .locals 4

    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isSupportFingerPrint()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "launch fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "No activity to handle fingerprint."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Device is not supported, not launch fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public launchHomeDuringVzwSetup()Z
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "persist.sys.enablehomekey"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Verizon Setup Wizard Running, launch home key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    return v2
.end method

.method public launchPremiumWatch(Z)V
    .locals 6

    :try_start_0
    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "Premium watch on"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.sec.android.intent.action.START_WATCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "Fail to launch premium watch"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public launchSFinderIfPossible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    invoke-static {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->-wrap0(Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchVoiceCommand()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDoubleTapOnHomeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "launch voicecommand"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v3, "homekey"

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string/jumbo v3, "isSecure"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string/jumbo v4, "AUTO_LISTEN"

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "No activity to launch voicecommand."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "Device is not provisioned or not available voice command."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public launchingGamekey(Z)Z
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->endCallByGamekey()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    return v5

    :cond_0
    if-eqz p1, :cond_1

    return v8

    :cond_1
    const-string/jumbo v1, "com.sec.game.sga"

    const-string/jumbo v4, "com.sec.android.app.samsungapps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "samsungapps://ProductDetail/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->startSGA(Ljava/lang/String;)V

    :goto_1
    return v8

    :catch_0
    move-exception v0

    sget-boolean v5, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "SamsungPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " not exist. so try to download the SGA apps."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :cond_4
    :goto_2
    if-eqz v2, :cond_6

    sget-boolean v5, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_5

    const-string/jumbo v5, "SamsungPhoneWindowManager"

    const-string/jumbo v6, "SGA is not installed. so you are moving to Samsung apps."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->downloadForSGA(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    sget-boolean v5, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_4

    const-string/jumbo v5, "SamsungPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " not exist. so try to download the SGA apps."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    sget-boolean v5, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_7

    const-string/jumbo v5, "SamsungPhoneWindowManager"

    const-string/jumbo v6, "Samsung apps is not installed. so you are moving to Samsung apps download page."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->downloadForSamsungApps()V

    goto :goto_1
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-eq v3, v4, :cond_0

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x960

    if-ne v3, v4, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardEnabled:Z

    if-eqz v3, :cond_1

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_1

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarHeight:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarHeight:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p4, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarHeight:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p4, Landroid/graphics/Rect;->bottom:I

    iget v3, p5, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarHeight:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p5, Landroid/graphics/Rect;->bottom:I

    iget v3, p6, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarHeight:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p6, Landroid/graphics/Rect;->bottom:I

    :cond_1
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isKnoxDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    invoke-interface {v3, p1}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->isFreeformWindow(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    iget v3, p5, Landroid/graphics/Rect;->top:I

    if-ge v3, v2, :cond_2

    iput v2, p5, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method public needSensorRunningLp()I
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-nez v1, :cond_1

    :goto_0
    const/4 v0, 0x2

    :cond_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdUserRotationMode:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-ne v1, v3, :cond_0

    goto :goto_0
.end method

.method public needUpdateSystemBarsForCoverLw()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isStatusBarSViewCover()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCover:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public notifyBeforeQuickAccess(IFF)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x2

    new-array v1, v3, [F

    const/4 v3, 0x0

    aput p2, v1, v3

    const/4 v3, 0x1

    aput p3, v1, v3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-boolean v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendbroadcast intent :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " premission="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string/jumbo v3, "com.samsung.android.spay.quickpay"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "com.samsung.android.spay.permission.SIMPLE_PAY"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-boolean v3, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_IMMERSIVE_FORCE_TOUCH:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNaviBarForceTouchManager:Lcom/android/server/policy/NaviBarForceTouchManager;

    float-to-int v4, p2

    float-to-int v5, p3

    invoke-virtual {v3, v4, v5}, Lcom/android/server/policy/NaviBarForceTouchManager;->onForcePressed(II)V

    :cond_1
    return-void

    :pswitch_2
    sget-boolean v3, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_IMMERSIVE_FORCE_TOUCH:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNaviBarForceTouchManager:Lcom/android/server/policy/NaviBarForceTouchManager;

    float-to-int v4, p2

    float-to-int v5, p3

    invoke-virtual {v3, v4, v5}, Lcom/android/server/policy/NaviBarForceTouchManager;->onForceReleased(II)V

    :cond_2
    return-void

    :pswitch_3
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "main screen wake up"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRotationForQuickAccess:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRotationForQuickAccess:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_4
    sget-boolean v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "sub screen wake up"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_4
    const/16 v3, 0xc

    if-ne p1, v3, :cond_5

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v4, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v5, 0xc379

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_5
    const-string/jumbo v3, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "info"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "location"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .locals 11

    const/4 v4, 0x1

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v5, "CscFeature_Common_DisableNfcHwKeypad"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "Mobile Keyboard is disabled by SemCscFeature."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p3, :cond_5

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEasyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    cmp-long v2, p1, v8

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/server/policy/SamsungPhoneWindowManager$27;

    invoke-direct {v2, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$27;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    invoke-virtual {v0, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardEnabled:Z

    if-eq v2, v1, :cond_3

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardEnabled:Z

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;

    iget-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardEnabled:Z

    if-eqz v2, :cond_8

    move v2, v3

    :goto_2
    const-string/jumbo v6, "mobile_keyboard"

    invoke-interface {v5, v2, v6}, Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;->setMultiWindowEnabled(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    cmp-long v2, p1, v8

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "mobile_keyboard"

    if-eqz v1, :cond_9

    :goto_3
    invoke-static {v2, v5, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/SamsungPhoneWindowManager$28;

    invoke-direct {v3, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$28;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_8
    move v2, v4

    goto :goto_2

    :cond_9
    move v4, v3

    goto :goto_3
.end method

.method public notifyLidSwitchChanged(JZ)Z
    .locals 15

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->performCPUBoost()V

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    if-eqz p3, :cond_0

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->bIsTorchOn:Z

    if-eqz v10, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->handleTorchKey()V

    :cond_0
    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    if-eqz p3, :cond_1

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v10}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v11, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v11, v11, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v10, v11}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->keyguardDone(ZZ)V

    :cond_1
    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    const-string/jumbo v11, "flipOpen"

    move/from16 v0, p3

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-boolean v10, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v10, :cond_2

    const-string/jumbo v10, "SamsungPhoneWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Flip Folder open = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , broadcasted."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-boolean v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderSoundEnable:Z

    if-eqz v10, :cond_4

    if-eqz p3, :cond_9

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderOpenSound:Ljava/lang/String;

    :goto_0
    sget-boolean v10, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v10, :cond_3

    const-string/jumbo v10, "SamsungPhoneWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Folder open/close soundPath = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v6, :cond_4

    invoke-direct {p0, v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V

    :cond_4
    if-nez p3, :cond_5

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-nez v10, :cond_6

    if-eqz p3, :cond_a

    :cond_6
    :goto_1
    const/4 v8, 0x0

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_7

    if-eqz p3, :cond_12

    const/4 v8, 0x0

    :cond_7
    :goto_2
    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/policy/SamsungPhoneWindowManager$26;

    invoke-direct {v11, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$26;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    int-to-long v12, v8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    if-eqz p3, :cond_13

    :cond_8
    :goto_3
    if-nez p3, :cond_14

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v10, :cond_14

    :goto_4
    const/4 v10, 0x1

    return v10

    :cond_9
    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderCloseSound:Ljava/lang/String;

    goto :goto_0

    :cond_a
    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "premium_watch_switch_onoff"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "sub_lcd_auto_lock"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_f

    const/4 v7, 0x1

    :goto_5
    const/4 v4, 0x0

    const-string/jumbo v10, "service.camera.running"

    const-string/jumbo v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "phone"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    iput-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_b
    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isOffhook()Z

    move-result v3

    :cond_c
    if-eqz v7, :cond_11

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_10

    :cond_d
    :goto_6
    const-string/jumbo v10, "SamsungPhoneWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isCameraRunning: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", isOffhook: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v10}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v11, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v11, v11, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v10, v11}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    move-result v10

    if-nez v10, :cond_e

    if-nez v4, :cond_6

    if-nez v3, :cond_6

    if-nez v2, :cond_6

    :cond_e
    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_10
    if-nez v2, :cond_d

    if-nez v3, :cond_d

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v10

    if-eqz v10, :cond_d

    if-nez v5, :cond_d

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/policy/SamsungPhoneWindowManager;->launchPremiumWatch(Z)V

    const/4 v4, 0x1

    goto :goto_6

    :cond_11
    const-string/jumbo v10, "SamsungPhoneWindowManager"

    const-string/jumbo v11, "Auto lock is not enabled."

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_12
    const/16 v8, 0x1f4

    goto/16 :goto_2

    :cond_13
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isDomesticOtaStart()Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/policy/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isPreloadInstallComplete()Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    goto/16 :goto_3

    :cond_14
    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-object v11, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v11, v11, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    const/4 v14, 0x5

    invoke-virtual {v10, v12, v13, v11, v14}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZI)Z

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/4 v11, 0x0

    invoke-virtual {v10, v12, v13, v11}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto/16 :goto_4
.end method

.method public notifyPenSwitchChanged(JZ)V
    .locals 17

    if-eqz p3, :cond_1

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v7

    sget-boolean v10, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v10, :cond_0

    const-string/jumbo v10, "SamsungPhoneWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "newPenState : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", mPenState : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenState:I

    if-ne v4, v10, :cond_2

    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenState:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    const/4 v5, 0x0

    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "spen_feedback_sound"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-nez v10, :cond_4

    const/4 v5, 0x0

    :cond_4
    sget-boolean v10, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v10, :cond_5

    const-string/jumbo v10, "SamsungPhoneWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "playSound : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", screenOn : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenState:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_detachment_notification"

    const/4 v12, -0x2

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    const-string/jumbo v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    :goto_1
    const/4 v3, 0x0

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "action_memo_on_off_screen"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_c

    const/4 v3, 0x1

    new-instance v10, Landroid/content/ComponentName;

    const-string/jumbo v11, "com.samsung.android.snote"

    const-string/jumbo v12, "com.samsung.android.snote.control.ui.quickmemo.service.InstantMemo_Service"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_6
    :goto_2
    if-eqz p3, :cond_d

    if-eqz v5, :cond_7

    if-eqz v8, :cond_7

    :try_start_0
    array-length v10, v9

    const/4 v11, 0x1

    if-le v10, v11, :cond_7

    const/4 v10, 0x0

    aget-object v10, v9, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/policy/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    if-eqz v10, :cond_8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v11, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v12, 0xc36d

    const/4 v13, -0x1

    const/4 v14, 0x0

    invoke-virtual {v10, v12, v13, v14, v11}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string/jumbo v11, "penInsert"

    move/from16 v0, p3

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string/jumbo v11, "isScreenOn"

    invoke-virtual {v10, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string/jumbo v11, "isKeyguardLocked"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v12}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string/jumbo v12, "isBoot"

    const-wide/16 v14, 0x0

    cmp-long v10, p1, v14

    if-nez v10, :cond_12

    const/4 v10, 0x1

    :goto_5
    invoke-virtual {v11, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-boolean v10, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v10, :cond_9

    const-string/jumbo v10, "SamsungPhoneWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "pen = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , broadcasted."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    if-eqz v3, :cond_a

    const-wide/16 v10, 0x0

    cmp-long v10, p1, v10

    if-eqz v10, :cond_a

    if-eqz p3, :cond_13

    :cond_a
    :goto_6
    return-void

    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "screen_off_memo"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_6

    const/4 v3, 0x1

    new-instance v10, Landroid/content/ComponentName;

    const-string/jumbo v11, "com.samsung.android.app.notes"

    const-string/jumbo v12, "com.samsung.android.app.notes.screenoffmemo.ScreenOffMemoService"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v10

    if-eqz v10, :cond_10

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/4 v11, 0x4

    invoke-virtual {v10, v12, v13, v11}, Landroid/os/PowerManager;->wakeUp(JI)V

    :cond_e
    :goto_7
    if-eqz v5, :cond_f

    if-eqz v8, :cond_f

    :try_start_1
    array-length v10, v9

    const/4 v11, 0x1

    if-le v10, v11, :cond_f

    const/4 v10, 0x1

    aget-object v10, v9, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/policy/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_f
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    if-eqz v10, :cond_8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v11, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v12, 0xc369

    const/4 v13, -0x1

    const/4 v14, 0x0

    invoke-virtual {v10, v12, v13, v14, v11}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    goto/16 :goto_4

    :cond_10
    if-eqz v7, :cond_11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/4 v11, 0x0

    invoke-virtual {v10, v12, v13, v11}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_7

    :cond_11
    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/4 v11, 0x4

    invoke-virtual {v10, v12, v13, v11}, Landroid/os/PowerManager;->wakeUp(JI)V

    goto :goto_7

    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_5

    :cond_13
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v10, v6, v11}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto/16 :goto_6

    :catch_0
    move-exception v2

    goto :goto_8

    :catch_1
    move-exception v2

    goto/16 :goto_3
.end method

.method public onLockTaskModeChanged(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockTaskModeState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockTaskModeState:I

    :cond_0
    return-void
.end method

.method public performCPUBoost()V
    .locals 6

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "DEVICE_WAKEUP"

    const/16 v4, 0x15

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;II)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    :cond_0
    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "mWakeUpBooster.acquire()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "HINT_DEVICE_WAKEUP.acquire is failed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 11

    const/4 v6, -0x2

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-nez v4, :cond_0

    return v10

    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "haptic_feedback_enabled"

    invoke-static {v4, v5, v10, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "emergency_mode"

    invoke-static {v4, v5, v10, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v8, :cond_4

    const/4 v1, 0x1

    :goto_1
    const-string/jumbo v4, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "f.b. a = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " hd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " eme = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ksno = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_6

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_2
    const-string/jumbo v4, "SamsungPhoneWindowManager"

    const-string/jumbo v5, "haptic disabled by policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    sget-boolean v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_7

    if-eqz p1, :cond_7

    const-string/jumbo v4, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "haptic feedback for : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v4

    if-eqz v4, :cond_9

    sparse-switch p2, :sswitch_data_0

    invoke-static {p2}, Landroid/view/HapticFeedbackConstants;->isValidatedVibeIndex(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v4, p2, v7, v9, v5}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    return v8

    :sswitch_0
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v6, 0xc369

    invoke-virtual {v4, v6, v7, v9, v5}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    return v8

    :sswitch_1
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v6, 0xc36a

    invoke-virtual {v4, v6, v7, v9, v5}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    return v8

    :sswitch_2
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v6, 0xc36b

    invoke-virtual {v4, v6, v7, v9, v5}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    return v8

    :sswitch_3
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v6, 0xc376

    invoke-virtual {v4, v6, v7, v9, v5}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    return v8

    :sswitch_4
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v6, 0xc377

    invoke-virtual {v4, v6, v7, v9, v5}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    return v8

    :sswitch_5
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v6, 0xc378

    invoke-virtual {v4, v6, v7, v9, v5}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    return v8

    :cond_8
    return v10

    :cond_9
    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_1

    return v10

    :sswitch_6
    const/16 v0, 0x32

    :goto_2
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    return v8

    :sswitch_7
    const/16 v0, 0x32

    goto :goto_2

    :sswitch_8
    const/16 v0, 0x64

    goto :goto_2

    :sswitch_9
    const/16 v0, 0x1f4

    goto :goto_2

    :sswitch_a
    const/16 v0, 0x5dc

    goto :goto_2

    :sswitch_b
    const/16 v0, 0xfa

    goto :goto_2

    :sswitch_c
    const/4 v4, 0x4

    new-array v3, v4, [J

    fill-array-data v3, :array_0

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4, v3, v7}, Landroid/os/Vibrator;->vibrate([JI)V

    return v8

    :sswitch_d
    const/16 v0, 0x32

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_1
        0xc36a -> :sswitch_1
        0xc36b -> :sswitch_2
        0xc376 -> :sswitch_3
        0xc377 -> :sswitch_4
        0xc378 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_6
        0x3 -> :sswitch_6
        0xc369 -> :sswitch_7
        0xc36a -> :sswitch_d
        0xc36b -> :sswitch_8
        0xc370 -> :sswitch_9
        0xc371 -> :sswitch_b
        0xc372 -> :sswitch_c
        0xc373 -> :sswitch_a
    .end sparse-switch

    :array_0
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public performHome()V
    .locals 2

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "performHome"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->performHomeBoost()V

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->performHomeBroadcast()V

    return-void
.end method

.method performHomeBoost()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSupportedCPUFreqTable:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "mHomeBooster is failed"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method performHomeBroadcast()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/SamsungPhoneWindowManager$29;

    invoke-direct {v1, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$29;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public performSystemKeyFeedback(Landroid/view/KeyEvent;)V
    .locals 5

    const v4, 0xc36a

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SPC_Remote_Controller"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_2
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gpio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrDocked:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/SamsungPolicyProperties;->hasQwertyKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    :cond_4
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    :cond_5
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x1b -> :sswitch_3
        0x52 -> :sswitch_0
        0x54 -> :sswitch_1
        0xbb -> :sswitch_0
        0xcf -> :sswitch_3
        0x3e9 -> :sswitch_0
        0x430 -> :sswitch_3
        0x431 -> :sswitch_3
    .end sparse-switch
.end method

.method public powerMultiPressAction(I)Z
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Screen Curtain mode toggle."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDoubleTapOnPowerEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->callAccessibilityScreenCurtain()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->triggerPanicCall()V

    :pswitch_2
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "SOS Message mode toggle."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSafetyAssuranceEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->sendBroadcastForSafetyAssurance()V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 7

    const/4 v6, 0x0

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceUserActivityTimeoutWin:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getReduceScreenPolicy()Lcom/android/server/policy/ReduceScreenPolicy;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/server/policy/ReduceScreenPolicy;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    return v6

    :sswitch_0
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.STATUS_BAR_SERVICE"

    const-string/jumbo v5, "SamsungPhoneWindowManager"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x7

    return v3

    :cond_2
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/view/IWindowStateBridge;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const v3, 0x10500c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    goto :goto_0

    :sswitch_1
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mInputMethod:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_3
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceUserActivityTimeoutWin:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7db -> :sswitch_1
        0x8de -> :sswitch_0
    .end sparse-switch
.end method

.method public prepareSViewCoverLayout(IIIIIIIIIIIIIIIIIIIIIIIII)V
    .locals 6

    iput p4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemLeft:I

    iput p4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemLeft:I

    iput p5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemTop:I

    iput p5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemTop:I

    iput p6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemRight:I

    iput p6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemRight:I

    iput p7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemBottom:I

    iput p7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemBottom:I

    iput p8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenLeft:I

    iput p8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenLeft:I

    iput p9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenTop:I

    iput p9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenTop:I

    move/from16 v0, p10

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenWidth:I

    move/from16 v0, p10

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenWidth:I

    move/from16 v0, p11

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenHeight:I

    move/from16 v0, p11

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenHeight:I

    move/from16 v0, p12

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenLeft:I

    move/from16 v0, p12

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenLeft:I

    move/from16 v0, p13

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenTop:I

    move/from16 v0, p13

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenTop:I

    move/from16 v0, p14

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenRight:I

    move/from16 v0, p14

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenRight:I

    move/from16 v0, p15

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenBottom:I

    move/from16 v0, p15

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenBottom:I

    move/from16 v0, p16

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableLeft:I

    move/from16 v0, p16

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableLeft:I

    move/from16 v0, p17

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableTop:I

    move/from16 v0, p17

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableTop:I

    move/from16 v0, p18

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableRight:I

    move/from16 v0, p18

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableRight:I

    move/from16 v0, p19

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableBottom:I

    move/from16 v0, p19

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableBottom:I

    move/from16 v0, p20

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockLeft:I

    move/from16 v0, p20

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockLeft:I

    move/from16 v0, p21

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockTop:I

    move/from16 v0, p21

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockTop:I

    move/from16 v0, p22

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockRight:I

    move/from16 v0, p22

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockRight:I

    move/from16 v0, p23

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockBottom:I

    move/from16 v0, p23

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockBottom:I

    if-eqz p24, :cond_0

    if-eqz p25, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    sub-int v1, p3, p24

    :goto_0
    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemLeft:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemLeft:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemTop:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemTop:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemRight:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemRight:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemBottom:I

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemBottom:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenLeft:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenLeft:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenTop:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenTop:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenWidth:I

    sub-int/2addr v5, v2

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenWidth:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenHeight:I

    sub-int/2addr v5, v4

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenHeight:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenRight:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenRight:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenBottom:I

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenBottom:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableRight:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableRight:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableBottom:I

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableBottom:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockRight:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockRight:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockBottom:I

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockBottom:I

    :cond_0
    return-void

    :pswitch_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    sub-int v3, p2, p24

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    sub-int v4, p3, p24

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    sub-int v2, p2, p24

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public processSViewCoverSetHiddenResultLw(I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    return v3

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const v2, -0x10000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    return v3

    :cond_1
    return v1
.end method

.method public processTorchlight(IZZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x18

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->TorchModeFlashSet(I)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mInputMethod:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    iput-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mInputMethod:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_1
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getReduceScreenPolicy()Lcom/android/server/policy/ReduceScreenPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/policy/ReduceScreenPolicy;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method public requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/SystemKeyManager;->requestMetaKeyEvent(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/SystemKeyManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public requestTraversalForCoverView()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastCoverAppCovered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public rotationForOrientationLw(II)I
    .locals 2

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    return v0

    :cond_1
    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverCloseRotation:I

    if-ltz v0, :cond_0

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "prefer rotation is set by cover"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverCloseRotation:I

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->rotationForSecondLcdOrientationLw(II)I

    move-result v0

    return v0

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public screenTurnedOff()V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceUserActivityTimeoutWin:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getReduceScreenPolicy()Lcom/android/server/policy/ReduceScreenPolicy;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/policy/ReduceScreenPolicy;->screenTurnedOff()V

    sget-boolean v3, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_AOD:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getAODWindowPolicy()Lcom/android/server/policy/AODWindowPolicy;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/policy/AODWindowPolicy;->screenTurnedOff()V

    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    const-string/jumbo v3, "com.sec.feature.cover.nfc_authentication"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getMateService()Lcom/samsung/android/mateservice/IMateService;

    move-result-object v1

    if-eqz v1, :cond_2

    const v3, 0x210002

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/samsung/android/mateservice/IMateService;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "RemoteException in screenTurnedOff: "

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_7

    iget-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarOnBottom:Z

    if-eqz v2, :cond_3

    if-eq p2, v5, :cond_0

    if-ne p2, v7, :cond_1

    :cond_0
    const v2, 0x10a002e

    return v2

    :cond_1
    if-eq p2, v3, :cond_2

    if-ne p2, v6, :cond_7

    :cond_2
    const v2, 0x10a002d

    return v2

    :cond_3
    if-eq p2, v5, :cond_4

    if-ne p2, v7, :cond_5

    :cond_4
    const v2, 0x10a0030

    return v2

    :cond_5
    if-eq p2, v3, :cond_6

    if-ne p2, v6, :cond_7

    :cond_6
    const v2, 0x10a002f

    return v2

    :cond_7
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_c

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_9

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isForceHideBySViewCover()Z

    move-result v2

    if-eqz v2, :cond_b

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCover:I

    if-nez v2, :cond_a

    const/4 v1, 0x1

    :goto_1
    if-nez v0, :cond_8

    if-eqz v1, :cond_c

    :cond_8
    const/4 v2, -0x1

    return v2

    :cond_9
    const/4 v0, 0x0

    goto :goto_0

    :cond_a
    const/4 v1, 0x0

    goto :goto_1

    :cond_b
    const/4 v1, 0x0

    goto :goto_1

    :cond_c
    return v4
.end method

.method public selectRotationAnimationLw([I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isForceHideBySViewCover()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x10a008a

    const/4 v1, 0x0

    aput v0, p1, v1

    const v0, 0x10a0089

    const/4 v1, 0x1

    aput v0, p1, v1

    :cond_0
    return-void
.end method

.method public sendBroadcastForAccessibility()V
    .locals 4

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "sendBroadcastForAccessibility() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.action.HOME_TRIPLE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v3, "com.samsung.permission.HOME_TRIPLE_CLICK"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public sendBroadcastForSafetyAssurance()V
    .locals 3

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "sendBroadcastForSafetyAssurance() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSafetyAssuranceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.app.safetyassurance.action.SAFETY_MESSAGE_TRIGGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Safety mesage broadcasted"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public sendHomeDoubleClickBR()V
    .locals 4

    sget-boolean v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "send HomeDoubleClickBR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.action.HOME_DOUBLE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v3, "com.samsung.android.permisson.HOME_DOUBLE_CLICK"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->semGetDisplayId()I

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "System key send to sidesync.source keycode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.android.sidesync30"

    const-string/jumbo v2, "com.sec.android.sidesync.source.WimpService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.intent.action.SYSTEM_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "KEYCODE"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "ACTION"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    const/4 v1, 0x1

    return v1

    :cond_1
    return v2
.end method

.method public setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setCoverSwitchState(Lcom/samsung/android/cover/CoverState;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportFlipCover:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportSViewCover:Z

    if-eqz v0, :cond_5

    :cond_0
    if-eqz p1, :cond_3

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v1, v1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    if-eq v0, v1, :cond_6

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCoverSwitchState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v2, v2, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isStatusBarSViewCover()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/EdgeWindowPolicy;->isEdgeWakeupPending()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v0

    invoke-interface {v0, v4, v3}, Lcom/android/server/policy/EdgeWindowPolicy;->requestEdgeScreenWakeup(ZI)V

    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/samsung/android/view/IWindowStateBridge;->disableHideSViewCoverOnce(Z)V

    :cond_4
    return v3

    :cond_5
    return v4

    :cond_6
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v1, v1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    if-eq v0, v1, :cond_3

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_1
.end method

.method public setFingerPrintPending()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    return-void
.end method

.method public setForceStatusBarFromSViewCover(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceStatusBarFromSViewCover:Z

    return-void
.end method

.method public setHideSViewCover(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCover:I

    return-void
.end method

.method public setHideSViewCoverWindowState(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    return-void
.end method

.method public setInitialDisplaySize(IIIII)V
    .locals 7

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->densityDpi:I

    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const v3, 0x1050017

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v3, p5

    div-int/2addr v3, v0

    iput v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    const v2, 0x10500c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInitialDisplaySize - mMobileKeyboardHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    if-eq p2, p4, :cond_0

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    int-to-float v2, v2

    int-to-float v3, p4

    int-to-float v4, p2

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInitialDisplaySize - mMobileKeyboardHeight Changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isKnoxDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v5, v2, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    sget v4, Lcom/samsung/android/framework/res/R$dimen;->task_bar_height:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v4, v5, v6

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    aput v4, v5, v6

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v4, v5, v6

    aput v4, v2, v3

    :cond_1
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getTspStateManagerPolicy()Lcom/android/server/policy/TspStateManagerPolicy;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/server/policy/TspStateManagerPolicy;->setInitialDisplaySize(IIII)V

    return-void

    :cond_2
    const/16 v0, 0xa0

    goto/16 :goto_0
.end method

.method public setMetaKeyConsumed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMetaKeyConsumed:Z

    return-void
.end method

.method public setProKioskReEnableVolumeUpKey(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    return-void
.end method

.method public setRotationLw(I)V
    .locals 6

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRotationLw() : rotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "PWM_ROTATION"

    const/16 v4, 0x15

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;II)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    :cond_0
    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRotationBooster:Lcom/samsung/android/os/SemDvfsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "semDvfsWakeupBooster.acquire()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getTspStateManagerPolicy()Lcom/android/server/policy/TspStateManagerPolicy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/policy/TspStateManagerPolicy;->setPortrait(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "HINT_DEVICE_WAKEUP.acquire is failed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setSafeModeReason(IIIII)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    if-eqz v0, :cond_5

    if-lez p1, :cond_0

    const-string/jumbo v0, "KEYCODE_MENU"

    :goto_0
    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSafeModeReason:Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    if-lez p2, :cond_1

    const-string/jumbo v0, "KEYCODE_S"

    goto :goto_0

    :cond_1
    if-lez p3, :cond_2

    const-string/jumbo v0, "KEYCODE_DPAD_CENTER"

    goto :goto_0

    :cond_2
    if-lez p4, :cond_3

    const-string/jumbo v0, "TRACKBALL_BTN_MOUSE"

    goto :goto_0

    :cond_3
    if-lez p5, :cond_4

    const-string/jumbo v0, "KEYCODE_VOLUME_DOWN"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "null"

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSafeModeReason:Ljava/lang/String;

    goto :goto_1
.end method

.method public setShowingSViewCover(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShowingSViewCover:Z

    return-void
.end method

.method public setUserRotationMode(II)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-ne v0, v2, :cond_1

    if-ne p1, v2, :cond_0

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "SPWM setUserRotationMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_rotation"

    invoke-static {v0, v1, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accelerometer_rotation_second"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accelerometer_rotation_second"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_1
    return v4
.end method

.method public subWindowTypeToLayerLw(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_0
    .end packed-switch
.end method

.method public systemBooted()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_WINDOW_MANAGER_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-static {v2}, Lcom/android/server/SamsungCoreServices;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/IWindowManagerServiceBridge;

    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    if-nez v2, :cond_1

    :try_start_0
    const-string/jumbo v2, "kioskmode"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "Blocked hw keys cache is being refreshed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/policy/SamsungPhoneWindowManager$23;

    invoke-direct {v3, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$23;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "Exception while getting kiosk mode service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public systemReady(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewConfiguration;->hasFakeMenuKey(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFakeMenuKeyRecent:Z

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/ViewConfiguration;->hasFakeMenuKey(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v2, Lcom/android/server/policy/SamsungPhoneWindowManager$21;

    invoke-direct {v2, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$21;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    :cond_0
    const-class v1, Lcom/android/server/vr/GearVrManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/GearVrManagerInternal;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/server/policy/SamsungPhoneWindowManager$22;

    invoke-direct {v1, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$22;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/vr/GearVrManagerInternal;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "HMT SamsungPhoneWindowManager failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public takeScreenshot(I)V
    .locals 14

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isScreenCaptureEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    sget-boolean v9, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v9, :cond_0

    const-string/jumbo v9, "SamsungPhoneWindowManager"

    const-string/jumbo v10, "can not takescreenshot"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    sget-boolean v9, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v9, :cond_2

    const-string/jumbo v9, "SamsungPhoneWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "takeScreenshot : event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", mPerformEditAfterScreenCapture = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", mServiceConnectionMap.size() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "2.0"

    const-string/jumbo v11, "version"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v4

    const-string/jumbo v9, "SamsungPhoneWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "screenshot: current active user is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "user"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    invoke-virtual {v7, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V

    :cond_3
    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v9

    invoke-direct {v2, v9}, Landroid/os/UserHandle;-><init>(I)V

    :cond_4
    iget-boolean v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    if-eqz v9, :cond_6

    iget-boolean v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    if-eqz v9, :cond_6

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v5, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_0
    monitor-exit v10

    return-void

    :cond_6
    :try_start_1
    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    const/4 v11, 0x3

    if-lt v9, v11, :cond_7

    const-string/jumbo v9, "SamsungPhoneWindowManager"

    const-string/jumbo v11, "ConnectedScreenshotService is over 3, so do not take screenshot."

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v10

    return-void

    :cond_7
    :try_start_2
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v9, "com.android.systemui"

    const-string/jumbo v11, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v9, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;I)V

    const-string/jumbo v9, "SamsungPhoneWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " screenshot is taken for user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-virtual {v9, v5, v1, v11, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v6, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;

    invoke-direct {v6, p0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Landroid/content/ServiceConnection;)V

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v9, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x2710

    invoke-virtual {v9, v6, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method public toggleEasyOneHand()Z
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleEasyOneHand() enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandEnabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandEnabled:I

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getReduceScreenPolicy()Lcom/android/server/policy/ReduceScreenPolicy;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/server/policy/ReduceScreenPolicy;->startService(I)V

    return v3

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public triggerPanicCall()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.action.PANIC_CALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "panic_call"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v3, "com.samsung.android.permission.PANIC_CALL"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Panic Call triggered."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateSViewCoverLayout(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemLeft:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemTop:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemRight:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemBottom:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenLeft:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenTop:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenWidth:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenHeight:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenLeft:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenTop:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenRight:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenBottom:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableLeft:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableTop:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableRight:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableBottom:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockLeft:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockTop:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockRight:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockBottom:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemLeft:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemTop:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemRight:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemBottom:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenLeft:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenTop:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenWidth:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenHeight:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenLeft:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenTop:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenRight:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenBottom:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableLeft:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableTop:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableRight:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableBottom:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockLeft:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockTop:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockRight:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockBottom:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    goto/16 :goto_0
.end method

.method public updateSettings()V
    .locals 36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    move-object/from16 v32, v0

    monitor-enter v32

    :try_start_0
    const-string/jumbo v31, "double_tab_launch_component"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string/jumbo v31, "/"

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v31, v0

    const/16 v33, 0x2

    move/from16 v0, v31

    move/from16 v1, v33

    if-lt v0, v1, :cond_0

    new-instance v23, Landroid/content/ComponentName;

    const/16 v31, 0x0

    aget-object v31, v28, v31

    const/16 v33, 0x1

    aget-object v33, v28, v33

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableDoublTapOnHomeCommand:Z

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapHomeUser:I

    const-string/jumbo v31, "double_tab_launch"

    const/16 v33, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v31, "SamsungPhoneWindowManager"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "updateSettings(). settings changed. doubleTapOnHomeBehavior : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ". mDoubleTapOnHomeBehavior : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ". mDoubleTapHomeUser "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapHomeUser:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v0, v9, :cond_1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string/jumbo v33, "direct_access"

    const/16 v34, 0x0

    const/16 v35, -0x2

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDirectAccessBehavior:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v0, v8, :cond_2

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDirectAccessBehavior:I

    :cond_2
    const-string/jumbo v31, "lcd_curtain"

    const/16 v33, 0x0

    const/16 v34, -0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v31

    const/16 v33, 0x1

    move/from16 v0, v31

    move/from16 v1, v33

    if-ne v0, v1, :cond_1a

    const-string/jumbo v31, "accessibility_enabled"

    const/16 v33, 0x0

    const/16 v34, -0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v31

    const/16 v33, 0x1

    move/from16 v0, v31

    move/from16 v1, v33

    if-ne v0, v1, :cond_19

    const/16 v31, 0x1

    :goto_0
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    const-string/jumbo v31, "edit_after_screen_capture"

    const/16 v33, 0x0

    const/16 v34, -0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v31

    if-eqz v31, :cond_1b

    const/16 v24, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    :cond_3
    const-string/jumbo v31, "send_emergency_message"

    const/16 v33, 0x0

    const/16 v34, -0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v31

    if-eqz v31, :cond_1c

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    :cond_4
    const-string/jumbo v31, "access_control_use"

    const/16 v33, 0x0

    const/16 v34, -0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v31

    if-eqz v31, :cond_1d

    const/16 v20, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    :cond_5
    const-string/jumbo v31, "access_control_enabled"

    const/16 v33, 0x0

    const/16 v34, -0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v31

    if-eqz v31, :cond_1e

    const/4 v15, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v0, v15, :cond_6

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    :cond_6
    const-string/jumbo v31, "easy_mode_switch"

    const/16 v33, 0x1

    const/16 v34, -0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v31

    if-nez v31, :cond_1f

    const/4 v13, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v0, v13, :cond_7

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    :cond_7
    const-string/jumbo v31, "desk_home_screen_display"

    const/16 v33, 0x1

    const/16 v34, -0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v31

    if-eqz v31, :cond_20

    const/4 v12, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v0, v12, :cond_8

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    :cond_8
    const-string/jumbo v31, "torchlight_enable"

    const/16 v33, 0x0

    const/16 v34, -0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v31

    if-eqz v31, :cond_21

    const/16 v19, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    :cond_9
    const-string/jumbo v31, "car_mode_on"

    const/16 v33, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    if-eqz v31, :cond_22

    const/4 v10, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v0, v10, :cond_a

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    :cond_a
    const-string/jumbo v31, "car_mode_blocking_system_key"

    const/16 v33, 0x0

    const/16 v34, -0x3

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v31

    if-eqz v31, :cond_23

    const/4 v6, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v0, v6, :cond_b

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    :cond_b
    const-string/jumbo v31, "sidesync_source_presentation"

    const/16 v33, 0x0

    const/16 v34, -0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v31

    if-eqz v31, :cond_24

    const/16 v18, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    :cond_c
    const-string/jumbo v31, "pen_attach_detach_vibration"

    const/16 v33, 0x1

    const/16 v34, -0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v31

    if-eqz v31, :cond_25

    const/16 v16, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v16

    if-eq v0, v1, :cond_d

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    move/from16 v31, v0

    if-eqz v31, :cond_e

    const-string/jumbo v31, "cover_note"

    const/16 v33, 0x0

    const/16 v34, -0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v31

    if-eqz v31, :cond_26

    const/4 v11, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverNoteEnabled:Z

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v0, v11, :cond_e

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverNoteEnabled:Z

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v31

    if-eqz v31, :cond_10

    const-string/jumbo v31, "folder_sounds_enabled"

    const/16 v33, 0x0

    const/16 v34, -0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v31

    if-eqz v31, :cond_27

    const/16 v21, 0x1

    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderSoundEnable:Z

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v21

    if-eq v0, v1, :cond_f

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderSoundEnable:Z

    :cond_f
    const-string/jumbo v31, "folder_open_sound"

    const/16 v33, -0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderOpenSound:Ljava/lang/String;

    const-string/jumbo v31, "folder_close_sound"

    const/16 v33, -0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderCloseSound:Ljava/lang/String;

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v31

    const/16 v33, 0x2

    move/from16 v0, v31

    move/from16 v1, v33

    if-ne v0, v1, :cond_11

    const-string/jumbo v31, "accelerometer_rotation_second"

    const/16 v33, 0x0

    const/16 v34, -0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v31

    if-eqz v31, :cond_28

    const/16 v27, 0x0

    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdUserRotationMode:I

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v27

    if-eq v0, v1, :cond_11

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdUserRotationMode:I

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    :cond_11
    const-string/jumbo v31, "assistant"

    const/16 v33, -0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_13

    const-string/jumbo v31, "/"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/16 v31, 0x0

    aget-object v31, v4, v31

    if-eqz v31, :cond_29

    const/16 v31, 0x0

    aget-object v31, v4, v31

    const-string/jumbo v33, "com.samsung.voiceserviceplatform"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_12

    const/16 v31, 0x0

    aget-object v31, v4, v31

    const-string/jumbo v33, "com.samsung.android.quickassist"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_29

    :cond_12
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsQDSetting:Z

    :cond_13
    :goto_f
    const-string/jumbo v31, "any_screen_enabled"

    const/16 v33, 0x0

    const/16 v34, -0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandEnabled:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v0, v14, :cond_14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandEnabled:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleted:Z

    move/from16 v31, v0

    if-eqz v31, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandEnabled:I

    move/from16 v31, v0

    const/16 v33, 0x1

    move/from16 v0, v31

    move/from16 v1, v33

    if-ne v0, v1, :cond_2a

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getReduceScreenPolicy()Lcom/android/server/policy/ReduceScreenPolicy;

    move-result-object v31

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Lcom/android/server/policy/ReduceScreenPolicy;->startService(I)V

    :cond_14
    :goto_10
    const-string/jumbo v31, "one_handed_op_wakeup_type"

    const/16 v33, 0x0

    const/16 v34, -0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandTriggerType:I

    sget-boolean v31, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v31, :cond_15

    const-string/jumbo v31, "SamsungPhoneWindowManager"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "mEasyOneHandEnabled="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandEnabled:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", mEasyOneHandTriggerType="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandTriggerType:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", mBootCompleted="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleted:Z

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const-string/jumbo v31, "display_outdoor_mode"

    const/16 v33, 0x0

    const/16 v34, -0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v31

    const/16 v33, 0x1

    move/from16 v0, v31

    move/from16 v1, v33

    if-ne v0, v1, :cond_2b

    const/16 v25, 0x1

    :goto_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOutdoorModeSetting:Z

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v25

    if-eq v0, v1, :cond_16

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOutdoorModeSetting:Z

    :cond_16
    const-string/jumbo v31, "spen_screen_on"

    const/16 v33, 0x0

    const/16 v34, -0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v31

    const/16 v33, 0x1

    move/from16 v0, v31

    move/from16 v1, v33

    if-ne v0, v1, :cond_2c

    const/16 v30, 0x1

    :goto_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeSPenSetting:Z

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v30

    if-eq v0, v1, :cond_17

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeSPenSetting:Z

    :cond_17
    const-string/jumbo v31, "mobile_keyboard"

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v31

    if-eqz v31, :cond_2d

    const/16 v22, 0x1

    :goto_13
    const-wide/16 v34, 0x0

    if-eqz v22, :cond_2e

    const/16 v31, 0x0

    :goto_14
    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->notifyCoverSwitchStateChanged(JZ)V

    if-eqz v29, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v31, v0

    const/16 v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_18
    monitor-exit v32

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->updateMySettings()V

    return-void

    :cond_19
    const/16 v31, 0x0

    goto/16 :goto_0

    :cond_1a
    const/16 v31, 0x0

    goto/16 :goto_0

    :cond_1b
    const/16 v24, 0x0

    goto/16 :goto_1

    :cond_1c
    const/16 v17, 0x0

    goto/16 :goto_2

    :cond_1d
    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_1e
    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_1f
    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_20
    const/4 v12, 0x0

    goto/16 :goto_6

    :cond_21
    const/16 v19, 0x0

    goto/16 :goto_7

    :cond_22
    const/4 v10, 0x0

    goto/16 :goto_8

    :cond_23
    const/4 v6, 0x0

    goto/16 :goto_9

    :cond_24
    const/16 v18, 0x0

    goto/16 :goto_a

    :cond_25
    const/16 v16, 0x0

    goto/16 :goto_b

    :cond_26
    const/4 v11, 0x0

    goto/16 :goto_c

    :cond_27
    const/16 v21, 0x0

    goto/16 :goto_d

    :cond_28
    const/16 v27, 0x1

    goto/16 :goto_e

    :cond_29
    const/16 v31, 0x0

    :try_start_1
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsQDSetting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_f

    :catchall_0
    move-exception v31

    monitor-exit v32

    throw v31

    :cond_2a
    :try_start_2
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getReduceScreenPolicy()Lcom/android/server/policy/ReduceScreenPolicy;

    move-result-object v31

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Lcom/android/server/policy/ReduceScreenPolicy;->stopService(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_10

    :cond_2b
    const/16 v25, 0x0

    goto/16 :goto_11

    :cond_2c
    const/16 v30, 0x0

    goto/16 :goto_12

    :cond_2d
    const/16 v22, 0x0

    goto/16 :goto_13

    :cond_2e
    const/16 v31, 0x1

    goto/16 :goto_14
.end method

.method public updateSystemUiVisibilityLw()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->updateNavigationBarIconColorLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastNavigationBarIconColor:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastNavigationBarIconColor:I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/SamsungPhoneWindowManager$31;

    invoke-direct {v2, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$31;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public updateTopActivity(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SystemKeyManager;->updateTopActivity(Landroid/content/ComponentName;)V

    return-void
.end method

.method public updateTspInputMethodPolicy(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getTspStateManagerPolicy()Lcom/android/server/policy/TspStateManagerPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mInputMethod:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0, v1}, Lcom/android/server/policy/TspStateManagerPolicy;->updateInputMethodPolicy(Landroid/view/WindowManagerPolicy$WindowState;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getTspStateManagerPolicy()Lcom/android/server/policy/TspStateManagerPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0, v1, v2}, Lcom/android/server/policy/TspStateManagerPolicy;->updateWindowPolicy(Landroid/view/WindowManagerPolicy$WindowState;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateWakeupPrevention()V
    .locals 7

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "wakeup_prevention"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v1, v3, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    if-eq v3, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateWakeupPrevention = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v3, "wakeup_prevention_packages"

    const/4 v5, -0x2

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->updateWakeupPreventionPackages(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public windowTypeToLayer(I)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, -0x1

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    :sswitch_1
    const/4 v0, 0x3

    return v0

    :sswitch_2
    const/4 v0, 0x5

    return v0

    :sswitch_3
    const/4 v0, 0x7

    return v0

    :sswitch_4
    const/16 v0, 0xb

    return v0

    :sswitch_5
    const/16 v0, 0xd

    return v0

    :sswitch_6
    const/16 v0, 0xe

    return v0

    :sswitch_7
    const/16 v0, 0x11

    return v0

    :sswitch_8
    const/16 v0, 0x13

    return v0

    :sswitch_9
    const/16 v0, 0x14

    return v0

    :sswitch_a
    const/16 v0, 0x18

    return v0

    :sswitch_b
    const/16 v0, 0x19

    return v0

    :sswitch_c
    const/16 v0, 0x1b

    return v0

    :sswitch_d
    const/16 v0, 0x1d

    return v0

    :sswitch_e
    const/16 v0, 0x1e

    return v0

    :sswitch_f
    const/16 v0, 0x23

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x830 -> :sswitch_9
        0x831 -> :sswitch_a
        0x832 -> :sswitch_6
        0x833 -> :sswitch_7
        0x834 -> :sswitch_e
        0x835 -> :sswitch_e
        0x836 -> :sswitch_c
        0x8b1 -> :sswitch_c
        0x8b2 -> :sswitch_7
        0x8b6 -> :sswitch_f
        0x8ca -> :sswitch_d
        0x8ce -> :sswitch_b
        0x8cf -> :sswitch_0
        0x8de -> :sswitch_8
        0x8df -> :sswitch_8
        0x960 -> :sswitch_5
        0x961 -> :sswitch_9
        0x962 -> :sswitch_3
        0x963 -> :sswitch_2
        0x964 -> :sswitch_4
        0x965 -> :sswitch_a
        0x966 -> :sswitch_1
        0x967 -> :sswitch_f
        0x968 -> :sswitch_d
    .end sparse-switch
.end method
