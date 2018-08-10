.class public Lcom/android/systemui/volume/SecVolumeDialogImpl;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/SecVolumeDialogImpl$1;,
        Lcom/android/systemui/volume/SecVolumeDialogImpl$2;,
        Lcom/android/systemui/volume/SecVolumeDialogImpl$3;,
        Lcom/android/systemui/volume/SecVolumeDialogImpl$4;,
        Lcom/android/systemui/volume/SecVolumeDialogImpl$5;,
        Lcom/android/systemui/volume/SecVolumeDialogImpl$6;,
        Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;,
        Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;,
        Lcom/android/systemui/volume/SecVolumeDialogImpl$H;,
        Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;,
        Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final M_LATTE:Z

.field private static final SHOW_VOLUMEPANEL_IN_CLEARCOVER:Z

.field private static SUPPORT_DEFAULTSTREAM_NOTIFICATION:Z

.field private static final TAG:Ljava/lang/String;

.field private static final VOICE_ENABLE_URI:Landroid/net/Uri;

.field private static mIsSafetyWarningShowing:Z

.field private static sCounterModeAdjustMediaVolumeOnly:J

.field private static sCounterModeDefault:J

.field private static sCounterVolumeLimiterCancle:J

.field private static sCounterVolumeLimiterSetting:J

.field private static sCoverOpened:Z

.field private static sCoverType:I

.field private static final sHardwareAccelerated:Z

.field private static sIsDexMode:Z

.field private static final sPrevSystemRendererDisabled:Z


# instance fields
.field private final DISABLED_ALPHA_VALUE:F

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mAccessibility:Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;

.field private final mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveChildIndex:I

.field private mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

.field private mActiveStream:I

.field private mActiveStreamChanged:Z

.field private mAfterHeight:I

.field private mApp:Lcom/android/systemui/SystemUIApplication;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAutomute:Z

.field private mBTDeviceName:Ljava/lang/String;

.field private mBTScoDeviceName:Ljava/lang/String;

.field private mBixbyStatus:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBtScoDevice:Landroid/bluetooth/BluetoothDevice;

.field private mCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

.field private final mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mClickExpand:Landroid/view/View$OnClickListener;

.field private mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/plugins/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mCurrentWindowWidth:I

.field private mDefaulVolumeControlHeader:Landroid/widget/TextView;

.field private mDefaultVolumeControlSwitch:Landroid/widget/Switch;

.field private mDensity:I

.field private mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

.field private mDialogContentView:Landroid/view/ViewGroup;

.field private mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

.field private mDialogDndView:Landroid/view/ViewGroup;

.field private mDialogView:Landroid/view/ViewGroup;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDownY:F

.field private final mDynamic:Landroid/util/SparseBooleanArray;

.field private mEarProtectLevel:I

.field private mEarProtectLevelforLockScreen:I

.field private mEarProtectLimit:I

.field private mExpandButton:Landroid/widget/ImageButton;

.field private mExpandButtonAnimationDuration:I

.field private mExpandButtonAnimationRunning:Z

.field private mExpandButtonColor:Landroid/content/res/ColorStateList;

.field private mExpandButtonDefaultColor:Landroid/content/res/ColorStateList;

.field private mExpandCollapseAnimating:Z

.field private mExpanded:Z

.field private mExtraForRingerMode:Ljava/lang/String;

.field private mFixedVolumeToast:Landroid/widget/Toast;

.field private mGhostView:Landroid/view/View;

.field private final mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

.field private mHfp:Landroid/bluetooth/BluetoothHeadset;

.field private mHovering:Z

.field private mIconActiveColor:Landroid/content/res/ColorStateList;

.field private mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

.field private mIconEarShockColor:Landroid/content/res/ColorStateList;

.field private mIconEarShockDefaultColor:Landroid/content/res/ColorStateList;

.field private mIconMutedColor:Landroid/content/res/ColorStateList;

.field private mIconMutedDefaultColor:Landroid/content/res/ColorStateList;

.field private mIsAllSoundOff:Z

.field private mIsSafeMediaVolumeDeviceOn:Z

.field private mIsSafeMediaVolumeDeviceOnForMultiSound:Z

.field private mIsShowingSCoverWarning:Z

.field private mIsSwipe:Z

.field private mIsTalkbackEnabled:Z

.field private mIsTraking:Z

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

.field private mLockScreenDialogContentView:Landroid/view/ViewGroup;

.field private mMaxSmartViewVol:I

.field private mMinSmartViewVol:I

.field private mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

.field private mNeedScroll:Z

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mOrientation:I

.field private mPendingRecheckAll:Z

.field private mPendingStateChanged:Z

.field private mPinDevice:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousBixbyStatus:I

.field private mProgressBgColor:Landroid/content/res/ColorStateList;

.field private mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

.field private mProgressColor:Landroid/content/res/ColorStateList;

.field private mProgressDefaultColor:Landroid/content/res/ColorStateList;

.field private mRemoteControlMaxVolume:I

.field private final mResources:Landroid/content/res/Resources;

.field private mRowHeight:I

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mRowsLockScreen:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field private mScover:Lcom/samsung/android/sdk/cover/Scover;

.field mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

.field private mShowA11yStream:Z

.field private mShowFullZen:Z

.field private mShowing:Z

.field private mSilentMode:Z

.field private mSmartViewRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

.field private mSmartViewTouchToast:Landroid/widget/Toast;

.field private mSmartViewisMute:Z

.field private mSoundID:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mSwipeDistance:I

.field private mThumbColor:Landroid/content/res/ColorStateList;

.field private mThumbDefaultColor:Landroid/content/res/ColorStateList;

.field private mThumbDisabledColor:Landroid/content/res/ColorStateList;

.field private mTouchDown:Z

.field private mUpY:F

.field private mVisibleRowIndex:I

.field private final mVoiceCapable:Z

.field private mVolumeLimiterDialog:Landroid/app/AlertDialog;

.field private mVolumePanelBgColor:Landroid/content/res/ColorStateList;

.field private mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

.field private mVolumeTitleColor:Landroid/content/res/ColorStateList;

.field private mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

.field private mWindowType:I

.field private mZenMode:I

.field private final mZenPanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->SHOW_VOLUMEPANEL_IN_CLEARCOVER:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/samsung/android/sdk/cover/ScoverManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDefaultVolumeControlSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDensity:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/systemui/volume/SecVolumeDialogImpl;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDownY:F

    return v0
.end method

.method static synthetic -get18(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconActiveColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconMutedColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    return v0
.end method

.method static synthetic -get23(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsShowingSCoverWarning:Z

    return v0
.end method

.method static synthetic -get24(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSwipe:Z

    return v0
.end method

.method static synthetic -get25(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsTalkbackEnabled:Z

    return v0
.end method

.method static synthetic -get26(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsTraking:Z

    return v0
.end method

.method static synthetic -get27(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -get28(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    return-object v0
.end method

.method static synthetic -get29(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mLockScreenDialogContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveChildIndex:I

    return v0
.end method

.method static synthetic -get30(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMaxSmartViewVol:I

    return v0
.end method

.method static synthetic -get31(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMinSmartViewVol:I

    return v0
.end method

.method static synthetic -get32(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogMotion;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    return-object v0
.end method

.method static synthetic -get33(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mNeedScroll:Z

    return v0
.end method

.method static synthetic -get34(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mOrientation:I

    return v0
.end method

.method static synthetic -get35(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPendingRecheckAll:Z

    return v0
.end method

.method static synthetic -get36(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPendingStateChanged:Z

    return v0
.end method

.method static synthetic -get37(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic -get38(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get39(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    return-object v0
.end method

.method static synthetic -get40(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get41(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/samsung/android/sdk/cover/Scover;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    return-object v0
.end method

.method static synthetic -get42(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/samsung/android/media/SemSoundAssistantManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    return-object v0
.end method

.method static synthetic -get43(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    return v0
.end method

.method static synthetic -get44(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSilentMode:Z

    return v0
.end method

.method static synthetic -get45(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmartViewRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    return-object v0
.end method

.method static synthetic -get46(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmartViewisMute:Z

    return v0
.end method

.method static synthetic -get47(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic -get48(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic -get49(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSwipeDistance:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get50(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mTouchDown:Z

    return v0
.end method

.method static synthetic -get51(Lcom/android/systemui/volume/SecVolumeDialogImpl;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mUpY:F

    return v0
.end method

.method static synthetic -get52(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVoiceCapable:Z

    return v0
.end method

.method static synthetic -get53()J
    .locals 2

    sget-wide v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCounterModeAdjustMediaVolumeOnly:J

    return-wide v0
.end method

.method static synthetic -get54()J
    .locals 2

    sget-wide v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCounterModeDefault:J

    return-wide v0
.end method

.method static synthetic -get55()J
    .locals 2

    sget-wide v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCounterVolumeLimiterCancle:J

    return-wide v0
.end method

.method static synthetic -get56()J
    .locals 2

    sget-wide v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCounterVolumeLimiterSetting:J

    return-wide v0
.end method

.method static synthetic -get57()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    return v0
.end method

.method static synthetic -get58()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sIsDexMode:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialog$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/ConfigurableTexts;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHovering:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSwipe:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsTalkbackEnabled:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsTraking:Z

    return p1
.end method

.method static synthetic -set14(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMaxSmartViewVol:I

    return p1
.end method

.method static synthetic -set15(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMinSmartViewVol:I

    return p1
.end method

.method static synthetic -set16(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mOrientation:I

    return p1
.end method

.method static synthetic -set17(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPendingRecheckAll:Z

    return p1
.end method

.method static synthetic -set18(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPendingStateChanged:Z

    return p1
.end method

.method static synthetic -set19(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/volume/SecVolumeDialogImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBTDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set20(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowA11yStream:Z

    return p1
.end method

.method static synthetic -set21(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmartViewTouchToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic -set22(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmartViewisMute:Z

    return p1
.end method

.method static synthetic -set23(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mTouchDown:Z

    return p1
.end method

.method static synthetic -set24(Lcom/android/systemui/volume/SecVolumeDialogImpl;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mUpY:F

    return p1
.end method

.method static synthetic -set25(J)J
    .locals 0

    sput-wide p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCounterModeAdjustMediaVolumeOnly:J

    return-wide p0
.end method

.method static synthetic -set26(J)J
    .locals 0

    sput-wide p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCounterModeDefault:J

    return-wide p0
.end method

.method static synthetic -set27(J)J
    .locals 0

    sput-wide p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCounterVolumeLimiterCancle:J

    return-wide p0
.end method

.method static synthetic -set28(J)J
    .locals 0

    sput-wide p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCounterVolumeLimiterSetting:J

    return-wide p0
.end method

.method static synthetic -set29(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    return p0
.end method

.method static synthetic -set3(Lcom/android/systemui/volume/SecVolumeDialogImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBTScoDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set30(I)I
    .locals 0

    sput p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    return p0
.end method

.method static synthetic -set4(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBixbyStatus:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDensity:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/volume/SecVolumeDialogImpl;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDownY:F

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandCollapseAnimating:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mFixedVolumeToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHfp:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isSmartViewEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->shouldBeVisibleH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->initDialog()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/volume/SecVolumeDialogImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->onDismissSafeVolumeWarning()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->playSoundH()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->refreshMorebuttonTintColor()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->refreshResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setDialogWindowGravity()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/systemui/volume/SecVolumeDialogImpl;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap20(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->showH(I)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->showSmartViewTouchToast()V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->showVolumeLimiterDialog()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->stopSoundH()V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->themeChanged()V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateExpandedH(Z)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->zenModeChanged()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->computeTimeoutH()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/widget/SeekBar;I)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getImpliedMediaVolumeLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->allSoundMuteChanged(Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->doRefresh()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->expandCollapseDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-class v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    sput v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    sput-boolean v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    sput-boolean v1, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafetyWarningShowing:Z

    sput-wide v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCounterModeAdjustMediaVolumeOnly:J

    sput-wide v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCounterModeDefault:J

    sput-wide v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCounterVolumeLimiterSetting:J

    sput-wide v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCounterVolumeLimiterCancle:J

    sput-boolean v1, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sIsDexMode:Z

    sget-boolean v0, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sPrevSystemRendererDisabled:Z

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sHardwareAccelerated:Z

    const-string/jumbo v0, "latte"

    const-string/jumbo v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->M_LATTE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VOLUMEPANEL_IN_CLEARCOVER"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->SHOW_VOLUMEPANEL_IN_CLEARCOVER:Z

    const-string/jumbo v0, "content://com.samsung.android.bixby.agent.settings/bixby_voice_isenable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->VOICE_ENABLE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowsLockScreen:Ljava/util/List;

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mEarProtectLevelforLockScreen:I

    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsTalkbackEnabled:Z

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;

    invoke-direct {v5, p0, v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;)V

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;

    iput-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAutomute:Z

    iput-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSilentMode:Z

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHovering:Z

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundID:I

    iput-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    iput-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iput-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsShowingSCoverWarning:Z

    const v5, 0x3ecccccd    # 0.4f

    iput v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->DISABLED_ALPHA_VALUE:F

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStreamChanged:Z

    const-string/jumbo v5, "Ringtone"

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExtraForRingerMode:Ljava/lang/String;

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveChildIndex:I

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVisibleRowIndex:I

    iput-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCurrentWindowWidth:I

    iput-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafeMediaVolumeDeviceOn:Z

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mEarProtectLimit:I

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mEarProtectLevel:I

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMinSmartViewVol:I

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMaxSmartViewVol:I

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmartViewisMute:Z

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPinDevice:I

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSwipe:Z

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsTraking:Z

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBixbyStatus:I

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPreviousBixbyStatus:I

    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialogImpl$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$1;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialogImpl$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$3;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenPanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mClickExpand:Landroid/view/View$OnClickListener;

    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialogImpl$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$5;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialogImpl$6;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$6;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    const-class v5, Landroid/app/NotificationManager;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v6, 0x11200c1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    sput-boolean v5, Lcom/android/systemui/volume/SecVolumeDialogImpl;->SUPPORT_DEFAULTSTREAM_NOTIFICATION:Z

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "accessibility"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    const-string/jumbo v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPowerManager:Landroid/os/PowerManager;

    new-instance v5, Lcom/samsung/android/media/SemSoundAssistantManager;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/volume/Util;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVoiceCapable:Z

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->makeSound()V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateTintColor()V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateDefaultTintColor()V

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowsLockScreen:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->refreshLockScreenDialogResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->initCoverManager(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->registerBroadcastReceiver()V

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/SystemUIApplication;

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mApp:Lcom/android/systemui/SystemUIApplication;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mApp:Lcom/android/systemui/SystemUIApplication;

    const-class v6, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v5, v6}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$8;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v1, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5, v1, v8}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "display"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    iput-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v4, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;

    invoke-direct {v4, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    invoke-virtual {v5, v4, v6}, Landroid/hardware/display/DisplayManager;->semRegisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V

    return-void
.end method

.method private addAdditionalPanels()V
    .locals 15

    const v14, 0x7f0a057e

    const v13, 0x7f0a0574

    const v12, 0x7f0a0573

    const/4 v11, 0x0

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v6

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_5

    const/4 v1, 0x1

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v7, 0x7f0a0578

    invoke-virtual {v6, v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0d01db

    invoke-virtual {v6, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    invoke-virtual {v6, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;)I

    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    invoke-static {v6}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    if-eqz v6, :cond_6

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    const v7, 0x7f0a057d

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_1

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    invoke-static {v6}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    if-eqz v6, :cond_7

    :goto_2
    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f120b9a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6, v5}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v7, 0x7f0a0577

    invoke-virtual {v6, v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0d01d9

    invoke-virtual {v6, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    invoke-virtual {v6, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDefaulVolumeControlHeader:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDefaulVolumeControlHeader:Landroid/widget/TextView;

    new-instance v7, Lcom/android/systemui/volume/SecVolumeDialogImpl$21;

    invoke-direct {v7, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$21;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;)I

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f120286

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6, v5}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v6, Lcom/android/systemui/volume/SecVolumeDialogImpl$22;

    invoke-direct {v6, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$22;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;)I

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f120285

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6, v5}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    const v7, 0x7f0a0571

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_3

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const v7, 0x7f0a0572

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDefaultVolumeControlSwitch:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDefaultVolumeControlSwitch:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    return-void

    :cond_5
    const/4 v1, 0x2

    goto/16 :goto_0

    :cond_6
    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    if-eqz v6, :cond_0

    goto/16 :goto_1

    :cond_7
    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    if-eqz v6, :cond_2

    goto/16 :goto_2

    :cond_8
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f120921

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3
.end method

.method private addExistingRows()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v4

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get11(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->initRow(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;IIIZ)V

    if-lez v7, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addSpacer(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addExistingRowsLockScreen()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowsLockScreen:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowsLockScreen:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v4

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get11(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->initRow_lockscreen(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;IIIZ)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mLockScreenDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mLockScreenDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addRow(IIIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZZ)V

    return-void
.end method

.method private addRow(IIIZZ)V
    .locals 6

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->initRow(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;IIIZ)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addSpacer(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmartViewRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    :cond_1
    return-void
.end method

.method private addRow_lockscreen(IIIZ)V
    .locals 6

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->initRow_lockscreen(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;IIIZ)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mLockScreenDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mLockScreenDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowsLockScreen:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSpacer(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    .locals 5

    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x1020000

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070712

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v2, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set15(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/view/View;)Landroid/view/View;

    return-void
.end method

.method private allSoundMuteChanged(Z)V
    .locals 4

    const/4 v3, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mFixedVolumeToast:Landroid/widget/Toast;

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    invoke-static {v1}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f120b9a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    const v2, 0x7f0a057e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f120921

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private computeTimeoutH()I
    .locals 3

    const/16 v2, 0x1388

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;->-get0(Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHovering:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e80

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    monitor-exit v0

    return v2

    :cond_2
    monitor-exit v0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    if-eqz v0, :cond_4

    :cond_3
    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_4
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    const/16 v0, 0x5dc

    return v0

    :cond_5
    const/16 v0, 0xbb8

    return v0
.end method

.method private createAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .locals 3

    const-string/jumbo v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private createAlphaAnimSet(I)Landroid/animation/AnimatorSet;
    .locals 12

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v8

    iget v9, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    if-eq v8, v9, :cond_0

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v7

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v6

    const/4 v8, 0x3

    if-ne p1, v8, :cond_1

    invoke-direct {p0, v7, v10, v11}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->createAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-direct {p0, v6, v10, v11}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->createAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :goto_1
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v7, v11, v10}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->createAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-direct {p0, v6, v11, v10}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->createAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eqz v8, :cond_3

    const-wide/16 v8, 0x12c

    invoke-virtual {v3, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :goto_2
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v3

    :cond_3
    const-wide/16 v8, 0x96

    invoke-virtual {v3, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_2
.end method

.method private createCollapseExpandAnim()Landroid/animation/AnimatorSet;
    .locals 15

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    if-nez v10, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    :cond_0
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    const/4 v10, 0x2

    new-array v10, v10, [F

    int-to-float v11, v5

    const/4 v12, 0x0

    aput v11, v10, v12

    iget v11, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAfterHeight:I

    int-to-float v11, v11

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    const-wide/16 v10, 0x12c

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v10, Lcom/android/systemui/volume/SecVolumeDialogImpl$16;

    invoke-direct {v10, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$16;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-virtual {v7, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v0, 0x0

    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    :goto_0
    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    const/4 v3, 0x4

    :goto_1
    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-nez v10, :cond_4

    iget v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveChildIndex:I

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v10}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v10, :cond_3

    const/4 v10, 0x0

    return-object v10

    :cond_1
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v10}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowHeight:I

    iget v12, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVisibleRowIndex:I

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f070712

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iget v12, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVisibleRowIndex:I

    mul-int/2addr v11, v12

    add-int v1, v10, v11

    const/4 v3, 0x3

    goto :goto_1

    :cond_3
    new-instance v10, Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    iget v10, v9, Landroid/graphics/Rect;->right:I

    iget v11, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    iget v12, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    invoke-direct {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    invoke-virtual {v10, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setTop(I)V

    :goto_2
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    const-string/jumbo v11, "translationY"

    const/4 v12, 0x2

    new-array v12, v12, [F

    int-to-float v13, v6

    const/4 v14, 0x0

    aput v13, v12, v14

    int-to-float v13, v1

    const/4 v14, 0x1

    aput v13, v12, v14

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v10, 0x12c

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_4
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->createAlphaAnimSet(I)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-nez v10, :cond_6

    iget v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveChildIndex:I

    if-eqz v10, :cond_6

    if-eqz v0, :cond_6

    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    const/4 v11, 0x2

    aput-object v2, v10, v11

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_3
    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eqz v10, :cond_7

    const-wide/16 v10, 0x258

    invoke-virtual {v4, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v10, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f333333    # 0.7f

    invoke-direct {v10, v11, v12}, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;-><init>(FF)V

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_4
    new-instance v10, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;

    invoke-direct {v10, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v4

    :cond_5
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v11}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setTop(I)V

    goto :goto_2

    :cond_6
    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v2, v10, v11

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3

    :cond_7
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4
.end method

.method private createCoverMsgRemoteView()Landroid/widget/RemoteViews;
    .locals 3

    sget v1, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d01d2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d01d0

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private doRefresh()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mGhostView:Landroid/view/View;

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->removeCachedBitmap()V

    return-void
.end method

.method private expandCollapseDialog()V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandCollapseAnimating:Z

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eq v2, v3, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x3

    invoke-static {v2, v4, v3}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    const v2, 0x7f1200f1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iput v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAfterHeight:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateExpandedH(Z)V

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateExpandedWindowHeight()V

    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->createCollapseExpandAnim()Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const v2, 0x7f1200f2

    goto :goto_1

    :cond_5
    iput-boolean v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mNeedScroll:Z

    goto :goto_2
.end method

.method private findRow(I)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getActiveRow()Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    if-ne v3, v4, :cond_0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveChildIndex:I

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveChildIndex:I

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    return-object v3
.end method

.method private getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v3

    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "IllegalArgumentException happens in getBitmapDrawableFromView()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 5

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    div-int/lit8 v3, v1, 0x64

    add-int/lit8 v2, v3, -0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p1, v1, :cond_1

    div-int/lit8 v0, v1, 0x64

    goto :goto_0

    :cond_1
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v0, v3, 0x1

    goto :goto_0
.end method

.method private static getImpliedMediaVolumeLevel(I)I
    .locals 1

    div-int/lit8 p0, p0, 0xa

    mul-int/lit8 v0, p0, 0xa

    return v0
.end method

.method private getSmartViewDeviceName()Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    :cond_1
    return-object v3

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/hardware/display/SemDlnaDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    :cond_3
    return-object v3

    :cond_4
    return-object v3
.end method

.method private getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;
    .locals 4

    iget-object v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t find translation for stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    return-object v1
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v1}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v1

    sput v1, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "initCoverManager fail NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initDialog()V
    .locals 12

    const/4 v2, 0x0

    const v11, 0x1080a8c

    const v10, 0x1080a79

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->dismiss()V

    invoke-direct {p0, v8}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateExpandedH(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0, v8}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    :cond_0
    new-instance v0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mWindowType:I

    invoke-direct {p0, v0, v1, v8}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setDialogWindowAttributes(Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;IZ)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->onDismissLockScreenDialog()V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0, v8}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    :cond_1
    new-instance v0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mWindowType:I

    invoke-direct {p0, v0, v1, v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setDialogWindowAttributes(Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;IZ)V

    new-instance v0, Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iput-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHovering:Z

    iput-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isSystemSettingAllSoundOff()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sIsDexMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v1, 0x7f0d019b

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->setContentView(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0575

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$10;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0576

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    iput-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const v1, 0x7f0a057f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mClickExpand:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateWindowWidthH()V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateExpandButtonH()V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v1, 0x7f0d00db

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->setContentView(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0317

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mLockScreenDialogContentView:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogMotion;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialogImpl$11;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$11;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogMotion;-><init>(Landroid/app/Dialog;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/volume/VolumeDialogMotion$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->setContext(Landroid/content/Context;)V

    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mEarProtectLimit:I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVoiceCapable:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    invoke-direct {p0, v0, v11, v10, v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, v11, v10, v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    const/4 v0, 0x5

    invoke-direct {p0, v0, v11, v10, v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    :goto_1
    invoke-direct {p0, v9, v11, v10, v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, v11, v10, v8}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    const v0, 0x1080a77

    const v1, 0x1080a77

    invoke-direct {p0, v8, v0, v1, v8}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    const/4 v0, 0x6

    const v1, 0x1080a75

    const v2, 0x1080a75

    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    const/16 v0, 0xa

    invoke-direct {p0, v0, v11, v10, v8}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    const/16 v0, 0xe

    invoke-direct {p0, v0, v11, v10, v8}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    const/16 v0, 0xb

    const v1, 0x7f080786

    const v2, 0x7f080788

    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    const/16 v0, 0xc

    invoke-direct {p0, v0, v11, v10, v8}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    const/4 v0, 0x3

    const v1, 0x7f08078e

    const v2, 0x7f08078a

    invoke-direct {p0, v0, v1, v2, v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow_lockscreen(IIIZ)V

    const/16 v0, 0xc

    const v1, 0x7f08078e

    const v2, 0x7f08078a

    invoke-direct {p0, v0, v1, v2, v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow_lockscreen(IIIZ)V

    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addAdditionalPanels()V

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sIsDexMode:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    const v1, 0x7f0d01da

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->setContentView(I)V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x5

    invoke-direct {p0, v0, v11, v10, v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, v11, v10, v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addExistingRows()V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addExistingRowsLockScreen()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButtonAnimationDuration:I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070704

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSwipeDistance:I

    return-void
.end method

.method private initRow(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;IIIZ)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    const/16 v5, 0xb

    if-ne p2, v5, :cond_4

    const/4 v1, 0x1

    :goto_0
    invoke-static {p1, p2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    invoke-static {p1, p3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set9(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    invoke-static {p1, p4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set8(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    invoke-static {p1, p5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set11(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)Z

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0d019c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/view/View;)Landroid/view/View;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0581

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {p1, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set6(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0583

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    invoke-static {p1, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, p1, v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    if-eqz v1, :cond_5

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setTouchDisabled(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->semSetMode(I)V

    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set0(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0582

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    invoke-static {p1, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setFocusable(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-static {p1, p3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set2(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;

    invoke-direct {v6, p0, p1, p2, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;IZ)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_7

    const/4 v0, 0x1

    :goto_2
    const/4 v2, 0x0

    if-eqz v1, :cond_9

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v5, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isSmartViewEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v6, "mivo"

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_0
    :goto_3
    iput v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMaxSmartViewVol:I

    :goto_4
    if-eqz v0, :cond_c

    add-int/lit8 v5, v2, 0x1

    mul-int/lit8 v3, v5, 0x64

    :goto_5
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setMax(I)V

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->semSetMin(I)V

    :cond_1
    :goto_6
    const/4 v5, 0x3

    if-eq p2, v5, :cond_2

    const/16 v5, 0xc

    if-ne p2, v5, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setImpliedEarProtectLevel()V

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    :cond_9
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_a

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    goto :goto_4

    :cond_a
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v5

    const/16 v6, 0x64

    if-ge v5, v6, :cond_b

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    goto :goto_4

    :cond_b
    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRemoteControlMaxVolume:I

    goto :goto_4

    :cond_c
    if-eqz v1, :cond_d

    move v3, v2

    goto :goto_5

    :cond_d
    mul-int/lit8 v3, v2, 0x64

    goto :goto_5

    :cond_e
    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v5, :cond_10

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isSmartViewEnabled()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v6, "mavo"

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_f
    :goto_7
    iput v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMinSmartViewVol:I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->semSetMin(I)V

    goto :goto_6

    :cond_10
    const/4 v4, 0x0

    goto :goto_7
.end method

.method private initRow_lockscreen(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;IIIZ)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p1, p2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    invoke-static {p1, p3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set9(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    invoke-static {p1, p4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set8(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    invoke-static {p1, p5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set11(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)Z

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00dc

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/view/View;)Landroid/view/View;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0583

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;

    invoke-direct {v2, p0, p1, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setTouchDisabled(Z)V

    invoke-static {p1, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set0(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0582

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    mul-int/lit8 v0, v1, 0x64

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    if-eq p2, v5, :cond_0

    const/16 v1, 0xc

    if-ne p2, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setImpliedEarProtectLevelforLockScreenDialog()V

    :cond_1
    return-void
.end method

.method private initTrackingValues()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set18(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)Z

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsTraking:Z

    return-void
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "value"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private isAttached()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBixbyServiceOn()Z
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v10

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialogImpl;->VOICE_ENABLE_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "bixby_voice_isenable"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isBixbyServiceOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v8, v9, :cond_1

    move v0, v9

    :goto_0
    return v0

    :cond_1
    move v0, v10

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isBixbyServiceOn FALSE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method

.method public static isClearCoverClosed()Z
    .locals 2

    sget v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDexMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sIsDexMode:Z

    return v0
.end method

.method private isDlnaEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsDLNAStatus:Z

    return v0
.end method

.method private isExtraButtonOn()Z
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v4, "extraVolume"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v4, "audioParam;extraVolume"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isExtraButtonOn : extraButtonOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isExtraButtonOn : extraButtonOnDevice = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    :goto_0
    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isExtraButtonOn : rtvalue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isInLockScreen()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mApp:Lcom/android/systemui/SystemUIApplication;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mApp:Lcom/android/systemui/SystemUIApplication;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mApp:Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardState()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isShadeLockedState()Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSafeWarningVisible()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafetyWarningShowing:Z

    return v0
.end method

.method private isSmartViewEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsDLNAStatus:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsSupportTvVolumeControl:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSystemSettingAllSoundOff()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "all_sound_off"

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "all_sound_off -  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private isUserInCall()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUserInCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeSound()V
    .locals 4

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sound : new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->SUPPORT_DEFAULTSTREAM_NOTIFICATION:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->semSetStreamType(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    const-string/jumbo v1, "system/media/audio/ui/TW_Volume_control.ogg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundID:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->semSetStreamType(I)V

    goto :goto_0
.end method

.method private onDismissLockScreenDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mApp:Lcom/android/systemui/SystemUIApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SystemUIApplication or StatusBar is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mApp:Lcom/android/systemui/SystemUIApplication;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mApp:Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Set KeyguardStatubar Visibility : TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setForceKeyguardStatusBarVisibility(Z)V

    :cond_2
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mLockScreenDialog is dismissing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->dismiss()V

    return-void
.end method

.method private onDismissSafeVolumeWarning()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsShowingSCoverWarning:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sendCoverWarningMsgIntent(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onShowDialog()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "The Dialog is not shown because LCD_OFF Status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->startShow()V

    const/4 v0, 0x1

    return v0
.end method

.method private onShowLockScreenDialog()Z
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/android/internal/statusbar/IStatusBarService;->getQuickSettingPanelExpandState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mApp:Lcom/android/systemui/SystemUIApplication;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/SystemUIApplication;

    iput-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mApp:Lcom/android/systemui/SystemUIApplication;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mApp:Lcom/android/systemui/SystemUIApplication;

    const-class v5, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4, v5}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->isShadeLockedState()Z

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_5

    :cond_3
    if-nez v2, :cond_4

    xor-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Set KeyguardStatubar Visibility : FALSE & Show the mLockScreenDialog"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->setForceKeyguardStatusBarVisibility(Z)V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->show()V

    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v0

    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "RemoteException when call the getPanelExpandState"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_4
    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "The LockScreenDialog is not shown because StatusBar is expanded"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v4, v6}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    return v6

    :cond_5
    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "The LockScreenDialog is not shown because ActiveStream is not music OR LCD_OFF Status"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v4, v6}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    return v6
.end method

.method private onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 14

    const/4 v13, 0x3

    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    if-nez v7, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    :cond_0
    sget-boolean v7, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    sget-boolean v7, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sIsDexMode:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput-boolean v11, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateWindowWidthH()V

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v7}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    sget-boolean v7, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onStateChangedH animating="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-eqz v0, :cond_5

    iput-boolean v11, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPendingStateChanged:Z

    return-void

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v2, 0x0

    :goto_1
    iget-object v7, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_8

    iget-object v7, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v7, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v7, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v7, :cond_7

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-direct {p0, v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->findRow(I)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v7

    if-nez v7, :cond_6

    iget v7, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    iput v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRemoteControlMaxVolume:I

    const v7, 0x7f08033e

    const v8, 0x7f08033f

    invoke-direct {p0, v6, v7, v8, v11}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->addRow(IIIZ)V

    goto :goto_2

    :cond_8
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v13}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v1

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v7

    iput v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPinDevice:I

    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPinDevice:I

    if-ne v1, v7, :cond_9

    iput v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPinDevice:I

    :cond_9
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafeMediaVolumeDeviceOn:Z

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPinDevice:I

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->isSafeMediaVolumeDeviceOn(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    iget v8, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    if-eq v7, v8, :cond_b

    iput-boolean v11, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStreamChanged:Z

    iget v7, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    iput v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-direct {p0, v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->rescheduleTimeoutH()V

    :goto_3
    sget-boolean v7, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    if-eqz v7, :cond_d

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isInLockScreen()Z

    move-result v7

    if-eqz v7, :cond_d

    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    if-eq v7, v13, :cond_a

    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    const/16 v8, 0xc

    if-ne v7, v8, :cond_d

    :cond_a
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowsLockScreen:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v7

    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    if-ne v7, v8, :cond_c

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->refreshLockScreenDialogResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateLockScreenVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    goto :goto_4

    :cond_b
    iput-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStreamChanged:Z

    goto :goto_3

    :cond_c
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_d
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    goto :goto_6

    :cond_e
    return-void
.end method

.method private playSoundH()V
    .locals 7

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->isChangedFromKey()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Do not play the sound because the volume dialog is not showing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    :cond_4
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playSoundH with stream : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->semSetStreamType(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundID:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->releaseSound()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :cond_6
    :try_start_1
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->makeSound()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private recheckH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    .locals 5

    if-nez p1, :cond_1

    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "recheckH ALL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->trimObsoleteH()V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    goto :goto_0

    :cond_1
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recheckH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    :cond_3
    return-void
.end method

.method private refreshLockScreenDialogResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    .locals 10

    const v9, 0x7f0600e8

    const v8, 0x7f0600e7

    const/16 v7, 0xc

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "white_lockscreen_statusbar"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Value of mWhiteKeyguardStatusBar : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "update LockScreen Dialog TintColor as Light Theme"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v9, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v9, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0600ea

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafeMediaVolumeDeviceOn:Z

    if-nez v2, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    if-ne v2, v7, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0600ec

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0600ee

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/SeekBar;->setDualModeOverlapColor(II)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "update LockScreen Dialog TintColor as Dark Theme"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v8, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v8, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0600e9

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    if-ne v2, v5, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafeMediaVolumeDeviceOn:Z

    if-nez v2, :cond_5

    :cond_4
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    if-ne v2, v7, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    if-eqz v2, :cond_2

    :cond_5
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0600eb

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0600ed

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/SeekBar;->setDualModeOverlapColor(II)V

    goto :goto_0
.end method

.method private refreshMorebuttonTintColor()V
    .locals 2

    sget v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButtonDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDefaulVolumeControlHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButtonColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumePanelBgColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDefaulVolumeControlHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private refreshResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    .locals 2

    sget v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->refreshSliderResourceDefaultTintColor(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get6(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->refreshSliderResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconActiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get6(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private refreshSliderResourceDefaultTintColor(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    .locals 2

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setDefaultColorForVolumePanel(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get4(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set4(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set5(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get3(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_2

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set3(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    :cond_2
    return-void
.end method

.method private refreshSliderResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    .locals 2

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setDefaultColorForVolumePanel(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get4(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mThumbColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set4(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mProgressColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mProgressColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set5(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get3(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mProgressBgColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_2

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mProgressBgColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mProgressBgColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set3(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    :cond_2
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.mirrorlink.ML_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.bixby.intent.action.CLIENT_VIEW_STATE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private releaseSound()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sound : release SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method private removeCachedBitmap()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    :cond_0
    return-void
.end method

.method private sendCoverWarningMsgIntent(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->createCoverMsgRemoteView()Landroid/widget/RemoteViews;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "visibility"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "volume"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "remote"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsShowingSCoverWarning:Z

    return-void
.end method

.method private setDialogWindowAttributes(Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;IZ)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    invoke-virtual {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->requestFeature(I)Z

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    const v2, 0x10c0128

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v2, 0x31

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-nez p3, :cond_1

    const-class v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f07070b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-boolean v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sHardwareAccelerated:Z

    if-nez v2, :cond_0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void

    :cond_1
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0
.end method

.method private setDialogWindowGravity()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0x53

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    const/16 v2, 0x55

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private setDualColorSeekbar(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    .locals 3

    const/4 v2, -0x1

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafeMediaVolumeDeviceOn:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mEarProtectLevel:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mEarProtectLevel:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setDualColorSeekbarforLockScreen(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    .locals 3

    const/4 v2, -0x1

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafeMediaVolumeDeviceOn:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mEarProtectLevelforLockScreen:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mEarProtectLevel:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setImpliedEarProtectLevel()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mEarProtectLimit:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x9

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mEarProtectLevel:I

    return-void
.end method

.method private setImpliedEarProtectLevelforLockScreenDialog()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mEarProtectLimit:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mEarProtectLevelforLockScreen:I

    return-void
.end method

.method public static setSafetyWarningVisible(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafetyWarningShowing:Z

    return-void
.end method

.method private setStreamImportantH(IZ)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-static {v0, p2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set11(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)Z

    return-void

    :cond_1
    return-void
.end method

.method private setStreamTypeForLogging(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string/jumbo v0, "System"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "Ringtone"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "Media"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "Bixby Voice"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "Notification"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private shouldBeVisibleH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 p2, 0x1

    :cond_1
    :goto_0
    return p2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get11(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_1

    move p2, v0

    goto :goto_0
.end method

.method private showFixedVolumeToast()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mFixedVolumeToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f120b9a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mFixedVolumeToast:Landroid/widget/Toast;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mFixedVolumeToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f120921

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mFixedVolumeToast:Landroid/widget/Toast;

    goto :goto_0
.end method

.method private showH(I)V
    .locals 12

    const/16 v11, 0x96e

    const/16 v10, 0x7e4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-boolean v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->SHOW_VOLUMEPANEL_IN_CLEARCOVER:Z

    if-nez v4, :cond_0

    sget v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    sget-boolean v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v4, v7}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    return-void

    :cond_0
    const/4 v2, 0x1

    sget-boolean v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sHardwareAccelerated:Z

    if-nez v4, :cond_1

    sput-boolean v8, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    :cond_1
    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_3

    :cond_2
    sget-boolean v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isInLockScreen()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    invoke-static {v4}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    if-ne v4, v9, :cond_5

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->showFixedVolumeToast()V

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v4}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_6

    sget-boolean v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sIsDexMode:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showH isAnimating="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v6}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    if-nez v4, :cond_4

    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showH mShowing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " notifyVisible(false)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v4, v7}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    :cond_4
    return-void

    :cond_5
    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_6
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showH r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mShowing : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    invoke-virtual {v4, v8}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    invoke-virtual {v4, v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->rescheduleTimeoutH()V

    sget-boolean v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isInLockScreen()Z

    move-result v4

    if-eqz v4, :cond_8

    iput-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->dismiss()V

    :cond_8
    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    if-eqz v4, :cond_9

    return-void

    :cond_9
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v4, :cond_b

    sget-boolean v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v4}, Lcom/android/systemui/volume/SafetyWarningDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-void

    :cond_b
    monitor-exit v5

    iput-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    iput-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandCollapseAnimating:Z

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBixbyStatus:I

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPreviousBixbyStatus:I

    if-eq v4, v5, :cond_f

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBixbyStatus:I

    if-ne v4, v8, :cond_f

    invoke-virtual {v3, v11}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1, v11}, Landroid/view/Window;->setType(I)V

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBixbyStatus:I

    iput v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPreviousBixbyStatus:I

    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "showH change window type to SEM_TYPE_BIXBY_CLIENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_1
    sget-boolean v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sIsDexMode:Z

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {v4}, Lcom/samsung/android/media/SemSoundAssistantManager;->getVolumeKeyMode()I

    move-result v4

    if-eqz v4, :cond_10

    const/4 v0, 0x1

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDefaultVolumeControlSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_d
    sget-boolean v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    if-eqz v4, :cond_11

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isInLockScreen()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->onShowLockScreenDialog()Z

    move-result v2

    :goto_3
    if-eqz v2, :cond_e

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v7, v5}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v4, v8}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    :cond_e
    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_f
    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBixbyStatus:I

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPreviousBixbyStatus:I

    if-eq v4, v5, :cond_c

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBixbyStatus:I

    if-nez v4, :cond_c

    invoke-virtual {v3, v10}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1, v10}, Landroid/view/Window;->setType(I)V

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBixbyStatus:I

    iput v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPreviousBixbyStatus:I

    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "showH change window type to TYPE_VOLUME_OVERLAY"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_10
    const/4 v0, 0x0

    goto :goto_2

    :cond_11
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->onShowDialog()Z

    move-result v2

    goto :goto_3
.end method

.method private showSafetyWarningH(I)V
    .locals 13

    const/16 v12, 0x8

    const/4 v11, 0x1

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    if-nez v7, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    const/4 v8, -0x1

    invoke-static {v7, v8}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set13(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    const/high16 v7, 0x10000000

    and-int/2addr v7, p1

    if-eqz v7, :cond_3

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v7, :cond_2

    sget-boolean v7, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "SafetyWarning dismissed by FLAG_DISMISS_UI_WARNINGS"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafetyWarningShowing:Z

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->onDismissSafeVolumeWarning()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v8

    :goto_0
    return-void

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v7, :cond_5

    sget-boolean v7, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    if-nez v7, :cond_4

    sget v7, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    if-eq v7, v12, :cond_4

    iget-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsShowingSCoverWarning:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sendCoverWarningMsgIntent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    monitor-exit v8

    return-void

    :cond_5
    :try_start_2
    new-instance v7, Lcom/android/systemui/volume/SecVolumeDialogImpl$15;

    iget-object v9, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v10}, Lcom/android/systemui/plugins/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v10

    invoke-direct {v7, p0, v9, v10}, Lcom/android/systemui/volume/SecVolumeDialogImpl$15;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v7}, Lcom/android/systemui/volume/SafetyWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBixbyStatus:I

    if-ne v7, v11, :cond_8

    const/16 v7, 0x96e

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    :goto_1
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_6

    sget-boolean v7, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_6

    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V

    :cond_6
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v7}, Lcom/android/systemui/volume/SafetyWarningDialog;->show()V

    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafetyWarningShowing:Z

    sget-boolean v7, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    if-nez v7, :cond_7

    sget v7, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    if-eq v7, v12, :cond_7

    sget v7, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    const/4 v9, 0x6

    if-ne v7, v9, :cond_b

    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v9, 0x7f0d01d2

    invoke-direct {v5, v7, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "visibility"

    const/4 v9, 0x1

    invoke-virtual {v0, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v7, "type"

    const-string/jumbo v9, "volume"

    invoke-virtual {v0, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "remote"

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v7, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/high16 v10, 0x8000000

    invoke-static {v7, v9, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/high16 v10, 0x8000000

    invoke-static {v7, v9, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const v7, 0x7f0a00b1

    invoke-virtual {v5, v7, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v7, 0x7f0a00b2

    invoke-virtual {v5, v7, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsShowingSCoverWarning:Z

    :cond_7
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v8

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->rescheduleTimeoutH()V

    goto/16 :goto_0

    :cond_8
    :try_start_3
    sget-boolean v7, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    if-nez v7, :cond_9

    sget v7, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    if-ne v7, v12, :cond_a

    :cond_9
    const/16 v7, 0x7e4

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_a
    :try_start_4
    sget v7, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    if-eq v7, v11, :cond_9

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_1

    :cond_b
    sget v7, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    if-ne v7, v12, :cond_c

    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v9, 0x7f0d01d1

    invoke-direct {v5, v7, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_c
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v9, 0x7f0d01d0

    invoke-direct {v5, v7, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_2
.end method

.method private showSmartViewTouchToast()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmartViewTouchToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getSmartViewDeviceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const v4, 0x7f120ba8

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmartViewTouchToast:Landroid/widget/Toast;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSmartViewTouchToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showVolumeLimiterDialog()V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f120b97

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f120b99

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialogImpl$18;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$18;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    const v3, 0x7f12091e

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialogImpl$19;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$19;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBixbyStatus:I

    if-ne v2, v4, :cond_2

    const/16 v2, 0x96e

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/systemui/volume/SecVolumeDialogImpl$20;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$20;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void

    :cond_2
    const/16 v2, 0x7e4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private stopSoundH()V
    .locals 2

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private themeChanged()V
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "themeChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->dismiss()V

    invoke-direct {p0, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateExpandedH(Z)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v2, v4}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->initDialog()V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateTintColor()V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private trimObsoleteH()V
    .locals 4

    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "trimObsoleteH"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateDefaultTintColor()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f060220

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f060232

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f06022f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f060230

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f06022c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f06022d

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f060224

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconMutedDefaultColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f060222

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconEarShockDefaultColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f060226

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButtonDefaultColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private updateExpandButtonH()V
    .locals 8

    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateExpandButtonH"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    const-string/jumbo v2, "rotation"

    new-array v3, v3, [F

    aput v4, v3, v6

    aput v5, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButtonAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_4

    const v1, 0x7f1200f1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    const-string/jumbo v2, "rotation"

    new-array v3, v3, [F

    aput v5, v3, v6

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButtonAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setRotation(F)V

    goto :goto_0

    :cond_4
    const v1, 0x7f1200f2

    goto :goto_1
.end method

.method private updateExpandedH(Z)V
    .locals 10

    const/16 v9, 0xe

    const/16 v8, 0xa

    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isAttached()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateExpandedH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {v2}, Lcom/samsung/android/media/SemSoundAssistantManager;->getVolumeKeyMode()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDefaultVolumeControlSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStreamChanged:Z

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isUserInCall()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    if-ne v2, v7, :cond_2

    invoke-direct {p0, v7, v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    invoke-direct {p0, v5, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    :cond_2
    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStream:I

    if-nez v2, :cond_3

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    invoke-direct {p0, v7, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v2, :cond_8

    invoke-direct {p0, v8, v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    :goto_3
    sget-boolean v2, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sIsDexMode:Z

    if-nez v2, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isBixbyServiceOn()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0, v9, v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    if-eqz v2, :cond_4

    iput-boolean v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateExpandButtonH()V

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->rescheduleTimeoutH()V

    return-void

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v7, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    invoke-direct {p0, v5, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    goto :goto_2

    :cond_8
    invoke-direct {p0, v8, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    goto :goto_3

    :cond_9
    invoke-direct {p0, v9, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    goto :goto_4
.end method

.method private updateExpandedWindowHeight()V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, -0x2

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_0
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-le v5, v1, :cond_2

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mNeedScroll:Z

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_1
    sget-object v5, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EXPAND HEIGHT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAfterHeight:I

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAfterHeight:I

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    iput-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mNeedScroll:Z

    goto :goto_1
.end method

.method private updateLockScreenVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    sget-boolean v3, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateLockScreenVolumeRowH s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", ss.level : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", row.lastAudibleLevel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", row.ss.muted : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v3, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-lez v3, :cond_3

    iget v3, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-static {p1, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set12(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    :cond_3
    iget v3, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get13(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v4

    if-ne v3, v4, :cond_4

    const/4 v3, -0x1

    invoke-static {p1, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set13(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    :cond_4
    iget v3, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v3, :cond_5

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v0

    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget v5, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v3, :cond_6

    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateLockScreenVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)V

    return-void

    :cond_5
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v0

    goto :goto_0

    :cond_6
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v3

    iget v2, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    goto :goto_1
.end method

.method private updateLockScreenVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)V
    .locals 4

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    mul-int/lit8 v0, p2, 0x64

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setDualColorSeekbarforLockScreen(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, p2

    :cond_1
    if-eq v1, v0, :cond_2

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2
    return-void
.end method

.method private updateRowsH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    .locals 11

    sget-boolean v8, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateRowsH "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    if-nez v8, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->trimObsoleteH()V

    :cond_1
    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowHeight:I

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowHeight:I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-eq v8, v9, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowHeight:I

    :cond_3
    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    if-ne v3, p1, :cond_b

    const/4 v0, 0x1

    :goto_1
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v8

    const/16 v9, 0xb

    if-ne v8, v9, :cond_d

    xor-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_d

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isSmartViewEnabled()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v8}, Landroid/hardware/display/DisplayManager;->semGetScreenSharingStatus()I

    move-result v8

    const/4 v9, 0x7

    if-eq v8, v9, :cond_c

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v8

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    :cond_5
    :goto_2
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->shouldBeVisibleH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)Z

    move-result v5

    if-eqz v0, :cond_f

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVisibleRowIndex:I

    :cond_6
    :goto_3
    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStreamChanged:Z

    if-eqz v8, :cond_7

    invoke-direct {p0, v3, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateVolumeRowFocusable(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)V

    :cond_7
    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-nez v8, :cond_8

    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    xor-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_8

    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStreamChanged:Z

    if-eqz v8, :cond_9

    :cond_8
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v9

    if-eqz v5, :cond_10

    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    :goto_4
    invoke-static {v9, v8}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    if-eqz v0, :cond_9

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get6(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAlpha(F)V

    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eqz v8, :cond_4

    if-eqz v5, :cond_4

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_a

    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAfterHeight:I

    iget v9, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowHeight:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAfterHeight:I

    :cond_a
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_4

    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAfterHeight:I

    iget-object v9, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f070712

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAfterHeight:I

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_c
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    goto/16 :goto_2

    :cond_d
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v8

    const/16 v9, 0xc

    if-ne v8, v9, :cond_5

    xor-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPinDevice:I

    if-eqz v8, :cond_e

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v8

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    goto/16 :goto_2

    :cond_e
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamImportantH(IZ)V

    goto/16 :goto_2

    :cond_f
    if-eqz v5, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_11
    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-nez v8, :cond_13

    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mRowHeight:I

    iget-object v9, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAfterHeight:I

    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    if-nez v8, :cond_12

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->invalidate()V

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v8}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v8, -0x2

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v7, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_12
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mNeedScroll:Z

    :goto_5
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveStreamChanged:Z

    return-void

    :cond_13
    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAfterHeight:I

    iget-object v9, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAfterHeight:I

    goto :goto_5
.end method

.method private updateTintColor()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f06021f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconActiveColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f060231

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeTitleColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f06022e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumePanelBgColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x1060291

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mThumbColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x1060292

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x106025c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mProgressColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x106025f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mProgressBgColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f060223

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconMutedColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f060221

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f060225

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpandButtonColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private updateVolumeRowFocusable(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsTalkbackEnabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExpanded:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setFocusable(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestFocus()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setFocusable(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->clearFocus()V

    goto :goto_0
.end method

.method private updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    .locals 37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v32, v0

    if-nez v32, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    move-object/from16 v32, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez v29, :cond_1

    return-void

    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    sget-boolean v32, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v32, :cond_2

    sget-object v32, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "updateVolumeRowH s="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", ss.level : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", row.lastAudibleLevel : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", row.ss.muted : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v34

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v32, v0

    if-lez v32, :cond_3

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set12(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    :cond_3
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v32, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get13(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_4

    const/16 v32, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set13(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v32

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_12

    const/16 v24, 0x1

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v32

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_13

    const/16 v20, 0x1

    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_14

    const/16 v27, 0x1

    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v32

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_15

    const/16 v18, 0x1

    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v32

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_16

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v32

    const/16 v33, 0xc

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_17

    const/16 v17, 0x1

    :goto_4
    if-eqz v24, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_18

    const/16 v25, 0x1

    :goto_5
    if-eqz v20, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1a

    const/16 v21, 0x1

    :goto_6
    if-eqz v27, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1c

    const/16 v28, 0x1

    :goto_7
    if-eqz v24, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v32, v0

    if-nez v32, :cond_1e

    const/16 v23, 0x1

    :goto_8
    if-eqz v20, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v32, v0

    if-nez v32, :cond_20

    const/16 v19, 0x1

    :goto_9
    if-eqz v27, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v32, v0

    if-nez v32, :cond_22

    const/16 v26, 0x1

    :goto_a
    if-eqz v24, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_24

    const/16 v22, 0x1

    :goto_b
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v32

    if-eqz v32, :cond_26

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v32

    const/16 v33, 0x6

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_27

    const/4 v12, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVoiceCapable:Z

    move/from16 v32, v0

    if-eqz v32, :cond_29

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v32

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_28

    const/4 v15, 0x1

    :goto_d
    if-eqz v17, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    move/from16 v16, v0

    :goto_e
    sget-boolean v32, Lcom/android/systemui/volume/SecVolumeDialogImpl;->SHOW_VOLUMEPANEL_IN_CLEARCOVER:Z

    if-eqz v32, :cond_2d

    sget v32, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2d

    sget-boolean v32, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    xor-int/lit8 v13, v32, 0x1

    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    move-object/from16 v32, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get6(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v33

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    move/from16 v34, v0

    invoke-virtual/range {v32 .. v34}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    if-eqz v18, :cond_30

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    move/from16 v32, v0

    if-eqz v32, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v32, v0

    if-eqz v32, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/bluetooth/BluetoothA2dp;->semIsDualPlayMode()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/bluetooth/BluetoothA2dp;->semGetActiveStreamDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    if-eqz v14, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v32

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const v33, 0x7f120ba0

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    :cond_5
    :goto_10
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get6(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAutomute:Z

    move/from16 v32, v0

    if-nez v32, :cond_35

    move-object/from16 v0, v29

    iget-boolean v10, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muteSupported:Z

    :goto_11
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v32

    if-eqz v32, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v32

    const/16 v33, 0x6

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_36

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v32

    xor-int/lit8 v33, v10, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_12
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v33

    if-eqz v10, :cond_37

    const/high16 v32, 0x3f800000    # 1.0f

    :goto_13
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    if-nez v25, :cond_7

    if-eqz v21, :cond_38

    :cond_7
    const v11, 0x1080a94

    :goto_14
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get2(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v32

    move/from16 v0, v32

    if-eq v11, v0, :cond_8

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set2(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v32

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    move/from16 v32, v0

    if-eqz v32, :cond_9

    if-nez v23, :cond_a

    if-nez v25, :cond_a

    xor-int/lit8 v32, v24, 0x1

    if-nez v32, :cond_a

    :cond_9
    if-eqz v16, :cond_3d

    :cond_a
    const/16 v31, 0x0

    :goto_15
    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafeMediaVolumeDeviceOn:Z

    move/from16 v32, v0

    if-nez v32, :cond_c

    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v32

    const/16 v33, 0xc

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_40

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    move/from16 v32, v0

    if-eqz v32, :cond_40

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mEarProtectLevel:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_40

    if-eqz v13, :cond_3f

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconEarShockDefaultColor:Landroid/content/res/ColorStateList;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_16
    const v32, 0x1080a94

    move/from16 v0, v32

    if-ne v11, v0, :cond_42

    const/16 v32, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set10(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    :cond_d
    :goto_17
    const/4 v10, 0x0

    if-eqz v10, :cond_4d

    if-eqz v24, :cond_4a

    if-eqz v25, :cond_48

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    aput-object v35, v34, v36

    const v35, 0x7f120b9d

    move-object/from16 v0, v33

    move/from16 v1, v35

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_18
    if-nez v21, :cond_e

    xor-int/lit8 v32, v19, 0x1

    if-eqz v32, :cond_e

    xor-int/lit8 v32, v28, 0x1

    if-eqz v32, :cond_e

    xor-int/lit8 v32, v26, 0x1

    if-nez v32, :cond_4e

    :cond_e
    move v9, v15

    :goto_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    move/from16 v32, v0

    if-nez v32, :cond_f

    if-eqz v16, :cond_4f

    :cond_f
    const/4 v9, 0x0

    :cond_10
    :goto_1a
    if-nez v9, :cond_52

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    move/from16 v32, v0

    if-eqz v32, :cond_51

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v32

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_51

    const/16 v32, 0x1

    :goto_1b
    if-nez v32, :cond_11

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v32

    const v33, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageButton;->setClickable(Z)V

    :cond_11
    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v9, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;ZI)V

    return-void

    :cond_12
    const/16 v24, 0x0

    goto/16 :goto_0

    :cond_13
    const/16 v20, 0x0

    goto/16 :goto_1

    :cond_14
    const/16 v27, 0x0

    goto/16 :goto_2

    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_3

    :cond_16
    const/16 v17, 0x1

    goto/16 :goto_4

    :cond_17
    const/16 v17, 0x0

    goto/16 :goto_4

    :cond_18
    const/16 v25, 0x0

    goto/16 :goto_5

    :cond_19
    const/16 v25, 0x0

    goto/16 :goto_5

    :cond_1a
    const/16 v21, 0x0

    goto/16 :goto_6

    :cond_1b
    const/16 v21, 0x0

    goto/16 :goto_6

    :cond_1c
    const/16 v28, 0x0

    goto/16 :goto_7

    :cond_1d
    const/16 v28, 0x0

    goto/16 :goto_7

    :cond_1e
    const/16 v23, 0x0

    goto/16 :goto_8

    :cond_1f
    const/16 v23, 0x0

    goto/16 :goto_8

    :cond_20
    const/16 v19, 0x0

    goto/16 :goto_9

    :cond_21
    const/16 v19, 0x0

    goto/16 :goto_9

    :cond_22
    const/16 v26, 0x0

    goto/16 :goto_a

    :cond_23
    const/16 v26, 0x0

    goto/16 :goto_a

    :cond_24
    const/16 v22, 0x0

    goto/16 :goto_b

    :cond_25
    const/16 v22, 0x0

    goto/16 :goto_b

    :cond_26
    const/4 v12, 0x1

    goto/16 :goto_c

    :cond_27
    const/4 v12, 0x0

    goto/16 :goto_c

    :cond_28
    const/4 v15, 0x0

    goto/16 :goto_d

    :cond_29
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v32

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2a

    const/4 v15, 0x1

    goto/16 :goto_d

    :cond_2a
    const/4 v15, 0x0

    goto/16 :goto_d

    :cond_2b
    const/16 v16, 0x1

    goto/16 :goto_e

    :cond_2c
    const/16 v16, 0x0

    goto/16 :goto_e

    :cond_2d
    const/4 v13, 0x0

    goto/16 :goto_f

    :cond_2e
    if-eqz v6, :cond_2f

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBTDeviceName:Ljava/lang/String;

    :cond_2f
    sget-object v32, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "mBTDeviceName = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBTDeviceName:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBTDeviceName:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_5

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " ("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBTDeviceName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_10

    :cond_30
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v32

    const/16 v33, 0xb

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_31

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isSmartViewEnabled()Z

    move-result v32

    if-eqz v32, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getSmartViewDeviceName()Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_10

    :cond_31
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPinDevice:I

    move/from16 v32, v0

    if-eqz v32, :cond_32

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v32

    const/16 v33, 0xc

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPinDevice:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/media/AudioManager;->getPinDeviceName(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mPinDevice:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/media/AudioManager;->getPinAppName(I)Ljava/lang/String;

    move-result-object v3

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " ("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " ("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_10

    :cond_32
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v32

    const/16 v33, 0x6

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getVisibility()I

    move-result v32

    if-nez v32, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHfp:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v32, v0

    if-eqz v32, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHfp:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_33
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_34

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHfp:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v32

    if-eqz v32, :cond_33

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBtScoDevice:Landroid/bluetooth/BluetoothDevice;

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBtScoDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v32, v0

    if-eqz v32, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBtScoDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBTScoDeviceName:Ljava/lang/String;

    sget-object v32, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "mBTScoDeviceName = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBTScoDeviceName:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBTScoDeviceName:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_5

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " ("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBTScoDeviceName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_10

    :cond_35
    const/4 v10, 0x1

    goto/16 :goto_11

    :cond_36
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_12

    :cond_37
    const/high16 v32, 0x3f000000    # 0.5f

    goto/16 :goto_13

    :cond_38
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    move/from16 v32, v0

    if-eqz v32, :cond_39

    const v11, 0x1080a75

    goto/16 :goto_14

    :cond_39
    if-nez v23, :cond_3a

    if-nez v19, :cond_3a

    if-nez v16, :cond_3a

    if-nez v22, :cond_3c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAutomute:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3b

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v32, v0

    if-nez v32, :cond_3b

    :cond_3a
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v11

    goto/16 :goto_14

    :cond_3b
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    move/from16 v32, v0

    if-nez v32, :cond_3a

    :cond_3c
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v11

    goto/16 :goto_14

    :cond_3d
    if-eqz v12, :cond_3e

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v32, v0

    add-int/lit8 v31, v32, 0x1

    goto/16 :goto_15

    :cond_3e
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v31, v0

    goto/16 :goto_15

    :cond_3f
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_16

    :cond_40
    if-eqz v13, :cond_41

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_16

    :cond_41
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconActiveColor:Landroid/content/res/ColorStateList;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_16

    :cond_42
    const v32, 0x1080a79

    move/from16 v0, v32

    if-eq v11, v0, :cond_43

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v32

    move/from16 v0, v32

    if-ne v11, v0, :cond_45

    :cond_43
    const/16 v32, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set10(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    if-nez v12, :cond_d

    if-eqz v13, :cond_44

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconMutedDefaultColor:Landroid/content/res/ColorStateList;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_17

    :cond_44
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIconMutedColor:Landroid/content/res/ColorStateList;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_17

    :cond_45
    const v32, 0x1080a75

    move/from16 v0, v32

    if-eq v11, v0, :cond_46

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v32

    move/from16 v0, v32

    if-ne v11, v0, :cond_47

    :cond_46
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set10(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    goto/16 :goto_17

    :cond_47
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set10(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    goto/16 :goto_17

    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v32

    if-eqz v32, :cond_49

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    aput-object v35, v34, v36

    const v35, 0x7f120b9e

    move-object/from16 v0, v33

    move/from16 v1, v35

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_18

    :cond_49
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    aput-object v35, v34, v36

    const v35, 0x7f120b9b

    move-object/from16 v0, v33

    move/from16 v1, v35

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_18

    :cond_4a
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    move/from16 v32, v0

    if-nez v32, :cond_4b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAutomute:Z

    move/from16 v32, v0

    if-eqz v32, :cond_4c

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v32, v0

    if-nez v32, :cond_4c

    :cond_4b
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    aput-object v35, v34, v36

    const v35, 0x7f120b9d

    move-object/from16 v0, v33

    move/from16 v1, v35

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_18

    :cond_4c
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    aput-object v35, v34, v36

    const v35, 0x7f120b9b

    move-object/from16 v0, v33

    move/from16 v1, v35

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_18

    :cond_4d
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_18

    :cond_4e
    const/4 v9, 0x1

    goto/16 :goto_19

    :cond_4f
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v32

    const/16 v33, 0xb

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isDlnaEnabled()Z

    move-result v32

    if-eqz v32, :cond_50

    const/4 v9, 0x1

    goto/16 :goto_1a

    :cond_50
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isSmartViewEnabled()Z

    move-result v32

    if-eqz v32, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isDlnaEnabled()Z

    move-result v32

    xor-int/lit8 v32, v32, 0x1

    if-eqz v32, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v32, v0

    const/16 v33, 0x3

    invoke-virtual/range {v32 .. v33}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result v32

    if-nez v32, :cond_10

    const/4 v9, 0x0

    goto/16 :goto_1a

    :cond_51
    const/16 v32, 0x0

    goto/16 :goto_1b

    :cond_52
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v32

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto/16 :goto_1c
.end method

.method private updateVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;ZI)V
    .locals 12

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    if-ne p1, v6, :cond_5

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->shouldBeVisibleH(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)Z

    move-result v5

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    sget v6, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    sget-boolean v6, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    if-eqz v6, :cond_1

    :cond_0
    if-nez p2, :cond_6

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setDualColorSeekbar(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    :cond_3
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    if-nez v6, :cond_4

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isExtraButtonOn()Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Call setMode(ProgressBar.MODE_WARNING)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->semSetMode(I)V

    :cond_4
    :goto_2
    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsTalkbackEnabled:Z

    if-eqz v6, :cond_8

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get6(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Z

    move-result v6

    if-eqz v6, :cond_9

    return-void

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_7
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->semSetMode(I)V

    goto :goto_2

    :cond_8
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_a

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_c

    :cond_a
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getImpliedMediaVolumeLevel(I)I

    move-result v2

    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get19(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-gez v6, :cond_e

    const/4 v0, 0x1

    :goto_5
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->removeMessages(ILjava/lang/Object;)V

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    if-eqz v6, :cond_f

    if-eqz v5, :cond_f

    if-eqz v0, :cond_f

    sget-boolean v6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v6, :cond_b

    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "inGracePeriod"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get19(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_c
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_d

    move v2, v4

    goto :goto_4

    :cond_d
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v2

    goto :goto_4

    :cond_e
    const/4 v0, 0x0

    goto :goto_5

    :cond_f
    if-ne p3, v2, :cond_10

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    if-eqz v6, :cond_10

    if-eqz v5, :cond_10

    return-void

    :cond_10
    mul-int/lit8 v3, p3, 0x64

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_11

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_13

    :cond_11
    :goto_6
    move v3, p3

    :cond_12
    if-eq v4, v3, :cond_15

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    if-eqz v6, :cond_17

    if-eqz v5, :cond_17

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_14

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get1(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    if-ne v6, v3, :cond_14

    return-void

    :cond_13
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_12

    goto :goto_6

    :cond_14
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-nez v6, :cond_16

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    const-string/jumbo v7, "progress"

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v4, v8, v9

    const/4 v9, 0x1

    aput v3, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set0(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_7
    invoke-static {p1, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set1(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x50

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    :cond_15
    :goto_8
    return-void

    :cond_16
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v4, v7, v8

    const/4 v8, 0x1

    aput v3, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    goto :goto_7

    :cond_17
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_18

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_18
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_8
.end method

.method private updateWindowWidthH()V
    .locals 7

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f07066a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-le v3, v2, :cond_0

    move v3, v2

    :cond_0
    sget-boolean v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->M_LATTE:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f070706

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateWindowWidth lp.width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mCurrentWindowWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCurrentWindowWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCurrentWindowWidth:I

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCurrentWindowWidth:I

    :cond_3
    return-void

    :cond_4
    sget-boolean v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverOpened:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f070700

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v4

    sput v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    sget v4, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sCoverType:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f070701

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070703

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_0
.end method

.method private zenModeChanged()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dnd mode Changed to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mFixedVolumeToast:Landroid/widget/Toast;

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    invoke-static {v1}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mZenMode:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsAllSoundOff:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f120b9a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    const v2, 0x7f0a057e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f120921

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    return-void
.end method

.method protected dismissH(I)V
    .locals 9

    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissH reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sHardwareAccelerated:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->sPrevSystemRendererDisabled:Z

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_2

    if-eq p1, v4, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    if-ne p1, v3, :cond_5

    :cond_1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SafetyWarning dismiss cancelled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    if-ne p1, v3, :cond_7

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_4
    const/4 v0, 0x7

    if-ne p1, v0, :cond_8

    return-void

    :cond_5
    :try_start_1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SafetyWarning dismissed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mIsSafetyWarningShowing:Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_7
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissH isAnimating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v2}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    iput-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowing:Z

    if-eq p1, v4, :cond_b

    const/16 v0, 0x9

    if-ne p1, v0, :cond_f

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->dismiss()V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->onDismissLockScreenDialog()V

    invoke-direct {p0, v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->updateExpandedH(Z)V

    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->initTrackingValues()V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->setStreamTypeForLogging(I)V

    const-string/jumbo v1, "com.android.systemui.volume"

    const-string/jumbo v2, "FWVP"

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mExtraForRingerMode:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->isChangedFromKey()Z

    move-result v0

    if-eqz v0, :cond_10

    const-wide/16 v4, 0x3e8

    :goto_3
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x20

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f120b94

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v6}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v8, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0, v7}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    return-void

    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->onDismissLockScreenDialog()V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$14;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->startDismiss(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_10
    const-wide/16 v4, 0x0

    goto :goto_3
.end method

.method public init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V
    .locals 4

    iput-object p2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mWindowType:I

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->initDialog()V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$Accessibility;->init()V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDensity:I

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mOrientation:I

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "sysui_show_full_zen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mShowFullZen:Z

    :cond_1
    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    const/4 v5, 0x2

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->computeTimeoutH()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/VolumeDialogController;->userActivity()V

    return-void
.end method

.method public setAutomute(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAutomute:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mAutomute:Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setSilentMode(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSilentMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSilentMode:Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->sendEmptyMessage(I)Z

    return-void
.end method
