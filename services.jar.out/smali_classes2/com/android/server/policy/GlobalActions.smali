.class Lcom/android/server/policy/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$10;,
        Lcom/android/server/policy/GlobalActions$11;,
        Lcom/android/server/policy/GlobalActions$12;,
        Lcom/android/server/policy/GlobalActions$1;,
        Lcom/android/server/policy/GlobalActions$2;,
        Lcom/android/server/policy/GlobalActions$3;,
        Lcom/android/server/policy/GlobalActions$4;,
        Lcom/android/server/policy/GlobalActions$5;,
        Lcom/android/server/policy/GlobalActions$6;,
        Lcom/android/server/policy/GlobalActions$7;,
        Lcom/android/server/policy/GlobalActions$8;,
        Lcom/android/server/policy/GlobalActions$9;,
        Lcom/android/server/policy/GlobalActions$Action;,
        Lcom/android/server/policy/GlobalActions$BugReportAction;,
        Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;,
        Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;,
        Lcom/android/server/policy/GlobalActions$LongPressAction;,
        Lcom/android/server/policy/GlobalActions$MyAdapter;,
        Lcom/android/server/policy/GlobalActions$PowerAction;,
        Lcom/android/server/policy/GlobalActions$RebootAction;,
        Lcom/android/server/policy/GlobalActions$SilentModeAction;,
        Lcom/android/server/policy/GlobalActions$SinglePressAction;,
        Lcom/android/server/policy/GlobalActions$ToggleAction;,
        Lcom/android/server/policy/GlobalActions$UIUpdateHandler;
    }
.end annotation


# static fields
.field public static final ACTION_BIXBY_GLOBAL_ACTIONS:Ljava/lang/String; = "com.intent.action.BIXBY_GLOBAL_ACTIONS"

.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field public static final ACTION_NETWORK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.NETWORK_MODE_CHANGED"

.field public static final ACTION_SHOW_GLOBAL_ACTIONS:Ljava/lang/String; = "android.intent.action.SHOW_GLOBAL_ACTIONS"

.field private static final ACTION_STATUS_EXPAND:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final FORCE_RESTART_TIME:I = 0x7

.field private static final GLOBAL_ACTION_KEY_AIRPLANE:Ljava/lang/String; = "airplane"

.field private static final GLOBAL_ACTION_KEY_ASSIST:Ljava/lang/String; = "assist"

.field private static final GLOBAL_ACTION_KEY_BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final GLOBAL_ACTION_KEY_DATAMODE:Ljava/lang/String; = "datamode"

.field private static final GLOBAL_ACTION_KEY_EMERGENCYMODE:Ljava/lang/String; = "emergencymode"

.field private static final GLOBAL_ACTION_KEY_LOCKDOWN:Ljava/lang/String; = "lockdown"

.field private static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"

.field private static final GLOBAL_ACTION_KEY_REBOOT:Ljava/lang/String; = "reboot"

.field private static final GLOBAL_ACTION_KEY_RESTART:Ljava/lang/String; = "restart"

.field private static final GLOBAL_ACTION_KEY_SCREENREC:Ljava/lang/String; = "screenrec"

.field private static final GLOBAL_ACTION_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field private static final GLOBAL_ACTION_KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final GLOBAL_ACTION_KEY_SUBSCREEN:Ljava/lang/String; = "subscreen"

.field private static final GLOBAL_ACTION_KEY_TORCH:Ljava/lang/String; = "flashlight"

.field private static final GLOBAL_ACTION_KEY_USERS:Ljava/lang/String; = "users"

.field private static final GLOBAL_ACTION_KEY_VOICEASSIST:Ljava/lang/String; = "voiceassist"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_HIDE_CONFIRM_LANDSCAPE:I = 0x9

.field private static final MESSAGE_HIDE_CONFIRM_PORTRAIT:I = 0x8

.field private static final MESSAGE_HIDE_QUICKPANEL:I = 0x4

.field private static final MESSAGE_ONCLICK_ITEM_WITH_BIXBY:I = 0xb

.field private static final MESSAGE_ONCLICK_WITH_FMMLOCK:I = 0xa

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_REFRESH_AIRPLANEMODE:I = 0x3

.field private static final MESSAGE_REFRESH_RINGER:I = 0x5

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final MESSAGE_SHOW_CONFIRM_LANDSCAPE:I = 0x7

.field private static final MESSAGE_SHOW_CONFIRM_PORTRAIT:I = 0x6

.field static final SAFE_DEBUG:Z

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final SIM_CDMA:I = 0x0

.field private static final SIM_GSM:I = 0x1

.field private static final SURVEY_LOG:Z

.field static SelectedItem:Landroid/view/View; = null

.field private static final TAG:Ljava/lang/String; = "GlobalActions"

.field private static final TW_GLOBALACTIONS_MSG_DELAY:I = 0x96

.field private static final isForceRestartSupport:Z

.field static mAccessibiltyShortcutEnabled:Z

.field private static mClearCoverWidth:I

.field private static mCountyCode:Ljava/lang/String;

.field private static mCoverViewListView:Landroid/widget/ListView;

.field private static mHasVibrator:Z

.field private static mIsAirplaneConfirmDialogExist:Z

.field private static mIsBugReportEnable:Z

.field private static mIsCancelEnable:Z

.field private static mIsClearCover:Z

.field private static mIsConfirmDlg:Z

.field private static mIsConfirmLandDlg:Z

.field private static mIsCoverOpen:Z

.field private static mIsFirstCreated:Z

.field private static mIsMiniCoverOpened:Z

.field private static mIsMiniDialogMode:Z

.field private static mIsSafemodeSupport:Z

.field static mIsSelectedItemTagForSecure:I

.field private static mNewFeatureForM:Z

.field private static mNewFeatureForMListView:Landroid/widget/ListView;

.field private static mPasscodeEditText:Landroid/widget/EditText;

.field private static mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private static mProKioskMenuPosition:I

.field private static mProKioskOptionShown:Z

.field private static final mProductName:Ljava/lang/String;

.field private static mSCoverRequestStatus:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSViewCoverHeight:I

.field private static mSViewCoverWidth:I

.field private static final mSalesCode:Ljava/lang/String;

.field private static final mScafe:Ljava/lang/String;

.field private static final mScafeShot:Ljava/lang/String;

.field public static mSilentModeView:Landroid/view/View;

.field private static mStatusHeight:I

.field private static sIsConfirming:Z

.field private static sIsConfirmingGuard:Ljava/lang/Object;

.field private static sIsSecondConfirming:Z

.field static sIsSelectedItemTagForBixby:I


# instance fields
.field final DO_NOT_MOVE:I

.field final INTERVAL_SCOVER_TRANSITION:I

.field private cm:Landroid/net/ConnectivityManager;

.field current_x:F

.field current_x_land:F

.field current_y:F

.field current_y_land:F

.field displayheight:I

.field displaywidth:I

.field private isDataToggleSupport:Z

.field isShopDemo:Z

.field private isVZWOperatorAirplaneModeONReasonUSB3:Z

.field private mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

.field mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mAirplaneMsg:Landroid/widget/TextView;

.field private mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field mAirplaneStringId:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mBikeModeDialog:Landroid/app/AlertDialog;

.field private mBikeModeObserver:Landroid/database/ContentObserver;

.field mBikeModeStringId:I

.field private mBixbyReceiver:Landroid/content/BroadcastReceiver;

.field mBottomViewDoubleItemWidth:I

.field mBottomViewSingleCancelItemWidth:I

.field mBottomViewSingleItemHeight:I

.field mBottomViewSingleItemWidth:I

.field private mBottomlayout:Landroid/widget/LinearLayout;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBugReport:Landroid/widget/Button;

.field private mCancelButton:Landroid/widget/Button;

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

.field private mConfirmDialogSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

.field mConfirmPowerOffIconResId:I

.field mConfirmRestartIconResId:I

.field private final mContext:Landroid/content/Context;

.field private mCoverColor:I

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field mDataNetworkIconResId:I

.field private mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field mDataNetworkStringId:I

.field private mDescriptionlayout:Landroid/widget/LinearLayout;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

.field private mDisplayConfirm:Z

.field private mDontShowCheckbox:Landroid/widget/CheckBox;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field mEmergencyIconResId:I

.field private mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field mEmergencyStringId:I

.field private mFlashlight:Lcom/android/server/policy/GlobalActions$SinglePressAction;

.field private mForceRestartlayout:Landroid/widget/LinearLayout;

.field private mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

.field private mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mHotReboot:Lcom/android/server/policy/GlobalActions$SinglePressAction;

.field private mIsDisableConfirm:Z

.field private mIsScreenOFF:Z

.field private mIsSecureKeyguard:Z

.field private mIsSetAirplaneOnMessageCHINA:Z

.field private mIsSetAirplaneOnMessageVZW:Z

.field mIsSupportedBlur:Z

.field private mIsWaitingForEcmExit:Z

.field mItemConfirmMessageWidth:I

.field mItemDivider:I

.field mItemDividerLand:I

.field mItemHeight:I

.field mItemHeightWithStatus:I

.field mItemLandscapeDivider:I

.field mItemMaxWidth:I

.field mItemMaxWidthLand:I

.field mItemPortraitDivider:I

.field mItemPortraitDividerOverFour:I

.field mItemPortraitDividerSViewCover:I

.field mItemWidth:I

.field mItemWidthLand:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardShowing:Z

.field private mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

.field private mLDUWarning:Ljava/lang/String;

.field private mLandscapeLinearLayout:Landroid/widget/LinearLayout;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mMSimServiceState:[I

.field mMessageViewPaddingBottom:I

.field mMessageViewPaddingTop:I

.field private mPhoneCount:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

.field mPowerOffIconResId:I

.field private mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

.field private mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mRebootRecovery:Lcom/android/server/policy/GlobalActions$SinglePressAction;

.field private mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;

.field mRestartIconResId:I

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field mScreenRec:Lcom/android/server/policy/GlobalActions$SinglePressAction;

.field private mScreenshot:Lcom/android/server/policy/GlobalActions$SinglePressAction;

.field private mScrollview:Landroid/widget/ScrollView;

.field private mSecondAnimatedText:Landroid/widget/TextView;

.field private mSecureLockReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedItemNumbyBixby:I

.field private mShowOnAirplaneConfirm:Z

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

.field mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mSubScreenOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mSubScreenState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field private mTempStringArray:[Ljava/lang/String;

.field private mTrueStringArray:[Ljava/lang/String;

.field private mUnableAirplanemode:Ljava/lang/String;

.field private mUnableEmergencyforFMM:Ljava/lang/String;

.field private mUnablePowerOff:Ljava/lang/String;

.field private mUnablePowerOffForFMM:Ljava/lang/String;

.field private mUnablePowerOffForSecureLock:Ljava/lang/String;

.field private mUnableRestartForFMM:Ljava/lang/String;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mViewCoverParentLayout:Landroid/widget/ImageView;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private powermanager:Landroid/os/PowerManager;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/GlobalActions;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->isDataToggleSupport:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get12()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mCountyCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13()Landroid/widget/ListView;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic -get27()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    return v0
.end method

.method static synthetic -get28()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    return v0
.end method

.method static synthetic -get29()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic -get30()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    return v0
.end method

.method static synthetic -get31()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    return v0
.end method

.method static synthetic -get32()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z

    return v0
.end method

.method static synthetic -get33()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    return v0
.end method

.method static synthetic -get34()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsSafemodeSupport:Z

    return v0
.end method

.method static synthetic -get35(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z

    return v0
.end method

.method static synthetic -get36(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    return v0
.end method

.method static synthetic -get37(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic -get38(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get39(Lcom/android/server/policy/GlobalActions;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get40(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic -get41(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLDUWarning:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get42(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get43(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get44(Lcom/android/server/policy/GlobalActions;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mMSimServiceState:[I

    return-object v0
.end method

.method static synthetic -get45()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    return v0
.end method

.method static synthetic -get46()Landroid/widget/EditText;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get47(Lcom/android/server/policy/GlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    return v0
.end method

.method static synthetic -get48()Landroid/app/AlertDialog$Builder;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic -get49(Lcom/android/server/policy/GlobalActions;)Lcom/samsung/android/knox/custom/ProKioskManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get50()I
    .locals 1

    sget v0, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    return v0
.end method

.method static synthetic -get51()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    return v0
.end method

.method static synthetic -get52(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get53()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get54()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get55(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$SilentModeAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

    return-object v0
.end method

.method static synthetic -get56(Lcom/android/server/policy/GlobalActions;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get57(Lcom/android/server/policy/GlobalActions;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mTrueStringArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get58(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableAirplanemode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get59(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableEmergencyforFMM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get60(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOff:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get61(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForFMM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get62(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableRestartForFMM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get63(Lcom/android/server/policy/GlobalActions;)Landroid/hardware/usb/UsbManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic -get64(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic -get65()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get66()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic -set14(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    return p0
.end method

.method static synthetic -set15(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mSubScreenState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic -set16(Lcom/android/server/policy/GlobalActions;Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object p1
.end method

.method static synthetic -set17(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    return p0
.end method

.method static synthetic -set18(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    return p0
.end method

.method static synthetic -set2(Lcom/android/server/policy/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/policy/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    return-object p1
.end method

.method static synthetic -set5(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    return p0
.end method

.method static synthetic -set6(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    return p0
.end method

.method static synthetic -set7(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    return p0
.end method

.method static synthetic -set8(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z

    return p0
.end method

.method static synthetic -set9(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/GlobalActions;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->isActionAvailable(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/server/policy/GlobalActions;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap13(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->actionClicked(Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->clearSCoverRequestStatus()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/GlobalActions;->confirmDialog(Lcom/android/server/policy/GlobalActions$ToggleAction;III)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Lcom/android/server/policy/GlobalActions$Action;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->confirmedAction(Landroid/view/View;Lcom/android/server/policy/GlobalActions$Action;Z)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/policy/GlobalActions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->doActionByBixby(I)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isCHINA()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initLandscapeAddView()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initPortraitAddView()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->onClickForHideLandscapeConfirmDialog(Z)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->onClickForHidePortraitConfirmDialog(Z)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/GlobalActions;->onClickForLandscapeConfirmDialog(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/GlobalActions;->onClickForPortraitConfirmDialog(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onToggleDatamode()V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/policy/GlobalActions;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->registerPhoneStateListener(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->unregisterPhoneStateListener()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isFMMlocked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/policy/GlobalActions;ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->virtualDismissInSCover(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isMSim()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/GlobalActions;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->isSimCardInserted(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isSimReady()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isTSafeLock()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isUSA()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCancelEnable:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Framework_SupportRebootWithSafemode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsSafemodeSupport:Z

    sput v1, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForMListView:Landroid/widget/ListView;

    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mSilentModeView:Landroid/view/View;

    sput v1, Lcom/android/server/policy/GlobalActions;->mSViewCoverWidth:I

    sput v1, Lcom/android/server/policy/GlobalActions;->mSViewCoverHeight:I

    sput v1, Lcom/android/server/policy/GlobalActions;->mClearCoverWidth:I

    sput v1, Lcom/android/server/policy/GlobalActions;->mStatusHeight:I

    const-string/jumbo v2, "ro.build.scafe"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    const-string/jumbo v2, "ro.build.scafe.shot"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/GlobalActions;->mScafeShot:Ljava/lang/String;

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/GlobalActions;->mProductName:Ljava/lang/String;

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    const-string/jumbo v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/GlobalActions;->mCountyCode:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Framework_SupportForceRestartGlobalAction"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->isForceRestartSupport:Z

    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->SURVEY_LOG:Z

    const-string/jumbo v2, "americano"

    sget-object v3, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "mocha"

    sget-object v3, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    sput-object v4, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    sput v1, Lcom/android/server/policy/GlobalActions;->sIsSelectedItemTagForBixby:I

    sput v1, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForSecure:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/policy/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSubScreenState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mSecondAnimatedText:Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mCancelButton:Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverColor:I

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v4, "CscFeature_Framework_SupportDataModeSwitchGlobalAction"

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->isDataToggleSupport:Z

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v4, "temp"

    aput-object v4, v1, v2

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v4, "true"

    aput-object v4, v1, v2

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mTrueStringArray:[Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOff:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnableAirplanemode:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLDUWarning:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->isShopDemo:Z

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->displayheight:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemWidth:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleCancelItemWidth:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewDoubleItemWidth:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    iput v6, p0, Lcom/android/server/policy/GlobalActions;->current_x:F

    iput v6, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    iput v6, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    iput v6, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemHeightWithStatus:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthLand:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingTop:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDivider:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerOverFour:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemLandscapeDivider:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerSViewCover:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemConfirmMessageWidth:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mConfirmPowerOffIconResId:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mConfirmRestartIconResId:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkIconResId:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyStringId:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkStringId:I

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemNumbyBixby:I

    const/16 v1, -0x3e8

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->DO_NOT_MOVE:I

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForFMM:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnableRestartForFMM:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnableEmergencyforFMM:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForSecureLock:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsDisableConfirm:Z

    new-instance v1, Lcom/android/server/policy/GlobalActions$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$1;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    new-instance v1, Lcom/android/server/policy/GlobalActions$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$2;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/android/server/policy/GlobalActions$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$3;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/android/server/policy/GlobalActions$4;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$4;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/android/server/policy/GlobalActions$5;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$5;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/policy/GlobalActions$6;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$6;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/policy/GlobalActions$7;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$7;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/policy/GlobalActions$8;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$8;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    new-instance v1, Lcom/android/server/policy/GlobalActions$9;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$9;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v1, Lcom/android/server/policy/GlobalActions$10;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$10;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/policy/GlobalActions$11;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/android/server/policy/GlobalActions$11;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/server/policy/GlobalActions$12;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/android/server/policy/GlobalActions$12;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeObserver:Landroid/database/ContentObserver;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->INTERVAL_SCOVER_TRANSITION:I

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v4, 0x103012b

    invoke-direct {v1, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "dreams"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->powermanager:Landroid/os/PowerManager;

    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/policy/GlobalActions;->registerPhoneStateListener(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v1, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v4, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "bikemode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v4, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "globalaction"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "isBikeMode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const v1, 0x104089e

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    :goto_0
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1120084

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    const-string/jumbo v1, "TMB"

    sget-object v3, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->initCoverManager(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->registerBixbyReceiver()V

    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->initStrings()V

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initValueForCreate()V

    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method static synthetic access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5001(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->toggleScreenRecord()V

    return-void
.end method

.method private actionClicked(Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V
    .locals 9

    const/4 v8, 0x1

    move-object v0, p1

    move-object v4, p2

    const v6, 0x10203d9

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->isFocusable()Z

    move-result v6

    if-nez v6, :cond_1

    return-void

    :cond_1
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v6, 0x102000b

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v6, 0x10203d7

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/policy/GlobalActions;->isActionAvailable(I)Z

    move-result v6

    if-nez v6, :cond_2

    return-void

    :cond_2
    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/server/policy/GlobalActions;->calculateDescritionViewHeight(Landroid/view/View;I)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Lcom/android/server/policy/GlobalActions;->sIsSelectedItemTagForBixby:I

    sget-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    if-nez v6, :cond_3

    invoke-direct {p0, v5}, Lcom/android/server/policy/GlobalActions;->isSingleActionItem(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p3, :cond_3

    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions;->mIsDisableConfirm:Z

    if-eqz v6, :cond_5

    :cond_3
    sget-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    if-nez v6, :cond_4

    invoke-direct {p0, v5}, Lcom/android/server/policy/GlobalActions;->isSingleActionItem(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz p3, :cond_6

    :cond_4
    invoke-direct {p0, p2, p1, v8}, Lcom/android/server/policy/GlobalActions;->confirmedAction(Landroid/view/View;Lcom/android/server/policy/GlobalActions$Action;Z)V

    :goto_0
    return-void

    :cond_5
    invoke-direct {p0, p2, v8}, Lcom/android/server/policy/GlobalActions;->onClickForPortraitConfirmDialog(Landroid/view/View;Z)V

    goto :goto_0

    :cond_6
    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions;->mIsDisableConfirm:Z

    if-nez v6, :cond_4

    invoke-direct {p0, p2, v8}, Lcom/android/server/policy/GlobalActions;->onClickForLandscapeConfirmDialog(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/BitmapDrawable;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;)Z"
        }
    .end annotation

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/policy/GlobalActions$37;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$37;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v6

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/policy/GlobalActions$Action;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;Z)Z"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const-string/jumbo v0, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    const-string/jumbo v1, "getSealedPowerDialogItems"

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    sget v0, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v6, :cond_2

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_1

    :goto_1
    const/4 v7, 0x1

    :goto_2
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_3
    new-instance v0, Lcom/android/server/policy/GlobalActions$42;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v7, :cond_5

    const-string/jumbo v1, " \u2714"

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v2, 0x108044f

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$42;-><init>(Lcom/android/server/policy/GlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    const-string/jumbo v1, "Primary"

    goto :goto_4

    :cond_5
    const-string/jumbo v1, ""

    goto :goto_5

    :cond_6
    return-void
.end method

.method private adjustForceRestartView()V
    .locals 6

    const/4 v5, 0x0

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->isForceRestartSupport:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v3, 0x10203cd

    invoke-virtual {v2, v3}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v3, 0x10203ce

    invoke-virtual {v2, v3}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x104013f

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private awakenIfNecessary()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 6

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/GlobalActions$43;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$43;-><init>(Lcom/android/server/policy/GlobalActions;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_4

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method private checkAirplaneModeOnOff()V
    .locals 5

    const-string/jumbo v1, "GlobalActions"

    const-string/jumbo v2, "===== Start checkAirplaneModeOnOff ====="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAirplaneModeOnOff : airplaneModeOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    const-string/jumbo v1, "GlobalActions"

    const-string/jumbo v2, "checkAirplaneModeOnOff : sendEmptyMessageDelayed MESSAGE_REFRESH_AIRPLANEMODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x96

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private clearCustomDialogItems()Z
    .locals 4

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/GlobalActions$Action;

    instance-of v2, v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    iget-boolean v2, v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    const/4 v2, 0x1

    return v2
.end method

.method private clearSCoverRequestStatus()V
    .locals 4

    const/4 v3, 0x4

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    sget-object v2, Lcom/android/server/policy/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/policy/GlobalActions;->restoreQuickpanelBackground(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/server/policy/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private confirmDialog(Lcom/android/server/policy/GlobalActions$ToggleAction;III)V
    .locals 21

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x1

    sput-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_9

    const v16, 0x104062b

    const/4 v13, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_a

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    :goto_1
    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v17, :cond_0

    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v17, :cond_c

    :cond_0
    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v17, :cond_f

    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v17, :cond_f

    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x10304fa

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_2
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    :cond_1
    if-eqz v9, :cond_11

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    const v17, 0x1090142

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    const/4 v12, 0x1

    const-string/jumbo v17, "GlobalActions"

    const-string/jumbo v18, "confirmDialog : set airplane mode on message for VZW"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v17, 0x1020505

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    const v17, 0x102000b

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/GlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_13

    const v16, 0x10407b6

    :goto_5
    move/from16 v0, v16

    invoke-virtual {v3, v0, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v17, 0x1040009

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    :goto_6
    new-instance v17, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/GlobalActions;->mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v17, :cond_3

    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v17, :cond_16

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v7, v0, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;->dialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v17, :cond_18

    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v17, :cond_18

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x833

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setType(I)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x112000d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_4

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->addFlags(I)V

    :cond_4
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->checkOnAirplaneConfirmShow()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    move/from16 v17, v0

    if-nez v17, :cond_19

    if-nez v12, :cond_5

    if-eqz v11, :cond_19

    :cond_5
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions;->airplaneModeClickAction(Z)V

    const/4 v10, 0x1

    :goto_8
    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v17, :cond_6

    const-string/jumbo v17, "GlobalActions"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "in confirmDialog action = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " resON = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "resOFF = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " config_sf_slowBlur = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x112000d

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " resTitle = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " mAirplaneModeOn = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " mDataModeToggle = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    :cond_7
    :goto_9
    if-nez v10, :cond_8

    sget-object v17, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v17

    const/16 v18, 0x1

    :try_start_0
    sput-boolean v18, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v17

    :cond_8
    return-void

    :cond_9
    const v16, 0x104062a

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v17, "GlobalActions"

    const-string/jumbo v18, "Cannot find ClickListener."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    new-instance v17, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setTitle(I)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v17, v0

    sget-object v19, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_d

    move/from16 v17, p3

    :goto_a
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setMessage(I)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v17, v0

    sget-object v19, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_e

    const v17, 0x10407b6

    :goto_b
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v18, v0

    const v19, 0x1040009

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->create()Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    move-result-object v14

    goto/16 :goto_6

    :cond_d
    move/from16 v17, p4

    goto :goto_a

    :cond_e
    move/from16 v17, v16

    goto :goto_b

    :cond_f
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    const/4 v11, 0x1

    const-string/jumbo v17, "GlobalActions"

    const-string/jumbo v18, "confirmDialog : set airplane mode on message for CHINA"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_12

    move/from16 v17, p3

    :goto_c
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_4

    :cond_12
    move/from16 v17, p4

    goto :goto_c

    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_15

    const-string/jumbo v17, "VZW"

    sget-object v18, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    const v16, 0x104000a

    goto/16 :goto_5

    :cond_14
    const v16, 0x104062b

    goto/16 :goto_5

    :cond_15
    const v16, 0x104062a

    goto/16 :goto_5

    :cond_16
    if-eqz v14, :cond_7

    invoke-virtual {v14}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x833

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x112000d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_17

    invoke-virtual {v14}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->addFlags(I)V

    :cond_17
    invoke-virtual {v14}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v14}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v14}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->show()V

    const-string/jumbo v17, "GlobalActions$ConfirmDialog"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/policy/GlobalActions;->hideQuickpanelBackground(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    goto/16 :goto_9

    :cond_18
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x7de

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_7

    :cond_19
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_8

    :catchall_0
    move-exception v18

    monitor-exit v17

    throw v18
.end method

.method private confirmedAction(Landroid/view/View;Lcom/android/server/policy/GlobalActions$Action;Z)V
    .locals 12

    const v8, 0x1020006

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v8, 0x102000b

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v8, 0x10203d7

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object v0, p2

    if-eqz p3, :cond_0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/policy/GlobalActions;->isSecurePoweroff(I)Z

    move-result v8

    if-eqz v8, :cond_0

    return-void

    :cond_0
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq v8, v9, :cond_3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-eq v8, v9, :cond_3

    invoke-interface {p2}, Lcom/android/server/policy/GlobalActions$Action;->onPress()V

    sget-boolean v8, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v8, :cond_1

    sget-boolean v8, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v8, :cond_2

    :cond_1
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    invoke-virtual {v8, p1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hideAllView(Landroid/view/View;)V

    :goto_0
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void

    :cond_2
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v8, p1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->hideAllView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    sget-boolean v8, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v8, :cond_4

    sget-boolean v8, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v8, :cond_6

    :cond_4
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v9, 0x10203c6

    invoke-virtual {v8, v9}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    :goto_2
    sget v8, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForSecure:I

    if-eqz v8, :cond_7

    const/4 v2, 0x0

    :goto_3
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v8}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v8

    if-ge v2, v8, :cond_7

    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v9, 0x10203c6

    invoke-virtual {v8, v9}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v10, 0x96

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v10, 0x96

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const-string/jumbo v9, "alpha"

    const/16 v10, 0x99

    const/16 v11, 0xff

    filled-new-array {v10, v11}, [I

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v8, 0x12c

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v8, Lcom/android/server/policy/GlobalActions$33;

    invoke-direct {v8, p0, p2}, Lcom/android/server/policy/GlobalActions$33;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;)V

    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_1
.end method

.method private createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 34

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    new-instance v4, Lcom/android/server/policy/GlobalActions$SilentModeAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6}, Lcom/android/server/policy/GlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

    new-instance v4, Lcom/android/server/policy/GlobalActions$13;

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v5, :cond_4

    const v6, 0x1080a26

    :goto_0
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v5, :cond_5

    const v7, 0x1080a26

    :goto_1
    const v8, 0x10407d3

    const v9, 0x10407d4

    const v10, 0x10407d5

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$13;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    new-instance v4, Lcom/android/server/policy/GlobalActions$14;

    const v6, 0x1080a2e

    const v7, 0x1080a2f

    const v8, 0x1040143

    const v9, 0x1040144

    const v10, 0x1040145

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$14;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    new-instance v4, Lcom/android/server/policy/GlobalActions$15;

    const v6, 0x1080a36

    const v7, 0x1080a35

    const v8, 0x10407aa

    const v9, 0x10407ab

    const v10, 0x10407ac

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$15;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mSubScreenOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    new-instance v4, Lcom/android/server/policy/GlobalActions$16;

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v5, :cond_6

    const v6, 0x1080a27

    :goto_2
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v5, :cond_7

    const v7, 0x1080a27

    :goto_3
    const v8, 0x10407bf

    const v9, 0x10407bd

    const v10, 0x10407be

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$16;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v5, 0x1040903

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v5, 0x1040904

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v4, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    const/16 v5, 0x81

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    const/16 v5, 0x50

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setGravity(I)V

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/server/policy/GlobalActions$17;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$17;-><init>(Lcom/android/server/policy/GlobalActions;)V

    const v6, 0x104000a

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/server/policy/GlobalActions$18;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$18;-><init>(Lcom/android/server/policy/GlobalActions;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/server/policy/GlobalActions$19;

    const v6, 0x10803fe

    const v7, 0x10803fe

    const v8, 0x1040900

    const v9, 0x1040901

    const v10, 0x1040901

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$19;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    new-instance v5, Lcom/android/server/policy/GlobalActions$20;

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v4, :cond_8

    const v4, 0x1080a2b

    :goto_4
    const v6, 0x10406ee

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4, v6}, Lcom/android/server/policy/GlobalActions$20;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/policy/GlobalActions;->mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    new-instance v4, Lcom/android/server/policy/GlobalActions$47;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "tw_ic_lock_rebootrecovery"

    const-string/jumbo v2, "drawable"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "tw_ic_do_rebootrecovery"

    const-string/jumbo v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/android/server/policy/GlobalActions$47;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mRebootRecovery:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    new-instance v4, Lcom/android/server/policy/GlobalActions$Screenshot;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "tw_ic_lock_screenshot"

    const-string/jumbo v2, "drawable"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "global_action_screenshot"

    const-string/jumbo v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/android/server/policy/GlobalActions$Screenshot;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mScreenshot:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    new-instance v4, Lcom/android/server/policy/GlobalActions$98;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "tw_ic_lock_screenrec"

    const-string/jumbo v2, "drawable"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "screenrec"

    const-string/jumbo v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/android/server/policy/GlobalActions$98;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mScreenRec:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    new-instance v4, Lcom/android/server/policy/GlobalActions$QuickReboot;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "tw_ic_fast_reboot"

    const-string/jumbo v2, "drawable"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "global_action_fast_reboot"

    const-string/jumbo v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/android/server/policy/GlobalActions$QuickReboot;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mHotReboot:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    new-instance v4, Lcom/android/server/policy/GlobalActions$Flashlight;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "tw_ic_lock_flashlight"

    const-string/jumbo v2, "drawable"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "global_action_flashlight"

    const-string/jumbo v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/android/server/policy/GlobalActions$Flashlight;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mFlashlight:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "bikemode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "globalaction"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/android/server/policy/GlobalActions$21;

    const v6, 0x1080a30

    const v7, 0x1080a30

    const v8, 0x104089e

    const v9, 0x104089f

    const v10, 0x10408a0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$21;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v12, 0x1

    const/4 v4, 0x0

    sput v4, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    const-string/jumbo v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v5, "getSealedState"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/android/server/policy/GlobalActions$PowerAction;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/server/policy/GlobalActions$PowerAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$PowerAction;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x4

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/16 v6, 0x40

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/16 v6, 0x80

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    new-instance v4, Lcom/android/server/policy/GlobalActions$BugReportAction;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/GlobalActions$BugReportAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/16 v6, 0x100

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mRebootRecovery:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const/16 v6, 0x200

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mScreenshot:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const/16 v6, 0x300

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mScreenRec:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const/16 v6, 0x400

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mHotReboot:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const/16 v6, 0x500

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mFlashlight:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const/16 v6, 0x600

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const-string/jumbo v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v5, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/policy/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v12, 0x0

    :cond_2
    if-eqz v12, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107005b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    const/16 v23, 0x0

    :goto_5
    move-object/from16 v0, v20

    array-length v4, v0

    move/from16 v0, v23

    if-ge v0, v4, :cond_20

    aget-object v11, v20, v23

    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_3
    :goto_6
    add-int/lit8 v23, v23, 0x1

    goto :goto_5

    :cond_4
    const v6, 0x1080a32

    goto/16 :goto_0

    :cond_5
    const v7, 0x1080a31

    goto/16 :goto_1

    :cond_6
    const v6, 0x1080a38

    goto/16 :goto_2

    :cond_7
    const v7, 0x1080a39

    goto/16 :goto_3

    :cond_8
    const v4, 0x1080a34

    goto/16 :goto_4

    :cond_9
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_a

    const-string/jumbo v4, "emergencymode"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "users"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "settings"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_a
    invoke-static {}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->isEmergencyModeSupported()Z

    move-result v4

    if-nez v4, :cond_b

    const-string/jumbo v4, "emergencymode"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "Removed Emergency mode button because of Knox creation."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    const-string/jumbo v4, "power"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/policy/GlobalActions$PowerAction;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/server/policy/GlobalActions$PowerAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$PowerAction;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_7
    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    const-string/jumbo v4, "airplane"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    const-string/jumbo v4, "subscreen"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string/jumbo v4, "datamode"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    const-string/jumbo v4, "bugreport"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "bugreport_in_power_menu"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->isCurrentUserOwner()Z

    move-result v4

    if-eqz v4, :cond_12

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v4, :cond_11

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    goto :goto_7

    :cond_10
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    goto :goto_7

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/policy/GlobalActions$BugReportAction;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$BugReportAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_12
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    goto :goto_7

    :cond_13
    const-string/jumbo v4, "restart"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_14
    const-string/jumbo v4, "emergencymode"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_15
    const-string/jumbo v4, "rebootrecovery"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mRebootRecovery:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_16
    const-string/jumbo v4, "screenshot"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mScreenshot:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_17
    const-string/jumbo v4, "screenrec"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mScreenRec:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_18
    const-string/jumbo v4, "quickreboot"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mHotReboot:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_19
    const-string/jumbo v4, "flashlight"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mFlashlight:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_1a
    const-string/jumbo v4, "silent"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_1b
    const-string/jumbo v4, "users"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string/jumbo v4, "fw.power_user_switcher"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/policy/GlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto/16 :goto_7

    :cond_1c
    const-string/jumbo v4, "settings"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_1d
    const-string/jumbo v4, "voiceassist"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_1e
    const-string/jumbo v4, "assist"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_1f
    const-string/jumbo v4, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid global action key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_20
    new-instance v4, Lcom/android/server/policy/GlobalActions$SilentModeAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6}, Lcom/android/server/policy/GlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8, v6}, Lcom/android/server/policy/GlobalActions$SilentModeAction;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v4

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mSilentModeView:Landroid/view/View;

    :cond_21
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "bikemode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "globalaction"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerDialogCustomItemsState()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->clearCustomDialogItems()Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v22

    if-eqz v22, :cond_23

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/knox/custom/PowerItem;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/custom/PowerItem;->getIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/custom/PowerItem;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/custom/PowerItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/custom/PowerItem;->getIntentAction()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/policy/GlobalActions;->addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Z

    goto :goto_8

    :cond_23
    new-instance v4, Lcom/android/server/policy/GlobalActions$MyAdapter;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/server/policy/GlobalActions$MyAdapter;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$MyAdapter;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    new-instance v28, Lcom/android/internal/app/AlertController$AlertParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_24

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v4, :cond_2d

    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-object/from16 v0, v28

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, 0x1

    move-object/from16 v0, v28

    iput-boolean v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    :goto_9
    new-instance v21, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-direct {v0, v4, v1, v5}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;Landroid/os/Handler;)V

    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "Create GlobalActionsDialog"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v4, :cond_33

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_25

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_2e

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v4, :cond_2e

    :cond_25
    new-instance v4, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v6}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203cf

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x102006f

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203d4

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203d5

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203d6

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203c8

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203ca

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203cb

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203cc

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mSecondAnimatedText:Landroid/widget/TextView;

    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCancelButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/server/policy/GlobalActions$22;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$22;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v5, 0x1040138

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const v6, 0x104013e

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    new-instance v5, Lcom/android/server/policy/GlobalActions$23;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$23;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    if-nez v4, :cond_26

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCancelEnable:Z

    if-eqz v4, :cond_2f

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->adjustBottomView()V

    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->adjustForceRestartView()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->createPortraitGlobalActionsDialog()V

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_27

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_31

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v4, :cond_31

    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->createLandscapeGlobalActionsDialog()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203c6

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x106014d

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    if-eqz v4, :cond_30

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x0

    const/16 v7, 0x80

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    const-wide/16 v4, 0x12c

    invoke-virtual {v15, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    :goto_d
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_2a

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v4, :cond_2c

    :cond_2a
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-nez v4, :cond_2b

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setLongClickable(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050219

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v7

    move/from16 v0, v16

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    new-instance v5, Lcom/android/server/policy/GlobalActions$27;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$27;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7de

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2b
    const-string/jumbo v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v5, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/policy/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2c

    new-instance v4, Lcom/android/server/policy/GlobalActions$28;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/GlobalActions$28;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_2c
    return-object v21

    :cond_2d
    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_9

    :cond_2e
    new-instance v4, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v6}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203cf

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x102006f

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203d4

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203d5

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203d6

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203c8

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203cb

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203cc

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mSecondAnimatedText:Landroid/widget/TextView;

    goto/16 :goto_a

    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_b

    :cond_30
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x0

    const/16 v7, 0x26

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    const-wide/16 v4, 0x12c

    invoke-virtual {v15, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_c

    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203c6

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x106014d

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    if-eqz v4, :cond_32

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x0

    const/16 v7, 0x80

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    const-wide/16 v4, 0x12c

    invoke-virtual {v15, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    goto/16 :goto_d

    :cond_32
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x0

    const/16 v7, 0x26

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    const-wide/16 v4, 0x12c

    invoke-virtual {v15, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_e

    :cond_33
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_34

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v4, :cond_35

    :cond_34
    const v4, 0x1040133

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setTitle(I)V

    goto/16 :goto_d

    :cond_35
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "mIsCoverOpen  is false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x833

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setLayout(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/LayoutInflater;

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v4, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_36

    const v4, 0x1090071

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v32

    new-instance v4, Lcom/android/server/policy/GlobalActions$24;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/GlobalActions$24;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->isMiniCoverClosed()Z

    move-result v4

    if-eqz v4, :cond_3c

    new-instance v33, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    move-object/from16 v0, v33

    invoke-direct {v0, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_d

    :cond_36
    const v4, 0x1090072

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v32

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-nez v4, :cond_38

    const-string/jumbo v4, "americano"

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    const-string/jumbo v4, "mocha"

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    :cond_37
    const v4, 0x10203a8

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/android/server/policy/GlobalActions$25;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/GlobalActions$25;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_38
    const v4, 0x102037e

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    const v4, 0x10203df

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_39

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setEnabled(Z)V

    :cond_39
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    new-instance v5, Lcom/android/server/policy/GlobalActions$26;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$26;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v4, 0x1020016

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    const-string/jumbo v4, "VZW"

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104011b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :cond_3a
    const v4, 0x102006f

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    goto/16 :goto_10

    :cond_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040133

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :cond_3c
    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    goto/16 :goto_d
.end method

.method private createLandscapeGlobalActionsDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050209

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v1, 0x10203c9

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/server/policy/GlobalActions$34;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$34;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/server/policy/GlobalActions$35;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$35;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initLandscapeAddView()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105020a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    goto :goto_0
.end method

.method private createPortraitGlobalActionsDialog()V
    .locals 2

    const v1, 0x10203c7

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/server/policy/GlobalActions$29;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$29;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/server/policy/GlobalActions$30;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$30;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initPortraitAddView()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    goto :goto_0
.end method

.method private doActionByBixby(I)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPowerOffIconResId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mRestartIconResId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "itemResID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->getActionWithTag(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->getActionWithTag(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemNumbyBixby:I

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/policy/GlobalActions;->actionClicked(Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemNumbyBixby:I

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/GlobalActions;->actionClicked(Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private doAnimation(Landroid/view/View;FFFIZ)V
    .locals 32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-object/from16 v25, v0

    if-nez v25, :cond_0

    return-void

    :cond_0
    const v25, 0x1020006

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const v25, 0x102000b

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v25, 0x10203d7

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const v26, 0x10203cc

    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v25, 0x10203d9

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    if-eqz p6, :cond_8

    invoke-virtual {v11}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x10407db

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v28

    const/16 v29, 0x0

    aput v28, v27, v29

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0x1

    aput v28, v27, v29

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v28

    const/16 v29, 0x0

    aput v28, v27, v29

    const/16 v28, 0x0

    const/16 v29, 0x1

    aput v28, v27, v29

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v28

    const/16 v29, 0x0

    aput v28, v27, v29

    const/16 v28, 0x0

    const/16 v29, 0x1

    aput v28, v27, v29

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setClickable(Z)V

    :goto_1
    const-wide/16 v26, 0x190

    move-wide/from16 v0, v26

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v24

    const/4 v14, 0x0

    sget-boolean v25, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v25, :cond_3

    sget-boolean v25, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v25, :cond_a

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x10203c6

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    :goto_2
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v16, 0x0

    if-eqz p6, :cond_b

    const-string/jumbo v25, "translationX"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput p2, v26, v27

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    const-string/jumbo v25, "translationY"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput p3, v26, v27

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    const-string/jumbo v25, "translationY"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    invoke-virtual {v15}, Landroid/widget/TextView;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x3fd999999999999aL    # 0.4

    mul-double v28, v28, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    :goto_3
    const-string/jumbo v25, "scaleX"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput p4, v26, v27

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    const-string/jumbo v25, "scaleY"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput p4, v26, v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v10, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    const/16 v18, 0x0

    const/16 v20, 0x0

    const v25, 0x10203da

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const/high16 v25, 0x3f800000    # 1.0f

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 v13, 0x0

    if-eqz p6, :cond_c

    const-string/jumbo v25, "alpha"

    const/16 v26, 0x0

    const/16 v27, 0xff

    filled-new-array/range {v26 .. v27}, [I

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v13

    const-string/jumbo v25, "scaleX"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const v27, 0x3f6b851f    # 0.92f

    const/16 v28, 0x0

    aput v27, v26, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    const-string/jumbo v25, "scaleY"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const v27, 0x3f99999a    # 1.2f

    const/16 v28, 0x0

    aput v27, v26, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    :goto_4
    const-wide/16 v26, 0xc8

    move-wide/from16 v0, v26

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v5, 0x0

    if-eqz p6, :cond_e

    const v25, 0x106014d

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x80

    const/16 v28, 0xbf

    filled-new-array/range {v27 .. v28}, [I

    move-result-object v27

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    :goto_5
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v25, Lcom/android/server/policy/GlobalActions$36;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/android/server/policy/GlobalActions$36;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/widget/FrameLayout;)V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move/from16 v0, p2

    float-to-int v0, v0

    move/from16 v25, v0

    const/16 v26, -0x3e8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_4

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v22, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_4
    if-eqz v9, :cond_5

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v9, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_5
    move/from16 v0, p3

    float-to-int v0, v0

    move/from16 v25, v0

    const/16 v26, -0x3e8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_6

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v23, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_6
    move/from16 v0, p5

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v25, Landroid/view/animation/PathInterpolator;

    const v26, 0x3e2e147b    # 0.17f

    const v27, 0x3e2e147b    # 0.17f

    const v28, 0x3e4ccccd    # 0.2f

    const/high16 v29, 0x3f800000    # 1.0f

    invoke-direct/range {v25 .. v29}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_7
    invoke-virtual {v11}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x10407dc

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v28

    const/16 v29, 0x0

    aput v28, v27, v29

    const/16 v28, 0x0

    const/16 v29, 0x1

    aput v28, v27, v29

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v28

    const/16 v29, 0x0

    aput v28, v27, v29

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0x1

    aput v28, v27, v29

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v28

    const/16 v29, 0x0

    aput v28, v27, v29

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0x1

    aput v28, v27, v29

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    move-object/from16 v25, v0

    const v26, 0x10203c6

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v25, "x"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput p2, v26, v27

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    const-string/jumbo v25, "y"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput p3, v26, v27

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    const-string/jumbo v25, "translationY"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v27, v26, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    goto/16 :goto_3

    :cond_c
    const-string/jumbo v25, "alpha"

    const/16 v26, 0xff

    const/16 v27, 0x0

    filled-new-array/range {v26 .. v27}, [I

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v13

    const-string/jumbo v25, "scaleX"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x0

    aput v27, v26, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    const-string/jumbo v25, "scaleY"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x0

    aput v27, v26, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    goto/16 :goto_4

    :cond_d
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x0

    const/16 v28, 0x73

    filled-new-array/range {v27 .. v28}, [I

    move-result-object v27

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    const-string/jumbo v26, "alpha"

    const/16 v27, 0xbf

    const/16 v28, 0x80

    filled-new-array/range {v27 .. v28}, [I

    move-result-object v27

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    goto/16 :goto_5

    :cond_f
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x73

    const/16 v28, 0x0

    filled-new-array/range {v27 .. v28}, [I

    move-result-object v27

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    goto/16 :goto_5
.end method

.method private getActionWithTag(I)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_1
    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemNumbyBixby:I

    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method private getAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    new-instance v0, Lcom/android/server/policy/GlobalActions$39;

    const v1, 0x1080375

    const v2, 0x1040147

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$39;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getCurrentNW()I
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[getCurrentNW()] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "CURRENT_NETWORK"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "CURRENT_NETWORK"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private getLockdownAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    new-instance v0, Lcom/android/server/policy/GlobalActions$41;

    const v1, 0x108002f

    const v2, 0x1040149

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$41;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getPhoneId(I)I
    .locals 2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    return v0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 1

    new-instance v0, Lcom/android/server/policy/GlobalActions$45;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/GlobalActions$45;-><init>(Lcom/android/server/policy/GlobalActions;I)V

    return-object v0
.end method

.method private getSCoverState()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCoverManager.getCoverState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "state is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "mCoverManager is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    new-instance v0, Lcom/android/server/policy/GlobalActions$38;

    const v1, 0x10804be

    const v2, 0x1040146

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$38;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    new-instance v0, Lcom/android/server/policy/GlobalActions$40;

    const v1, 0x10804d5

    const v2, 0x1040148

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$40;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private handleShow()V
    .locals 9

    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->awakenIfNecessary()V

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getSCoverState()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isMobileKeyboard()Z

    move-result v3

    :goto_0
    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isClearCover()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-eqz v3, :cond_2

    :cond_0
    const-string/jumbo v3, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v5, "getPowerMenuLockedState"

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "false"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v4, "Knox Customization: GlobalActions dialog will not display when keyguard is showing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getModel()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v4, "Device is not supported in Global Actions in main view, show panel in cocktail bar"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->notifyCocktailBarGlobalActions()V

    return-void

    :cond_3
    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v5, "handleShow() : Call createDialog()"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->prepareDialog()V

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v3

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v3, v7}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v3

    instance-of v3, v3, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v3, v7}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v3

    instance-of v3, v3, Lcom/android/server/policy/GlobalActions$LongPressAction;

    if-eqz v3, :cond_a

    :cond_4
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1040133

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x105021c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/server/policy/GlobalActions;->mSViewCoverWidth:I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x105021d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/server/policy/GlobalActions;->mSViewCoverHeight:I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x105021a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/server/policy/GlobalActions;->mClearCoverWidth:I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1050017

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/server/policy/GlobalActions;->mStatusHeight:I

    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v5, "handleShow() : call mDialog.show()"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->show()V

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/high16 v5, 0x10000

    invoke-virtual {v3, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    sput-boolean v7, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    const/4 v5, 0x6

    if-ne v3, v5, :cond_5

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    if-nez v3, :cond_5

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v4, "handleShow(), mini dialog showed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string/jumbo v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleShow() : mIsCoverOpen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v3, :cond_b

    :cond_6
    :goto_1
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v3, :cond_7

    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    sget v4, Lcom/android/server/policy/GlobalActions;->mClearCoverWidth:I

    const/4 v5, -0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    :cond_7
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Landroid/view/Window;->setLayout(II)V

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    if-eqz v3, :cond_c

    const v3, 0x3ecccccd    # 0.4f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    :goto_2
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v3, :cond_8

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_8
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/Window;->setWindowAnimations(I)V

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112006a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x202

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_9
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->hideQuickpanelBackground()V

    :goto_3
    return-void

    :cond_a
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v3, v7}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->onPress()V

    goto :goto_3

    :cond_b
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    sget v4, Lcom/android/server/policy/GlobalActions;->mSViewCoverWidth:I

    sget v5, Lcom/android/server/policy/GlobalActions;->mSViewCoverHeight:I

    sget v6, Lcom/android/server/policy/GlobalActions;->mStatusHeight:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_1

    :cond_c
    const/high16 v3, 0x3f400000    # 0.75f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_2

    :cond_d
    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v4, "Can not show dialog as it is not well formed properly"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private hideQuickpanelBackground()V
    .locals 1

    const-string/jumbo v0, "GlobalActions"

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->hideQuickpanelBackground(Ljava/lang/String;)V

    return-void
.end method

.method private hideQuickpanelBackground(Ljava/lang/String;)V
    .locals 4

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v1, Lcom/android/server/policy/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "mCoverManager.registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private initLandscapeAddView()V
    .locals 4

    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemLandscapeDivider:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/policy/GlobalActions;->makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initPortraitAddView()V
    .locals 4

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_2

    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDivider:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/policy/GlobalActions;->makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerSViewCover:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerOverFour:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    goto :goto_0

    :cond_3
    return-void
.end method

.method private initValueForCreate()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "shopdemo"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->isShopDemo:Z

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1050208

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1050209

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1050206

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1050207

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemHeightWithStatus:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x105020c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x105020d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthLand:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1050217

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingTop:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1050218

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1050212

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDivider:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1050213

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerOverFour:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1050214

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemLandscapeDivider:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1050215

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerSViewCover:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x105020e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemWidth:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x105020f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleCancelItemWidth:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1050210

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewDoubleItemWidth:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1050211

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    const v1, 0x1080a29

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    const v1, 0x1080a2a

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmPowerOffIconResId:I

    const v1, 0x1080a2b

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    const v1, 0x1080a2c

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmRestartIconResId:I

    const v1, 0x1080a27

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    const v1, 0x1080a26

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkIconResId:I

    const v1, 0x10407bf

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyStringId:I

    const v1, 0x1040143

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    const v1, 0x10407d3

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkStringId:I

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sput v3, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForSecure:I

    sput v3, Lcom/android/server/policy/GlobalActions;->sIsSelectedItemTagForBixby:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemNumbyBixby:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsDisableConfirm:Z

    return-void

    :cond_0
    move v1, v3

    goto/16 :goto_0
.end method

.method private isActionAvailable(I)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isTSafeLock()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOff:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return v4

    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isSKTCarrierLockPlusEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isFMMlocked()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq p1, v0, :cond_3

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne p1, v0, :cond_5

    :cond_3
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForFMM:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    return v4

    :cond_5
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    if-eq p1, v0, :cond_3

    :cond_6
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq p1, v0, :cond_7

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne p1, v0, :cond_b

    :cond_7
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v1, "isPowerOffAllowed"

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mTrueStringArray:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "power or restart : restricted by MDM "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v4

    :cond_9
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mUnableRestartForFMM:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_a
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mUnableEmergencyforFMM:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_b
    return v3
.end method

.method private isCHINA()Z
    .locals 3

    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CMCC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isClearCover()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isCurrentUserOwner()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isDataCapable(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    const-string/jumbo v7, ""

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string/jumbo v3, "temp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v7

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isFMMlocked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method private isGlobalActionConfirming()Z
    .locals 2

    sget-object v0, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isIntEDM(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private isMSim()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMiniCoverClosed()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isMobileKeyboard()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isSKTCarrierLockPlusEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled(I)Z

    move-result v0

    return v0
.end method

.method private isSecurePoweroff(I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq p1, v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isSimLock()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "isFMMlocked true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput p1, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForSecure:I

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->sendBendedPendingIntent()V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v3

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForSecureLock:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v3

    :cond_4
    return v2
.end method

.method private isSimCardInserted(I)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "ril.MSIMM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez p1, :cond_0

    return v5

    :cond_0
    return v4

    :cond_1
    const-string/jumbo v6, "ril.ICC_TYPE"

    const-string/jumbo v7, "0,0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    return v5

    :cond_2
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-eqz v2, :cond_3

    const-string/jumbo v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    return v5

    :pswitch_0
    aget-object v2, v0, v5

    goto :goto_0

    :pswitch_1
    aget-object v2, v0, v4

    goto :goto_0

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_5

    :goto_1
    return v4

    :cond_5
    move v4, v5

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isSimLock()Z
    .locals 10

    const/16 v9, 0x9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-array v0, v1, [I

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isMSim()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    aput v5, v0, v4

    aget v5, v0, v4

    if-eq v5, v7, :cond_0

    aget v5, v0, v4

    if-ne v5, v8, :cond_1

    :cond_0
    move v5, v6

    :goto_1
    or-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    aget v5, v0, v4

    if-ne v5, v9, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    if-eq v2, v7, :cond_4

    if-ne v2, v8, :cond_6

    :cond_4
    const/4 v3, 0x1

    :cond_5
    :goto_2
    return v3

    :cond_6
    if-ne v2, v9, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private isSimReady()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const-string/jumbo v5, "ro.config.donot_nosim"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v0, :cond_0

    if-ne v0, v8, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x10407ca

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v5, 0x10407cb

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7de

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    new-instance v5, Lcom/android/server/policy/GlobalActions$44;

    invoke-direct {v5, p0}, Lcom/android/server/policy/GlobalActions$44;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    sget-object v5, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v5

    const/4 v6, 0x1

    :try_start_0
    sput-boolean v6, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return v7

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6

    :cond_2
    return v8
.end method

.method private isSingleActionItem(Landroid/view/View;)Z
    .locals 3

    const v2, 0x1020006

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq v1, v2, :cond_0

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isTSafeLock()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->hasTSafeLock()Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    const-string/jumbo v0, "off_menu_setting"

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "off_menu_setting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isUSA()Z
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "usa"

    const-string/jumbo v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_0
    const-string/jumbo v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "MTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "XAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "LRA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SPT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "CSP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "AIO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "TFN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "CRI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return v3

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private isVoiceCapable()Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    return v1
.end method

.method private makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;
    .locals 21

    move-object/from16 v4, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v16

    invoke-interface {v0, v15, v1, v2, v3}, Lcom/android/server/policy/GlobalActions$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v14

    const v15, 0x1020006

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v15, 0x10203da

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/GlobalActions;->mConfirmPowerOffIconResId:I

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    :goto_0
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setAlpha(F)V

    if-eqz p3, :cond_5

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v8, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v15

    add-int/lit8 v16, p2, 0x1

    sub-int v15, v15, v16

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v8, v0, v1, v2, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_1
    :goto_1
    invoke-virtual {v14, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v14}, Landroid/view/View;->bringToFront()V

    const v15, 0x10203d9

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    move-object v13, v14

    if-eqz v5, :cond_3

    if-eqz p3, :cond_2

    const v15, 0x10203d7

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    sget-boolean v15, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v15, :cond_2

    sget-boolean v15, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v15, :cond_6

    :cond_2
    :goto_2
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    new-instance v15, Lcom/android/server/policy/GlobalActions$31;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v15, v0, v1, v14, v2}, Lcom/android/server/policy/GlobalActions$31;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    invoke-virtual {v5, v15}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v15, Lcom/android/server/policy/GlobalActions$32;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/server/policy/GlobalActions$32;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v5, v15}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "accessibility"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v16, 0x1080352

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    invoke-virtual {v14}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const-wide/16 v16, 0x258

    invoke-virtual/range {v15 .. v17}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    new-instance v16, Landroid/view/animation/PathInterpolator;

    const v17, 0x3ebd70a4    # 0.37f

    const/16 v18, 0x0

    const v19, 0x3e99999a    # 0.3f

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-direct/range {v16 .. v20}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    return-object v14

    :cond_4
    invoke-virtual {v6}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/GlobalActions;->mConfirmRestartIconResId:I

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    :cond_5
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v8, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v15

    add-int/lit8 v16, p2, 0x1

    sub-int v15, v15, v16

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v8, v0, v1, v15, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v11, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/GlobalActions;->isDataToggleSupport:Z

    if-nez v15, :cond_2

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v16, 0x1080353

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3
.end method

.method private notifyCocktailBarGlobalActions()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "GlobalActions"

    const-string/jumbo v3, "notifyCocktailBarGlobalActions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "show_global_actions"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private onClickForHideLandscapeConfirmDialog(Z)V
    .locals 12

    const/4 v11, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemLandscapeDivider:I

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const-string/jumbo v2, "HideConfirmLandscape"

    invoke-virtual {v0, v2}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x10203d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setClickable(Z)V

    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x10203d7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    const/4 v2, -0x2

    invoke-direct {v9, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    add-int/lit8 v2, v7, 0x1

    sub-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    invoke-virtual {v9, v6, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_2
    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    const/16 v5, 0x12c

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_1

    :cond_3
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-nez v0, :cond_4

    sput-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    :cond_4
    return-void
.end method

.method private onClickForHidePortraitConfirmDialog(Z)V
    .locals 12

    const/4 v11, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const-string/jumbo v2, "HideConfirmPortrait"

    invoke-virtual {v0, v2}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    :cond_1
    const/4 v7, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x10203d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setClickable(Z)V

    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const v0, 0x10203d7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    const/4 v2, -0x2

    invoke-direct {v9, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    add-int/lit8 v2, v7, 0x1

    sub-int/2addr v0, v2

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    invoke-virtual {v9, v6, v6, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_4
    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, -0x3b860000    # -1000.0f

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    const/16 v5, 0x12c

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_1

    :cond_5
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-nez v0, :cond_6

    sput-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    :cond_6
    return-void
.end method

.method private onClickForLandscapeConfirmDialog(Landroid/view/View;Z)V
    .locals 13

    const/4 v5, 0x0

    const v4, 0x3fa66666    # 1.3f

    const/4 v6, 0x1

    sput-object p1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    const v1, 0x10203d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions;->item_yposition(I)I

    move-result v0

    int-to-float v7, v0

    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v11}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v12}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v0

    int-to-float v8, v0

    const/4 v0, 0x2

    new-array v10, v0, [I

    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v10, v5

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    aget v0, v10, v6

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    const-string/jumbo v0, "ksh current x ="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hideAllViewForLand(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const-string/jumbo v1, "ConfirmLandscape"

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    sub-float v2, v7, v0

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    sub-float v3, v8, v0

    const/16 v5, 0x12c

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    :goto_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    sput-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    sub-float v2, v7, v0

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    sub-float v3, v8, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_0
.end method

.method private onClickForPortraitConfirmDialog(Landroid/view/View;Z)V
    .locals 14

    sput-object p1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    const v1, 0x10203d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v12}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v13}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions;->item_yposition(I)I

    move-result v0

    int-to-float v7, v0

    const/4 v0, 0x2

    new-array v10, v0, [I

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    :goto_0
    const/4 v0, 0x1

    aget v0, v10, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    const-string/jumbo v0, "ksh current y ="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hideAllView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const-string/jumbo v1, "ConfirmPortrait"

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    :goto_1
    if-eqz p2, :cond_4

    const/high16 v2, -0x3b860000    # -1000.0f

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    sub-float v3, v7, v0

    const v4, 0x3fa66666    # 1.3f

    const/16 v5, 0x12c

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    :goto_2
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v0, :cond_5

    :cond_1
    :goto_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    return-void

    :cond_2
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationInWindow([I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->hideAllView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    const/high16 v2, -0x3b860000    # -1000.0f

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    sub-float v3, v7, v0

    const v4, 0x3fa66666    # 1.3f

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    iget v11, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    int-to-float v1, v11

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    goto :goto_3
.end method

.method private onToggleDatamode()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v0, :cond_0

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->onPressAction()V

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->clearSCoverRequestStatus()V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_0
.end method

.method private prepareDialog()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_0
    const-string/jumbo v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ABSENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkStringId:I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v2, :cond_4

    const-string/jumbo v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v3, "getSealedState"

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "bikemode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "globalaction"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "isBikeMode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    :cond_5
    :goto_3
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyStringId:I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    :cond_6
    const-string/jumbo v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareDialog : mIsCoverOpen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v2, :cond_7

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7de

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    :cond_7
    :goto_4
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v2, :cond_9

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_9
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->registerSecureLockReceiver()V

    return-void

    :cond_a
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    goto/16 :goto_1

    :cond_c
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto/16 :goto_2

    :cond_d
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    goto/16 :goto_3

    :cond_e
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x833

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_f

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_f
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106014b

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto/16 :goto_4
.end method

.method private registerBixbyReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.intent.action.BIXBY_GLOBAL_ACTIONS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    const-string/jumbo v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerPhoneStateListener: sim# "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimServiceState:[I

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    const-string/jumbo v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerPhoneStateListener subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    aget v1, v2, v6

    if-lez v1, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/server/policy/GlobalActions;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimServiceState:[I

    aput v6, v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v6}, Lcom/android/server/policy/GlobalActions;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v7}, Lcom/android/server/policy/GlobalActions;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v8, v3, v0

    goto :goto_1

    :cond_3
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/server/policy/GlobalActions;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private registerSecureLockReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private restoreQuickpanelBackground()V
    .locals 1

    const-string/jumbo v0, "GlobalActions"

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->restoreQuickpanelBackground(Ljava/lang/String;)V

    return-void
.end method

.method private restoreQuickpanelBackground(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "miniModeUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendBendedPendingIntent()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v4, v6, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "afterKeyguardGone"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "dismissType"

    const-string/jumbo v5, "shutdown"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "sendBendedPendingIntent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v3, v0}, Landroid/app/KeyguardManager;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method

.method private toggleScreenRecord()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.app.screenrecorder"

    const-string/jumbo v2, "com.sec.app.screenrecorder.activity.LauncherActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private unRegisterBixbyReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private unRegisterSecureLockReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    .locals 13

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-eq p2, v10, :cond_0

    sget-object v10, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-ne p2, v10, :cond_3

    :cond_0
    const/4 v6, 0x1

    :goto_0
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    :goto_1
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_c

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const v10, 0x1020006

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v10, 0x102000b

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v10, 0x10203d7

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v10, 0x10203d9

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v7, :cond_2

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyStringId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v6, :cond_5

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_3
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_4
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10407dd

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    goto/16 :goto_1

    :cond_5
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_3

    :cond_6
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    if-eqz v6, :cond_7

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_5
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_7
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_5

    :cond_8
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkStringId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    if-eqz v6, :cond_9

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_6
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_9
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_6

    :cond_a
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "bikemode"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "globalaction"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v10, :cond_1

    if-eqz v6, :cond_b

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_7
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_b
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_7

    :cond_c
    return-void
.end method

.method private virtualDismissInSCover()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "miniModeUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "sender"

    const-string/jumbo v2, "GlobalActions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "sender"

    const-string/jumbo v2, "GlobalActions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "sender"

    const-string/jumbo v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "sender"

    const-string/jumbo v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    return-void
.end method

.method private virtualDismissInSCover(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "miniModeUI"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method


# virtual methods
.method adjustBottomView()V
    .locals 11

    const v10, 0x10203d3

    const v9, 0x10203d2

    const v8, 0x10203d0

    const/16 v7, 0x8

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsCancelEnable:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/android/server/policy/GlobalActions$46;

    invoke-direct {v6, p0}, Lcom/android/server/policy/GlobalActions$46;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_1
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v5, :cond_3

    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemWidth:I

    iget v6, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    invoke-virtual {v5, v9}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    invoke-virtual {v5, v8}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    invoke-virtual {v5, v10}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleCancelItemWidth:I

    iget v6, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v5, v9}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v5, v8}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v5, v10}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public airplaneModeClickAction(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->onPressAction()V

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->clearSCoverRequestStatus()V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on_reason_usb3"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "USB 3.0 is disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tw_globalactions_dont_show_again"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_4
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_0

    :cond_5
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "USB manager is not created hence USB 3.0 connection can not be terminated."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public bottomViewOnTouch(IZZ)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_4

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    if-eqz p3, :cond_3

    if-eqz p2, :cond_2

    invoke-direct {p0, v2}, Lcom/android/server/policy/GlobalActions;->onClickForHidePortraitConfirmDialog(Z)V

    :goto_0
    return v2

    :cond_1
    return v2

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/policy/GlobalActions;->onClickForHideLandscapeConfirmDialog(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    if-ne p1, v2, :cond_5

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-eqz v0, :cond_5

    if-eqz p3, :cond_7

    if-eqz p2, :cond_6

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    :cond_5
    :goto_1
    return v1

    :cond_6
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    goto :goto_1

    :cond_7
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method calculateDescritionViewHeight(Landroid/view/View;I)V
    .locals 10

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const v2, 0x10203d7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0, v2}, Lcom/android/server/policy/GlobalActions;->item_yposition(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, v6

    int-to-double v6, p2

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, v6

    int-to-double v6, p2

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthLand:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0
.end method

.method public checkOnAirplaneConfirmShow()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "checkOnAirplaneConfirmShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tw_globalactions_dont_show_again"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    :goto_0
    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkOnAirplaneConfirmShow : mShowOnAirplaneConfirm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    goto :goto_0
.end method

.method public hasTSafeLock()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "com.skt.t_smart_charge"

    :try_start_0
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v5, "com.skt.t_smart_charge"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    return v7
.end method

.method public initStrings()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10407a1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOff:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10407a2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableAirplanemode:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10407a3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLDUWarning:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10407a4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForFMM:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10407a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableRestartForFMM:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10407a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableEmergencyforFMM:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10407ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForSecureLock:Ljava/lang/String;

    return-void
.end method

.method public insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->SURVEY_LOG:Z

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insetLog feature="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method isDialogPowerOptionHidden()Z
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v2, "getSealedState"

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v2, "getSealedPowerDialogOptionMode"

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method isDialogShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPortrait()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTouchInside(Landroid/view/View;II)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v0, v6, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v6, v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int v2, v6, v7

    aget v6, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v1, v6, v7

    aget v6, v0, v5

    if-lt p2, v6, :cond_1

    if-gt p2, v2, :cond_1

    aget v6, v0, v4

    if-lt p3, v6, :cond_1

    if-gt p3, v1, :cond_0

    :goto_0
    move v3, v4

    :goto_1
    return v3

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1
.end method

.method item_xposition(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    goto :goto_0
.end method

.method item_yposition(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->displayheight:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->displayheight:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->displayheight:I

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/policy/GlobalActions$SilentModeAction;

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick  which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->onPress()V

    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_2
    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->unRegisterSecureLockReceiver()V

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->unRegisterBixbyReceiver()V

    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :cond_3
    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_2
.end method

.method public requestUpdateWindowBlur(F)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public showDialog(ZZ)V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    const-string/jumbo v3, "com.android.service.GlobalAction"

    const-string/jumbo v5, "0001"

    const-string/jumbo v6, "null"

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/server/policy/GlobalActions;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    new-instance v3, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;

    invoke-direct {v3, p0, v7}, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$UIUpdateHandler;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->initStrings()V

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initValueForCreate()V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isModifying()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v4, "Cannot use Global Action. because Emergency mode Entering.."

    invoke-static {v3, v4}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    if-nez v3, :cond_2

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v3, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState()Z

    move-result v5

    or-int/2addr v3, v5

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    const-string/jumbo v3, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Oring mKeyguardShowing and pm.getKeyguardShowState()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean p2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    const-string/jumbo v3, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "device provision check : mDeviceProvisioned ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_2
    return-void

    :cond_4
    move v3, v4

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    iput-object v7, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showDialog() : mIsFirstCreated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    if-eqz v3, :cond_7

    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v5, "showDialog() : call checkAirplaneModeOnOff"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->checkAirplaneModeOnOff()V

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    :cond_7
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    goto :goto_2
.end method

.method public showErrorMessage(I)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
