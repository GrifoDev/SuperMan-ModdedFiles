.class public Lcom/android/server/InputMethodManagerService;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/InputMethodManagerService$1;,
        Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;,
        Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;,
        Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;,
        Lcom/android/server/InputMethodManagerService$CarModeReceiver;,
        Lcom/android/server/InputMethodManagerService$ClientState;,
        Lcom/android/server/InputMethodManagerService$HardKeyboardBehavior;,
        Lcom/android/server/InputMethodManagerService$HardKeyboardListener;,
        Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;,
        Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;,
        Lcom/android/server/InputMethodManagerService$InputMethodFileManager;,
        Lcom/android/server/InputMethodManagerService$KMSKeyboardReceiver;,
        Lcom/android/server/InputMethodManagerService$KeyboardDetect;,
        Lcom/android/server/InputMethodManagerService$KeyboardSubTypeReceiver;,
        Lcom/android/server/InputMethodManagerService$KnoxDesktopModeReceiver;,
        Lcom/android/server/InputMethodManagerService$Lifecycle;,
        Lcom/android/server/InputMethodManagerService$LocalServiceImpl;,
        Lcom/android/server/InputMethodManagerService$MethodCallback;,
        Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;,
        Lcom/android/server/InputMethodManagerService$MyPackageMonitor;,
        Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;,
        Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;,
        Lcom/android/server/InputMethodManagerService$SessionState;,
        Lcom/android/server/InputMethodManagerService$SettingsObserver;,
        Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;,
        Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;,
        Lcom/android/server/InputMethodManagerService$VZWResetSettingReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_KMS_EVENT:Ljava/lang/String; = "com.sec.android.sidesync.action.KMS_KEYBOARD"

.field private static final ACTION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.action.LOCK_TASK_MODE"

.field private static final ACTION_PSS_EVENT:Ljava/lang/String; = "com.sec.android.sidesync.action.PSS_KEYBOARD"

.field private static final ACTION_SUBTYPE_EVENT:Ljava/lang/String; = "com.sec.android.inputmethod.Subtype"

.field private static final ACTION_VZW_RESET_SETTING:Ljava/lang/String; = "com.samsung.intent.action.SETTINGS_SOFT_RESET"

.field private static final AUXILIARAY_EMOTICON_KEYPAD:Ljava/lang/String; = "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

.field private static final CHINESE_KEYPAD:Ljava/lang/String; = "com.samsung.inputmethod/.SamsungIME"

.field private static COUNTRY_CODE:Ljava/lang/String; = null

.field static final DEBUG:Z = false

.field static final DEBUG_RESTORE:Z = false

.field private static final EXTRA_KMS_STATE:Ljava/lang/String; = "device_state"

.field private static final EXTRA_PSS_STATE:Ljava/lang/String; = "device_state"

.field private static final EXTRA_SIP_SUBTYPE:Ljava/lang/String; = "SamsungIME.Subtype"

.field public static final IMS_MASK_HW_KEYBOARD:I = 0xf

.field private static final JAPANESE_KEYPAD:Ljava/lang/String; = "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

.field static final LAST_USED_INPUT_METHOD:Ljava/lang/String; = "last_used_input_method"

.field public static final LOCK_TO_APP_EXIT_LOCKED:Ljava/lang/String; = "lock_to_app_exit_locked"

.field static final MSG_ATTACH_TOKEN:I = 0x410

.field static final MSG_BIND_CLIENT:I = 0xbc2

.field static final MSG_BIND_INPUT:I = 0x3f2

.field static final MSG_CREATE_SESSION:I = 0x41a

.field static final MSG_HARD_KEYBOARD_SWITCH_CHANGED:I = 0xfa0

.field static final MSG_HIDE_CURRENT_INPUT_METHOD:I = 0x40b

.field static final MSG_HIDE_SOFT_INPUT:I = 0x406

.field static final MSG_MINIMIZE_SOFT_INPUT:I = 0x400

.field static final MSG_RESTART_INPUT:I = 0x7da

.field static final MSG_SET_ACTIVE:I = 0xbcc

.field static final MSG_SET_INTERACTIVE:I = 0xbd6

.field static final MSG_SET_SPELL_CHECKER:I = 0xbf4

.field static final MSG_SET_USER_ACTION_NOTIFICATION_SEQUENCE_NUMBER:I = 0xbe0

.field static final MSG_SHOW_AGAIN_IM_PICKER:I = 0x3ff

.field static final MSG_SHOW_IM_CONFIG:I = 0x3

.field static final MSG_SHOW_IM_SUBTYPE_ENABLER:I = 0x2

.field static final MSG_SHOW_IM_SUBTYPE_PICKER:I = 0x1

.field static final MSG_SHOW_SOFT_INPUT:I = 0x3fc

.field static final MSG_START_INPUT:I = 0x7d0

.field static final MSG_SWITCH_IME:I = 0xbea

.field static final MSG_UNBIND_CLIENT:I = 0xbb8

.field static final MSG_UNBIND_INPUT:I = 0x3e8

.field static final MSG_UNDO_MINIMIZE_SOFT_INPUT:I = 0x401

.field static final MSG_UPDATE_FLOATING_STATE:I = 0x3fe

.field static final MSG_UPDATE_WACOM_STATE:I = 0x3fd

.field static final NOTI_TAG:Ljava/lang/String; = "InputMethodManagerService_Noti"

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final SAMSUNG_KEYPAD:Ljava/lang/String; = "com.sec.android.inputmethod/.SamsungKeypad"

.field private static final SAMSUNG_KEYPAD_NEURAL:Ljava/lang/String; = "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

.field static final SECURE_SUGGESTION_SPANS_MAX_SIZE:I = 0x14

.field static final TAG:Ljava/lang/String; = "InputMethodManagerService"

.field private static final TAG_TRY_SUPPRESSING_IME_SWITCHER:Ljava/lang/String; = "TrySuppressingImeSwitcher"

.field static final TIME_TO_RECONNECT:J = 0xbb8L

.field public static final UNIVERSAL_SWITCH_ENABLED:Ljava/lang/String; = "universal_switch_enabled"

.field private static VAL_NO_MICROPHONE:Ljava/lang/String;

.field private static VAL_NO_MICROPHONE_COMPAT:Ljava/lang/String;

.field private static keyboardState:I

.field private static mAccessControlEnable:Z

.field private static mAccessControlKeyboardBlockEnable:Z

.field private static mBTKeyboardCount:I

.field private static mDefaultSIP:Ljava/lang/String;

.field private static mDeviceDefaultThemeType:Ljava/lang/String;

.field private static mEnabledKCMFeatureForHWKeyboard:Z

.field private static mFloatingForMultiWindow:Z

.field private static mInputMethodSwitchDisable:Z

.field private static mUSBKeyboardCount:I

.field private static mbWACOMPen:Z

.field private static prevAutoMode:I


# instance fields
.field private final DEBUG_HARDWARE_KEYBOARD:Z

.field private final HID_BT:I

.field private final KEYBOARD_BT:I

.field private final KEYBOARD_DOCK:I

.field private final KEYBOARD_EXTERNAL:I

.field private final KEYBOARD_KMS:I

.field private final KEYBOARD_PSS:I

.field private final KEYBOARD_UNDEFINED:I

.field private final KEYBOARD_USB:I

.field private curImeId_for_menu:Ljava/lang/String;

.field private isKnoxKeypadUsed:Z

.field kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

.field private knoxV2Enabled:Z

.field private mAccessControlEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

.field private mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

.field private mAccessibilityRequestingNoSoftKeyboard:Z

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field mBackDisposition:I

.field mBoundToMethod:Z

.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/InputMethodManagerService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field mContentResolver:Landroid/content/ContentResolver;

.field final mContext:Landroid/content/Context;

.field mCurAttribute:Landroid/view/inputmethod/EditorInfo;

.field mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

.field private mCurClientInKeyguard:Z

.field mCurFocusedWindow:Landroid/os/IBinder;

.field mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

.field mCurId:Ljava/lang/String;

.field mCurInputContext:Lcom/android/internal/view/IInputContext;

.field mCurInputContextMissingMethods:I

.field mCurIntent:Landroid/content/Intent;

.field mCurMethod:Lcom/android/internal/view/IInputMethod;

.field mCurMethodId:Ljava/lang/String;

.field mCurSeq:I

.field mCurToken:Landroid/os/IBinder;

.field mCurUserActionNotificationSequenceNumber:I

.field private mCurrentFocusedUserId:I

.field private mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

.field private mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

.field private mForcedtoSecureKeypad:Z

.field final mHandler:Landroid/os/Handler;

.field private final mHardKeyboardBehavior:I

.field private final mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

.field final mHasFeature:Z

.field mHaveConnection:Z

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field private final mImeSelectedOnBoot:Z

.field private mImeSwitchPendingIntent:Landroid/app/PendingIntent;

.field private mImeSwitcherNotification:Landroid/app/Notification$Builder;

.field mImeWindowVis:I

.field private mIms:[Landroid/view/inputmethod/InputMethodInfo;

.field private mInitialUserSwitch:Z

.field mInputShown:Z

.field final mIsFolderModel:Z

.field mIsInteractive:Z

.field private mIsPersona:Z

.field private mIsPressBtnSIPOnOff:Z

.field mIsScreenPinnedState:Z

.field private mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

.field private mKeyboardDialog:Landroid/app/AlertDialog;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLastBindTime:J

.field private mLastSystemLocales:Landroid/os/LocaleList;

.field final mMethodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileKeyboardChangeObserver:Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;

.field public mMobilekeyboardCheckedItem:I

.field private mMobilekeyboardIms:[Landroid/view/inputmethod/InputMethodInfo;

.field private mMobilekeyboardSubtypeIds:[I

.field public mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

.field private final mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

.field private mNeedToExplicitallyCall:Z

.field final mNoBinding:Lcom/android/internal/view/InputBindResult;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationShown:Z

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPrevInputMethodForCarMode:Ljava/lang/String;

.field private mPrevInputMethodForKnoxDesktopMode:Ljava/lang/String;

.field private mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

.field final mRes:Landroid/content/res/Resources;

.field private mSecureKeypadEnabled:Z

.field private final mSecureSuggestionSpans:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

.field final mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

.field private final mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field mShowExplicitlyRequested:Z

.field mShowForced:Z

.field mShowHWR:Z

.field private mShowImeWithHardKeyboard:Z

.field private mShowOngoingImeSwitcherForPhones:Z

.field mShowRequested:Z

.field private final mSlotIme:Ljava/lang/String;

.field private mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

.field private mSubtypeIds:[I

.field private mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

.field private final mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

.field private mSwitchingDialog:Landroid/app/AlertDialog;

.field private mSwitchingDialogTitleView:Landroid/view/View;

.field mSystemReady:Z

.field private mUniversalSwitchChangeObserver:Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;

.field private final mUserManager:Landroid/os/UserManager;

.field mVisibleBound:Z

.field final mVisibleConnection:Landroid/content/ServiceConnection;

.field final mWindowManagerInternal:Landroid/view/WindowManagerInternal;

.field private notificationcontrol_lock:Z

.field private notificationcontrol_release:Z

.field private switchingFromVoice:Z


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardIms:[Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/InputMethodManagerService;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardSubtypeIds:[I

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForCarMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForKnoxDesktopMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/InputMethodManagerService;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/InputMethodManagerService;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get19()I
    .locals 1

    sget v0, Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    return-object v0
.end method

.method static synthetic -get20()I
    .locals 1

    sget v0, Lcom/android/server/InputMethodManagerService;->prevAutoMode:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/InputMethodManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    return v0
.end method

.method static synthetic -get4()I
    .locals 1

    sget v0, Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I

    return v0
.end method

.method static synthetic -get5()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->mEnabledKCMFeatureForHWKeyboard:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    return-object v0
.end method

.method static synthetic -get8()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->mFloatingForMultiWindow:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/InputMethodManagerService;)Landroid/content/pm/IPackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    return p0
.end method

.method static synthetic -set1(Lcom/android/server/InputMethodManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    return p1
.end method

.method static synthetic -set2(I)I
    .locals 0

    sput p0, Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I

    return p0
.end method

.method static synthetic -set3(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForCarMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForKnoxDesktopMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(I)I
    .locals 0

    sput p0, Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I

    return p0
.end method

.method static synthetic -set7(I)I
    .locals 0

    sput p0, Lcom/android/server/InputMethodManagerService;->prevAutoMode:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/server/InputMethodManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/InputMethodManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isChineseRegion()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/InputMethodManagerService;Landroid/os/IBinder;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/InputMethodManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isJapaneseRegion()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/server/InputMethodManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->hideImeNotification()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/InputMethodManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->resetStateIfCurrentLocaleChangedLocked()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/InputMethodManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->setDefaultInputMethod()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/InputMethodManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->setSpellCheckerEnabled(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "none"

    sput-object v0, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    const-string/jumbo v0, "nm"

    sput-object v0, Lcom/android/server/InputMethodManagerService;->VAL_NO_MICROPHONE_COMPAT:Ljava/lang/String;

    const-string/jumbo v0, "noMicrophoneKey"

    sput-object v0, Lcom/android/server/InputMethodManagerService;->VAL_NO_MICROPHONE:Ljava/lang/String;

    sput v1, Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I

    sput v1, Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/InputMethodManagerService;->mEnabledKCMFeatureForHWKeyboard:Z

    sput-boolean v1, Lcom/android/server/InputMethodManagerService;->mbWACOMPen:Z

    sput-boolean v1, Lcom/android/server/InputMethodManagerService;->mAccessControlEnable:Z

    sput-boolean v1, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    sput-boolean v1, Lcom/android/server/InputMethodManagerService;->mInputMethodSwitchDisable:Z

    sput-boolean v1, Lcom/android/server/InputMethodManagerService;->mFloatingForMultiWindow:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/InputMethodManagerService;->mDeviceDefaultThemeType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->DEBUG_HARDWARE_KEYBOARD:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsPressBtnSIPOnOff:Z

    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForCarMode:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForKnoxDesktopMode:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_UNDEFINED:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_EXTERNAL:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_DOCK:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_BT:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_USB:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->HID_BT:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_PSS:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_KMS:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    new-instance v0, Lcom/android/server/InputMethodManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$1;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsPersona:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardCheckedItem:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    new-instance v0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    new-instance v0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mNeedToExplicitallyCall:Z

    new-instance v0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mUniversalSwitchChangeObserver:Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;

    new-instance v0, Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMobileKeyboardChangeObserver:Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;

    new-instance v0, Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

    new-instance v0, Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/InputMethodManagerService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/InputMethodManagerService$SettingsObserver;-><init>(Lcom/android/server/InputMethodManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    const-class v0, Landroid/view/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    new-instance v1, Lcom/android/server/InputMethodManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$2;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p1, v2, v1, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    new-instance v0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$HardKeyboardListener;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.software.input_methods"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHasFeature:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsFolderModel:Z

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const v1, 0x104001d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardBehavior:I

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "android.allowDuringSetup"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080490

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v1, "sys"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    const/16 v1, 0x1000

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v0, "android.settings.SHOW_INPUT_METHOD_PICKER"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInitialUserSwitch:Z

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    const/4 v5, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mForcedtoSecureKeypad:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->curImeId_for_menu:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->switchingFromVoice:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->isKnoxKeypadUsed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->notificationcontrol_lock:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->notificationcontrol_release:Z

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v13

    if-eqz v13, :cond_0

    const-string/jumbo v0, "2.0"

    const-string/jumbo v1, "version"

    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->registerSamsungAdditionalReceviers()V

    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    :goto_1
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;IZ)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    new-instance v0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-direct {v0, v1, v5}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-static {v0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->createInstanceLocked(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->enableAllIMEsIfThereIsNoEnabledIME()V

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "No IME selected. Choose the most applicable IME."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v0, v5}, Lcom/android/server/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit v1

    sget-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTIWINDOW_MANAGER_INTERNAL:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-static {v0}, Lcom/android/server/SamsungCoreServices;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/InputMethodManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$3;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "access_control_keyboard_block"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    sput-boolean v0, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    return-void

    :catch_0
    move-exception v9

    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v0, v1, v9}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_2
    const/4 v6, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "--- bind failed: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private calledFromValidUser()Z
    .locals 8

    const/16 v7, 0x3e8

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    move v0, v2

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v4

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "InputMethodManagerService"

    const-string/jumbo v4, "calledFromValidUser - Knox case"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v7, :cond_0

    if-eq v0, v2, :cond_0

    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    if-ne v3, v2, :cond_3

    :cond_0
    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    if-eq v1, v7, :cond_2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isCurrentProfile(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    return v5

    :cond_3
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    return v5

    :cond_4
    const-string/jumbo v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "--- IPC called from background users. Ignore. callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method private calledWithValidToken(Landroid/os/IBinder;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private chooseNewDefaultIMELocked()Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private findLastResortApplicableShortcutInputMethodAndSubtypeLocked(Ljava/lang/String;)Landroid/util/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v11}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_1

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    :cond_1
    const/4 v9, 0x0

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v2, v13}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v0, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    :cond_2
    if-nez v9, :cond_3

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v11, v0, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    :cond_3
    invoke-static {v2, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getOverridingImplicitlyEnabledSubtypes(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v10

    :goto_1
    if-nez v9, :cond_4

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v10, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    :cond_4
    if-nez v9, :cond_5

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v11, v10, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    :cond_5
    if-eqz v9, :cond_0

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    move-object v6, v2

    move-object v7, v9

    :cond_6
    if-eqz v6, :cond_9

    new-instance v11, Landroid/util/Pair;

    invoke-direct {v11, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11

    :cond_7
    move-object v10, v8

    goto :goto_1

    :cond_8
    if-nez v1, :cond_0

    move-object v6, v2

    move-object v7, v9

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v11, 0x0

    return-object v11
.end method

.method private finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodSession;->finishSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v4, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    :cond_0
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    iput-object v4, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "InputMethodManagerService"

    const-string/jumbo v2, "Session failed to close due to remote exception"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    goto :goto_0
.end method

.method private getAppShowFlags()I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "default_input_method"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "DCM"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "com.sevenknowledge.sevennotesproduct.samsung/com.sevenknowledge.mazec.MazecIms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    :cond_1
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v4, :cond_0

    return-object v6

    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isSubtypeSelected()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    return-object v6

    :cond_2
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v4, :cond_5

    :cond_3
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_7

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v7, :cond_6

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-object v4

    :cond_5
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v7, :cond_4

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v5, "keyboard"

    invoke-static {v4, v0, v5, v6, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-static {v4, v0, v6, v6, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_0

    :cond_7
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_0
.end method

.method private getDeviceThemeFromSystemProperties()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ro.build.scafe.cream"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImeShowFlags()I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowHWR:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x10

    :cond_1
    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private getPressBtnSIPOnOff()Z
    .locals 3

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPressBtnSIPOnOff() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mIsPressBtnSIPOnOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsPressBtnSIPOnOff:Z

    return v0
.end method

.method private getSecureDefaultIMELocked()Landroid/view/inputmethod/InputMethodInfo;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v2, :cond_1

    const-string/jumbo v3, "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->isSecureIMEKnox(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_3
    return-object v5
.end method

.method private handleSetInteractive(Z)V
    .locals 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    :goto_0
    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    const/16 v5, 0xbcc

    invoke-virtual {v3, v5, v0, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    return-void

    :cond_2
    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private handleSwitchInputMethod(Z)V
    .locals 8

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v3, v6, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v4

    return-void

    :cond_0
    :try_start_1
    iget-object v3, v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    iget v5, v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    invoke-virtual {p0, v3, v5}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit v4

    return-void

    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v3, v0, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v3, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    :goto_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit v4

    return-void

    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    invoke-virtual {v3, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private hideImeNotification()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "InputMethodManagerService_Noti"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x1040432

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    :cond_0
    return-void
.end method

.method private static imeWindowStatusToString(I)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_0
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v2, "Visible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private isChineseRegion()Z
    .locals 2

    const-string/jumbo v0, "none"

    sget-object v1, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "CHINA"

    sget-object v1, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "HONG KONG"

    sget-object v1, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "TAIWAN"

    sget-object v1, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isDeskTopMode()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "NOW IN KNOX DESKTOP MODE!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "NOT IN KNOX DESKTOP MODE!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "mDesktopModeManager null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isDeviceBlackTheme()Z
    .locals 2

    sget-object v0, Lcom/android/server/InputMethodManagerService;->mDeviceDefaultThemeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/InputMethodManagerService;->mDeviceDefaultThemeType:Ljava/lang/String;

    const-string/jumbo v1, "black"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isHWAccessoryKeyboard()Z
    .locals 2

    const/4 v0, 0x0

    sget v1, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    and-int/lit8 v1, v1, 0xf

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isInstalledInputMethod(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v5
.end method

.method private isJapaneseRegion()Z
    .locals 2

    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "JP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isKeyguardLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKnoxId(I)Z
    .locals 1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    const/16 v0, 0xc8

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isKoreaRegion()Z
    .locals 2

    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "KOREA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const-string/jumbo v1, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-string/jumbo v1, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    const-string/jumbo v1, "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    return v3
.end method

.method private isScreenLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSecureIMEKnox(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    return v7

    :cond_0
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v8

    :cond_1
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    if-nez v3, :cond_2

    return v7

    :cond_2
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/knox/SemPersonaManager$AppType;->IME:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/knox/SemPersonaManager;->getAppListForPersona(Lcom/samsung/android/knox/SemPersonaManager$AppType;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    return v7

    :cond_4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v8
.end method

.method private isSecureIMEKnox(Ljava/lang/String;)Z
    .locals 5

    if-nez p1, :cond_0

    const/4 v4, 0x0

    return v4

    :cond_0
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->isSecureIMEKnox(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v4

    return v4

    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, v1

    goto :goto_0
.end method

.method private isVoiceInputDisable()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v3, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v1, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_3

    sget-object v3, Lcom/android/server/InputMethodManagerService;->VAL_NO_MICROPHONE_COMPAT:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/server/InputMethodManagerService;->VAL_NO_MICROPHONE:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const/4 v2, 0x1

    :cond_1
    :goto_0
    const-string/jumbo v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Check voice input Disable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 v3, 0x0

    return v3

    :cond_3
    const/16 v3, 0x80

    if-eq v1, v3, :cond_4

    const/16 v3, 0x90

    if-ne v1, v3, :cond_5

    :cond_4
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const/16 v3, 0xe0

    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    const/16 v3, 0x10

    if-eq v1, v3, :cond_4

    :cond_6
    const/16 v3, 0x81

    if-eq v1, v3, :cond_4

    const/16 v3, 0x91

    if-ne v1, v3, :cond_1

    goto :goto_1
.end method

.method private notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2

    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/input/InputManagerInternal;->onInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    :cond_0
    return-void
.end method

.method private refreshImeWindowVis()V
    .locals 13

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v10, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_6

    iget v10, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_5

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isChineseRegion()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isKoreaRegion()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mIsFolderModel:Z

    if-eqz v10, :cond_2

    :cond_0
    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mIsFolderModel:Z

    iget v10, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    const/4 v5, 0x1

    :goto_2
    if-eqz v1, :cond_1

    if-eqz v6, :cond_8

    if-eqz v5, :cond_8

    :cond_1
    const/4 v1, 0x0

    :goto_3
    const-string/jumbo v10, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[HARDWARE_KEYBOARD] (refreshImeWindowVis) isChineseRegion = true, isFolderPhone= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " isFolderOpen = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " hardKeyShown = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v7

    if-nez v7, :cond_a

    iget-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    if-nez v10, :cond_9

    move v3, v1

    :goto_4
    if-eqz v7, :cond_b

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v10}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v8

    :goto_5
    if-eqz v7, :cond_3

    if-eqz v8, :cond_3

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "universal_switch_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    iget-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    if-nez v10, :cond_c

    move v3, v1

    :cond_3
    :goto_6
    if-eqz v3, :cond_e

    if-eqz v1, :cond_d

    iget-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    :goto_7
    if-eqz v3, :cond_f

    const/4 v10, 0x1

    move v11, v10

    :goto_8
    if-eqz v4, :cond_10

    const/4 v10, 0x2

    :goto_9
    or-int/2addr v10, v11

    iput v10, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    const-string/jumbo v10, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[HARDWARE_KEYBOARD] (refreshImeWindowVis) mImeWindowVis= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " inputVisible = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "haveHardKeyboard = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " hardKeyShown = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_3

    :cond_9
    const/4 v3, 0x1

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_b
    const/4 v8, 0x0

    goto :goto_5

    :cond_c
    const/4 v3, 0x1

    goto :goto_6

    :cond_d
    const/4 v4, 0x1

    goto :goto_7

    :cond_e
    const/4 v4, 0x0

    goto :goto_7

    :cond_f
    const/4 v10, 0x0

    move v11, v10

    goto :goto_8

    :cond_10
    const/4 v10, 0x0

    goto :goto_9
.end method

.method private resetAllInternalStateLocked(ZZ)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    invoke-virtual {v1, v3}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_3

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/android/server/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    if-nez p1, :cond_4

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    :cond_4
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    if-nez p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "InputMethodManagerService"

    const-string/jumbo v4, "Unexpected exception"

    invoke-static {v3, v4, v0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private resetDefaultImeLocked(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;ZLjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v3, "No default found"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    return-void

    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Default found, using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    invoke-direct {p0, v0, v2, v5}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    return-void
.end method

.method private resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    .locals 7

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "HashCode for subtype looks broken: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private resetStateIfCurrentLocaleChangedLocked()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/server/InputMethodManagerService;->resetAllInternalStateLocked(ZZ)V

    return-void
.end method

.method static restoreEnabledInputMethods(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-static {p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    if-nez v6, :cond_0

    new-instance v6, Landroid/util/ArraySet;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {v5, v2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_0

    :cond_1
    invoke-static {v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->buildInputMethodsAndSubtypesString(Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "enabled_input_methods"

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private setDefaultInputMethod()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isChineseRegion()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "com.samsung.inputmethod/.SamsungIME"

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "com.samsung.inputmethod/.SamsungIME"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.samsung.inputmethod/.SamsungIME"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string/jumbo v2, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "com.sec.android.inputmethod/.SamsungKeypad"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.sec.android.inputmethod/.SamsungKeypad"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string/jumbo v2, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isJapaneseRegion()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string/jumbo v2, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "com.sec.android.inputmethod/.SamsungKeypad"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.sec.android.inputmethod/.SamsungKeypad"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string/jumbo v2, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Using null token requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v2, p1, :cond_1

    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignoring setInputMethod of uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    const/16 v5, 0xbe0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    :cond_0
    if-eqz p1, :cond_1

    if-gez p2, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    iput-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    :goto_0
    if-nez p3, :cond_2

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    if-ge p2, v1, :cond_4

    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_0

    :cond_5
    const-string/jumbo v1, ""

    goto :goto_1
.end method

.method private setSpellCheckerEnabled(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "textservices"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerEnabled(Z)V

    :cond_0
    return-void
.end method

.method private shouldShowImeSwitcherLocked(I)Z
    .locals 15

    iget-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    if-nez v12, :cond_0

    const/4 v12, 0x0

    return v12

    :cond_0
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    return v12

    :cond_1
    sget-boolean v12, Lcom/android/server/InputMethodManagerService;->mInputMethodSwitchDisable:Z

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    return v12

    :cond_2
    iget-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-nez v12, :cond_3

    const/4 v12, 0x0

    return v12

    :cond_3
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x0

    return v12

    :cond_4
    and-int/lit8 v12, p1, 0x1

    if-nez v12, :cond_5

    const/4 v12, 0x0

    return v12

    :cond_5
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v12}, Landroid/view/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v12

    if-eqz v12, :cond_6

    iget v12, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardBehavior:I

    if-nez v12, :cond_7

    const/4 v12, 0x1

    return v12

    :cond_6
    and-int/lit8 v12, p1, 0x2

    if-nez v12, :cond_7

    const/4 v12, 0x0

    return v12

    :cond_7
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v12}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_d

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v4, v14}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_8
    const/4 v12, 0x1

    if-le v10, v12, :cond_9

    const/4 v10, 0x1

    :cond_9
    if-nez v10, :cond_b

    add-int/lit8 v7, v7, 0x1

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_b
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v10, :cond_a

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v12

    if-nez v12, :cond_c

    add-int/lit8 v7, v7, 0x1

    move-object v8, v9

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_c
    add-int/lit8 v1, v1, 0x1

    move-object v2, v9

    goto :goto_2

    :cond_d
    const/4 v12, 0x1

    if-ne v7, v12, :cond_e

    const/4 v12, 0x0

    return v12

    :cond_e
    const/4 v12, 0x2

    if-le v0, v12, :cond_f

    const/4 v12, 0x1

    return v12

    :cond_f
    const/4 v12, 0x1

    if-ge v0, v12, :cond_10

    const/4 v12, 0x0

    return v12

    :cond_10
    const/4 v12, 0x1

    if-gt v7, v12, :cond_11

    const/4 v12, 0x1

    if-le v1, v12, :cond_12

    :cond_11
    const/4 v12, 0x1

    return v12

    :cond_12
    const/4 v12, 0x1

    if-ne v7, v12, :cond_15

    const/4 v12, 0x1

    if-ne v1, v12, :cond_15

    if-eqz v8, :cond_14

    if-eqz v2, :cond_14

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_13

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-nez v12, :cond_13

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-eqz v12, :cond_14

    :cond_13
    const-string/jumbo v12, "TrySuppressingImeSwitcher"

    invoke-virtual {v8, v12}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    const/4 v12, 0x0

    return v12

    :cond_14
    const/4 v12, 0x1

    return v12

    :cond_15
    const/4 v12, 0x0

    return v12
.end method

.method private showConfigureInputMethods()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method private showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x14200000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "input_method_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v3

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private showInputMethodMenu()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->showInputMethodMenuInternal(Z)V

    return-void
.end method

.method private showInputMethodMenu(Z)V
    .locals 50

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isVoiceInputDisable()Z

    move-result v45

    if-eqz v45, :cond_0

    const/16 p1, 0x0

    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isScreenLocked()Z

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v46, v0

    monitor-enter v46

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getExplicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v23

    if-eqz v23, :cond_1

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v45

    if-nez v45, :cond_2

    :cond_1
    monitor-exit v46

    return-void

    :cond_2
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListLocked(ZZ)Ljava/util/List;

    move-result-object v21

    const/16 v45, -0x1

    move/from16 v0, v35

    move/from16 v1, v45

    if-ne v0, v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v45

    move/from16 v0, v45

    invoke-static {v12, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v35

    :cond_3
    const-string/jumbo v45, "InputMethodManagerService"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "showInputMethodMenuInternal : mSecureKeypadEnabled: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    move/from16 v45, v0

    if-eqz v45, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    move/from16 v45, v0

    if-eqz v45, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mIsPersona:Z

    move/from16 v45, v0

    if-eqz v45, :cond_5

    if-eqz v21, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_4
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService;->isSecureIMEKnox(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v45

    if-nez v45, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v45

    monitor-exit v46

    throw v45

    :cond_5
    const/4 v11, 0x0

    const/16 v27, 0x0

    const/4 v7, 0x0

    if-eqz v21, :cond_f

    const/16 v26, 0x0

    :try_start_2
    const-string/jumbo v45, "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

    move-object/from16 v0, v34

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_6

    const/16 v26, 0x1

    :cond_6
    const/16 v20, 0x0

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v45

    move/from16 v0, v20

    move/from16 v1, v45

    if-ge v0, v1, :cond_b

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v41

    if-eqz v26, :cond_7

    const-string/jumbo v45, "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_8

    :cond_7
    if-eqz v27, :cond_a

    const-string/jumbo v45, "com.sec.android.inputmethod/.SamsungKeypad"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_a

    :cond_8
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v20, v20, -0x1

    :cond_9
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    :cond_a
    const-string/jumbo v45, "com.sec.android.inputmethod/.SamsungKeypad"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_9

    const/16 v27, 0x1

    goto :goto_2

    :cond_b
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    new-array v0, v4, [I

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    const/16 v20, 0x0

    :goto_3
    move/from16 v0, v20

    if-ge v0, v4, :cond_f

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v47, v0

    aput-object v47, v45, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    move-object/from16 v45, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    move/from16 v47, v0

    aput v47, v45, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v45, v0

    aget-object v45, v45, v20

    invoke-virtual/range {v45 .. v45}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v45, v0

    aget-object v45, v45, v20

    invoke-virtual/range {v45 .. v45}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    move-object/from16 v45, v0

    aget v40, v45, v20

    const/16 v45, -0x1

    move/from16 v0, v40

    move/from16 v1, v45

    if-eq v0, v1, :cond_c

    const/16 v45, -0x1

    move/from16 v0, v35

    move/from16 v1, v45

    if-ne v0, v1, :cond_e

    if-nez v40, :cond_e

    :cond_c
    move/from16 v7, v20

    :cond_d
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    :cond_e
    move/from16 v0, v40

    move/from16 v1, v35

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v45, v0

    aget-object v45, v45, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService;->isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v45

    if-eqz v45, :cond_d

    move/from16 v7, v20

    goto :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v45

    move-object/from16 v0, v45

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    move/from16 v45, v0

    const/16 v47, 0x1

    move/from16 v0, v45

    move/from16 v1, v47

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListLocked(ZZ)Ljava/util/List;

    move-result-object v32

    const/16 v27, 0x0

    if-eqz v32, :cond_17

    if-eqz v21, :cond_17

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v36, v0

    new-array v0, v4, [Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardIms:[Landroid/view/inputmethod/InputMethodInfo;

    new-array v0, v4, [I

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardSubtypeIds:[I

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/4 v8, 0x0

    const/16 v20, 0x0

    :goto_5
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v45

    move/from16 v0, v20

    move/from16 v1, v45

    if-ge v0, v1, :cond_13

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v45

    const-string/jumbo v47, "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_10

    if-eqz v27, :cond_12

    invoke-virtual/range {v30 .. v30}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v45

    const-string/jumbo v47, "com.sec.android.inputmethod/.SamsungKeypad"

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_12

    :cond_10
    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v20, v20, -0x1

    add-int/lit8 v4, v4, -0x1

    :cond_11
    :goto_6
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    :cond_12
    invoke-virtual/range {v30 .. v30}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v45

    const-string/jumbo v47, "com.sec.android.inputmethod/.SamsungKeypad"

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_11

    const/16 v27, 0x1

    goto :goto_6

    :cond_13
    const/16 v20, 0x0

    :goto_7
    move/from16 v0, v20

    if-ge v0, v4, :cond_17

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v45, v0

    aput-object v45, v36, v20

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v45

    aput-object v45, v38, v20

    aget-object v45, v38, v20

    const-string/jumbo v47, "com.sec.android.inputmethod"

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_14

    aget-object v45, v38, v20

    const-string/jumbo v47, "com.google.android.googlequicksearchbox"

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_14

    aget-object v45, v38, v20

    const-string/jumbo v47, "com.samsung.android.svoiceime"

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_16

    :cond_14
    const-string/jumbo v45, "InputMethodManagerService"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "IMMS: showInputMethodMenuInternal() -checkitem : "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v47, v0

    aput-object v47, v45, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardSubtypeIds:[I

    move-object/from16 v45, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    move/from16 v47, v0

    aput v47, v45, v8

    move/from16 v0, v20

    if-ne v7, v0, :cond_15

    const-string/jumbo v45, "InputMethodManagerService"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "IMMS: showInputMethodMenuInternal() checkedItem==i -checkitem : "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, " i =  "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardCheckedItem:I

    :cond_15
    add-int/lit8 v8, v8, 0x1

    :cond_16
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_7

    :cond_17
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardCheckedItem:I

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v45

    const/16 v47, 0x64

    move/from16 v0, v45

    move/from16 v1, v47

    if-lt v0, v1, :cond_1b

    move-object/from16 v33, v10

    :try_start_3
    new-instance v45, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v47

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v10, v11, v0, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v33

    :goto_8
    :try_start_4
    new-instance v39, Landroid/view/ContextThemeWrapper;

    const v45, 0x1030223

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    move/from16 v2, v45

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_9
    new-instance v45, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v45

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v45, v0

    new-instance v47, Lcom/android/server/InputMethodManagerService$6;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$6;-><init>(Lcom/android/server/InputMethodManagerService;)V

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v14

    sget-object v45, Lcom/android/internal/R$styleable;->DialogPreference:[I

    const/16 v47, 0x0

    const v48, 0x101005d

    const/16 v49, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    move/from16 v2, v48

    move/from16 v3, v49

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    const/16 v45, 0x2

    move/from16 v0, v45

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v15}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    const-class v45, Landroid/view/LayoutInflater;

    move-object/from16 v0, v45

    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/LayoutInflater;

    const v45, 0x1090144

    const/16 v47, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v45

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isHWAccessoryKeyboard()Z

    move-result v25

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v45, v0

    const v47, 0x1020381

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v45

    move-object/from16 v0, v45

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    move/from16 v17, v0

    invoke-virtual/range {v43 .. v43}, Landroid/widget/TextView;->getTextSize()F

    move-result v45

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v47

    move-object/from16 v0, v47

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    move/from16 v47, v0

    div-float v18, v45, v47

    const v45, 0x3f99999a    # 1.2f

    cmpl-float v45, v17, v45

    if-lez v45, :cond_19

    const v17, 0x3f99999a    # 1.2f

    :cond_19
    mul-float v45, v18, v17

    const/16 v47, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v47

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v45, v0

    const v47, 0x10203fd

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isHWAccessoryKeyboard()Z

    move-result v45

    if-eqz v45, :cond_1c

    const/16 v45, 0x0

    :goto_a
    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v45, v0

    const v47, 0x10203fe

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v45

    move-object/from16 v0, v19

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v45, Lcom/android/server/InputMethodManagerService$7;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$7;-><init>(Lcom/android/server/InputMethodManagerService;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Switch;->isChecked()Z

    move-result v45

    if-nez v45, :cond_1d

    if-eqz v25, :cond_1d

    const v42, 0x1090146

    :goto_b
    new-instance v6, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    move/from16 v0, v42

    move-object/from16 v1, v21

    invoke-direct {v6, v14, v0, v1, v7}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    new-instance v9, Lcom/android/server/InputMethodManagerService$8;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v6}, Lcom/android/server/InputMethodManagerService$8;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v6, v7, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v45, v0

    new-instance v47, Lcom/android/server/InputMethodManagerService$9;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/android/server/InputMethodManagerService$9;-><init>(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;)V

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Switch;->isChecked()Z

    move-result v45

    if-nez v45, :cond_1a

    if-eqz v25, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v45

    const/16 v47, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v45, v0

    const/16 v47, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    if-eqz v28, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v45

    const/16 v47, 0x837

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v45

    move-object/from16 v0, v45

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v47, v0

    or-int/lit8 v47, v47, 0x10

    move/from16 v0, v47

    move-object/from16 v1, v45

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v45

    const-string/jumbo v47, "Select input method"

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v47

    move/from16 v3, v48

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->updateSystemUi(Landroid/os/IBinder;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/app/AlertDialog;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v45, v0

    new-instance v47, Landroid/content/Intent;

    const-string/jumbo v48, "ACTION_SWITCHING_DIALOG_SHOWN"

    invoke-direct/range {v47 .. v48}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v46

    return-void

    :catch_0
    move-exception v16

    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    :cond_1b
    new-instance v39, Landroid/view/ContextThemeWrapper;

    const v45, 0x1030223

    move-object/from16 v0, v39

    move/from16 v1, v45

    invoke-direct {v0, v10, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_9

    :cond_1c
    const/16 v45, 0x8

    goto/16 :goto_a

    :cond_1d
    const v42, 0x1090145

    goto/16 :goto_b

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v45

    const/16 v47, 0x7d8

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_c
.end method

.method private showInputMethodMenuInternal(Z)V
    .locals 0

    return-void
.end method

.method private showInputMethodSubtypeMenu()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->showInputMethodMenuInternal(Z)V

    return-void
.end method

.method private startInput(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    :try_start_1
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/InputMethodManagerService;->startInputLocked(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private startWritingBuddyService()V
    .locals 0

    return-void
.end method

.method private switchSpellChecker(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "textservices"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/textservice/TextServicesManager;->switchUserForKnox(I)V

    :cond_0
    return-void
.end method

.method private switchUserLocked(I)V
    .locals 10

    const/4 v4, 0x0

    const-string/jumbo v7, "InputMethodManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Switching user stage 1/3. newUserId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " currentUserId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v7, p1}, Lcom/android/server/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    iget-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7, p1, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    new-instance v7, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-direct {v7, v8, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    iput-object v7, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mInitialUserSwitch:Z

    invoke-direct {p0, v4, v2}, Lcom/android/server/InputMethodManagerService;->resetAllInternalStateLocked(ZZ)V

    if-eqz v2, :cond_0

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, p1, v9}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mIsPersona:Z

    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "access_control_enabled"

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/server/InputMethodManagerService;->setAccessControlEnable(Z)V

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "access_control_keyboard_block"

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/server/InputMethodManagerService;->setisAccessControlKeyboardBlockEnable(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v7, "InputMethodManagerService"

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateSystemUi(Landroid/os/IBinder;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private updateSystemUiLocked(Landroid/os/IBinder;II)V
    .locals 18

    invoke-direct/range {p0 .. p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    const-string/jumbo v13, "InputMethodManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Ignoring updateSystemUiLocked due to an invalid token. uid:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " token:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    if-eqz p2, :cond_1

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/InputMethodManagerService;->mCurClientInKeyguard:Z

    if-eqz v13, :cond_4

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService;->shouldShowImeSwitcherLocked(I)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v13, v0, v1, v2, v9}, Lcom/android/server/statusbar/StatusBarManagerService;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v5, :cond_7

    if-eqz v9, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isHWAccessoryKeyboard()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v14, 0x1040432

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v13}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v13

    if-nez v13, :cond_5

    if-eqz v8, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v14, 0x104065f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    invoke-virtual {v13, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v13}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    if-eqz v13, :cond_6

    :cond_3
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_4
    const/16 p2, 0x0

    goto :goto_0

    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v13, v5, v14}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    goto :goto_1

    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v14, "InputMethodManagerService_Noti"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    invoke-virtual {v15}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v15

    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v17, 0x1040432

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v13, v14, v0, v15, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_2

    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v14, "InputMethodManagerService_Noti"

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v16, 0x1040432

    move/from16 v0, v16

    invoke-virtual {v13, v14, v0, v15}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v13

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13
.end method

.method private windowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)Lcom/android/internal/view/InputBindResult;
    .locals 33

    const/16 v25, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x64

    if-lt v12, v2, :cond_0

    const/16 v2, 0xc8

    if-gt v12, v2, :cond_0

    new-instance v17, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v4, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Z)V

    invoke-virtual/range {v17 .. v17}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isUseSecureKeypadEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    :cond_0
    const/16 v30, 0x0

    if-nez v10, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/InputMethodManagerService;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/InputMethodManagerService;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v12, :cond_8

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/InputMethodManagerService;->switchSpellChecker(I)V

    const/16 v30, 0x1

    :cond_3
    const/16 v31, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "default_input_method"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    if-nez v10, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/InputMethodManagerService;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/InputMethodManagerService;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez v12, :cond_9

    :cond_5
    :goto_1
    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "windowGainedFocus: destinationUserId (getCallingUid) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "windowGainedFocus: currentUserId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "windowGainedFocus: mCurrentFocusedUserId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "windowGainedFocus: Current user = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Destination user = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " - So switch user"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/InputMethodManagerService;->switchUserLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v31, 0x1

    :cond_6
    monitor-exit v4

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v30, :cond_7

    if-eqz v31, :cond_a

    :cond_7
    :goto_2
    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "windowGainedFocus mCurrentFocusedUserId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and mSecureKeypadEnabled-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v8

    const/16 v29, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v32, v0

    monitor-enter v32
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/InputMethodManagerService$ClientState;

    if-nez v3, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v32

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_8
    if-eq v10, v12, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/InputMethodManagerService;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/InputMethodManagerService;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0

    :cond_9
    if-eq v10, v12, :cond_6

    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/InputMethodManagerService;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/InputMethodManagerService;->isKnoxId(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_1

    :catchall_2
    move-exception v2

    monitor-exit v4

    throw v2

    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/InputMethodManagerService;->switchSpellChecker(I)V

    goto/16 :goto_2

    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v4, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v2, v4}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Focus gain on non-focused client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "calledFromValidUser : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", (mCurFocusedWindow == windowToken) : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    move-object/from16 v0, p3

    if-ne v2, v0, :cond_c

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", (attribute != null) : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p7, :cond_d

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(mCurClient != cs) : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eq v2, v3, :cond_e

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", mCurFocusedWindow : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", windowToken : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    move-object/from16 v0, p3

    if-ne v2, v0, :cond_f

    if-eqz p7, :cond_f

    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v4, "Focus gain on non-focused client, executed a startInputUncheckedLocked()!!"

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p0

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p7

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    :try_start_6
    monitor-exit v32
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_c
    const/4 v2, 0x0

    goto :goto_3

    :cond_d
    const/4 v2, 0x0

    goto :goto_4

    :cond_e
    const/4 v2, 0x0

    goto :goto_5

    :cond_f
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eq v2, v3, :cond_10

    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Focus gain on non-focused client mCurClient info is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/android/internal/view/IInputMethodClient;->setActive(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_10
    :try_start_8
    monitor-exit v32
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v2, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catch_0
    move-exception v16

    :cond_11
    if-nez v8, :cond_12

    :try_start_9
    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v4, "A background user is requesting window. Hiding IME."

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v4, "If you want to interect with IME, you need android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    monitor-exit v32
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/4 v2, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_12
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    move-object/from16 v0, p3

    if-ne v2, v0, :cond_16

    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Window already focused, ignoring focus gain of: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " attribute="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", token = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p7, :cond_13

    move-object/from16 v2, p0

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p7

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v2

    :try_start_c
    monitor-exit v32
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_13
    :try_start_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/InputMethodManagerService;->mIsScreenPinnedState:Z

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v2, :cond_15

    :cond_14
    :goto_6
    :try_start_e
    monitor-exit v32
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    const/4 v2, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_15
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isInputMethodShown()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isHWAccessoryKeyboard()Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_6

    :cond_16
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/InputMethodManagerService;->mIsPersona:Z

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/InputMethodManagerService;->isSecureIMEKnox(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->getSecureDefaultIMELocked()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v24

    if-eqz v24, :cond_17

    invoke-virtual/range {v24 .. v24}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_17
    :goto_7
    move/from16 v0, p5

    and-int/lit16 v2, v0, 0xf0

    const/16 v4, 0x10

    if-eq v2, v4, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v15

    :goto_8
    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_22

    const/16 v26, 0x1

    :goto_9
    const/high16 v2, 0x10000

    and-int v2, v2, p4

    if-eqz v2, :cond_23

    const/16 v27, 0x1

    :goto_a
    const-string/jumbo v2, "ro.build.characteristics"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_18

    const-string/jumbo v2, "phone"

    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    move/from16 v0, p5

    and-int/lit16 v2, v0, 0xf0

    const/16 v4, 0x10

    if-eq v2, v4, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v15

    :cond_18
    :goto_b
    const/4 v14, 0x0

    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "windowGainedFocus: reason="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/android/internal/view/InputMethodClient;->getStartInputReason(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " client="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " inputContext="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " missingMethods="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p9 .. p9}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlagsAsString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " attribute="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " nm = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p7, :cond_25

    move-object/from16 v0, p7

    iget-object v2, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    :goto_c
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " controlFlags=#"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " softInputMode=#"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " windowFlags=#"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v2, p5, 0xf

    packed-switch v2, :pswitch_data_0

    :cond_19
    :goto_d
    if-nez v14, :cond_1b

    if-eqz p7, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eq v2, v3, :cond_1a

    const/16 v25, 0x0

    :cond_1a
    move-object/from16 v2, p0

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p7

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v29

    :cond_1b
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_1c

    if-eqz v25, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-interface {v2, v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setCurrentInputMethodClient(Landroid/os/IBinder;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_1c
    :try_start_10
    monitor-exit v32
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v29

    :cond_1d
    :try_start_11
    invoke-virtual/range {v24 .. v24}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual/range {v24 .. v24}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "last_used_input_method"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v5

    invoke-static {v2, v4, v9, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_7

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "last_used_input_method"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v18

    if-eqz v18, :cond_20

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_20

    const/16 v19, 0x0

    :goto_e
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_20

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v24, :cond_1f

    invoke-virtual/range {v24 .. v24}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual/range {v24 .. v24}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual/range {v24 .. v24}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    :cond_1f
    add-int/lit8 v19, v19, 0x1

    goto :goto_e

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "last_used_input_method"

    const-string/jumbo v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v6

    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_7

    :cond_21
    const/4 v15, 0x1

    goto/16 :goto_8

    :cond_22
    const/16 v26, 0x0

    goto/16 :goto_9

    :cond_23
    const/16 v27, 0x0

    goto/16 :goto_a

    :cond_24
    const/4 v15, 0x1

    goto/16 :goto_b

    :cond_25
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_c

    :pswitch_0
    if-eqz v26, :cond_28

    if-eqz v15, :cond_28

    if-eqz v26, :cond_19

    if-eqz v15, :cond_19

    move/from16 v0, p5

    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_19

    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v4, "Unspecified window will show input"

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p7, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eq v2, v3, :cond_26

    const/16 v25, 0x0

    :cond_26
    move-object/from16 v2, p0

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p7

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v29

    const/4 v14, 0x1

    :cond_27
    if-nez v27, :cond_19

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_d

    :cond_28
    invoke-static/range {p6 .. p6}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v4, "Unspecified window will hide input"

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v25, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_d

    :pswitch_1
    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v4, "Window asks to unchanged"

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :pswitch_2
    move/from16 v0, p5

    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_19

    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v4, "Window asks to hide input going forward"

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_d

    :pswitch_3
    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v4, "Window asks to hide input"

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_d

    :pswitch_4
    move/from16 v0, p5

    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_19

    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v4, "Window asks to show input going forward"

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p7, :cond_29

    move-object/from16 v2, p0

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p7

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v29

    const/4 v14, 0x1

    :cond_29
    if-nez v27, :cond_19

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_d

    :pswitch_5
    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v4, "Window asks to always show input"

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p7, :cond_2a

    move-object/from16 v2, p0

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p7

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v29

    const/4 v14, 0x1

    :cond_2a
    if-nez v27, :cond_19

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_d

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


# virtual methods
.method public addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/android/server/InputMethodManagerService$ClientState;-><init>(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method attachNewInputLocked(Z)Lcom/android/internal/view/InputBindResult;
    .locals 10

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->binding:Landroid/view/inputmethod/InputBinding;

    const/16 v5, 0x3f2

    invoke-virtual {v1, v5, v2, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz p1, :cond_4

    iget-object v7, v3, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContextMissingMethods:I

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    const/16 v1, 0x7d0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOOO(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getAppShowFlags()I

    move-result v0

    invoke-virtual {p0, v0, v6}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    :cond_2
    new-instance v4, Lcom/android/internal/view/InputBindResult;

    iget-object v5, v3, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    iget-object v0, v3, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_3

    iget-object v0, v3, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v6

    :cond_3
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v9, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v4

    :cond_4
    iget-object v7, v3, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContextMissingMethods:I

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    const/16 v1, 0x7da

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOOO(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    goto :goto_0
.end method

.method buildInputMethodListLocked(Z)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v23, "android.view.InputMethod"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v23

    const v24, 0x8080

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->getAllAdditionalInputMethodSubtypes()Ljava/util/HashMap;

    move-result-object v5

    const/4 v14, 0x0

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_7

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v22, "android.permission.BIND_INPUT_METHOD"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    const-string/jumbo v22, "InputMethodManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Skipping input method "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ": it does not require the permission "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v17, Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v5}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/Map;)V

    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    const/4 v13, 0x1

    :goto_2
    const-string/jumbo v22, "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService;->isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v22

    if-eqz v22, :cond_4

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v10

    const-string/jumbo v22, "InputMethodManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unable to load input method "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v10}, Lcom/samsung/android/util/SemLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isJapaneseRegion()Z

    move-result v22

    if-eqz v22, :cond_5

    const-string/jumbo v22, "com.nttdocomo.android.voiceeditor/.standardcommon.IWnnLanguageSwitcher"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v22, "com.sec.android.indiainputmethod/.SamsungIndiaKeypad"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v22, "com.samsung.android.svoiceime/.SamsungVoiceReco"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_7
    if-nez p1, :cond_9

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v4, :cond_8

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    const/4 v11, 0x1

    :cond_8
    if-nez v11, :cond_9

    const-string/jumbo v22, "InputMethodManagerService"

    const-string/jumbo v23, "All the enabled IMEs are gone. Reset default enabled IMEs."

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x1

    const-string/jumbo v22, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    :cond_9
    if-eqz p1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-static/range {v22 .. v24}, Lcom/android/internal/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;ZLjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v4, :cond_c

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/inputmethod/InputMethodInfo;

    const-string/jumbo v22, "InputMethodManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "--- enable ime = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v7

    if-eqz v7, :cond_b

    const-string/jumbo v22, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    const-string/jumbo v22, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    :cond_b
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    goto :goto_6

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_e

    const-string/jumbo v22, "InputMethodManagerService"

    const-string/jumbo v23, "Default IME is uninstalled. Choose new default IME."

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v22

    if-eqz v22, :cond_d

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    return-void

    :cond_e
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    goto :goto_7
.end method

.method public changeFullInputMethod(Z)V
    .locals 0

    return-void
.end method

.method changeKeyboard()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isHWAccessoryKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    sget-object v3, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method changeKeyboardForVZWResetSetting()V
    .locals 4

    :try_start_0
    sget-object v1, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    sget-object v3, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    .locals 1

    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    return-void
.end method

.method clearCurMethodLocked()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v3, "clearCurMethodLocked() mCurMethod null"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public clearLastInputMethodWindowForTransition(Landroid/os/IBinder;)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ignoring clearLastInputMethodWindowForTransition due to an invalid token. uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " token:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :try_start_3
    monitor-exit v4

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v3}, Landroid/view/WindowManagerInternal;->clearLastInputMethodWindowForTransition()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public dismissAndShowAgainInputMethodPicker()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "showAgainInputMehtodPicker"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ff

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 14

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "android.permission.DUMP"

    invoke-virtual {v11, v12}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Permission Denial: can\'t dump InputMethodManager from from pid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v10, Landroid/util/PrintWriterPrinter;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v12

    :try_start_0
    const-string/jumbo v11, "Current Input Method Manager state:"

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string/jumbo v11, "  Input Methods:"

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_1

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  InputMethod #"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const-string/jumbo v11, "    "

    invoke-virtual {v8, v10, v11}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v11, "  Clients:"

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/InputMethodManagerService$ClientState;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  Client "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "    client="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v2, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "    inputContext="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v2, Lcom/android/server/InputMethodManagerService$ClientState;->inputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "    sessionRequested="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, v2, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "    curSession="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v2, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_2
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mCurMethodId="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mCurClient="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " mCurSeq="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mCurFocusedWindow="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mCurFocusedWindowClient="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mCurId="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " mHaveConnect="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " mBoundToMethod="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mCurToken="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mCurIntent="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mCurMethod="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mEnabledSession="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mImeWindowVis="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    invoke-static {v13}, Lcom/android/server/InputMethodManagerService;->imeWindowStatusToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mShowRequested="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " mShowExplicitlyRequested="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " mShowForced="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " mInputShown="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mCurUserActionNotificationSequenceNumber="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mSystemReady="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " mInteractive="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mSettingsObserver="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const-string/jumbo v11, "  mSwitchingController:"

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v11, v10}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->dump(Landroid/util/Printer;)V

    const-string/jumbo v11, "  mSettings:"

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string/jumbo v13, "    "

    invoke-virtual {v11, v10, v13}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->dumpLocked(Landroid/util/Printer;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v12

    const-string/jumbo v11, " "

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    if-eqz v4, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    :try_start_2
    iget-object v11, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v11}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-interface {v11, p1, v0}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    if-eqz v6, :cond_3

    if-eq v4, v6, :cond_3

    const-string/jumbo v11, " "

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const-string/jumbo v11, "Warning: Current input method client doesn\'t match the last focused. window."

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const-string/jumbo v11, "Dumping input method client in the last focused window just in case."

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const-string/jumbo v11, " "

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    :try_start_3
    iget-object v11, v6, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v11}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-interface {v11, p1, v0}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_3
    const-string/jumbo v11, " "

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    if-eqz v9, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    :try_start_4
    invoke-interface {v9}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-interface {v11, p1, v0}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    return-void

    :catch_0
    move-exception v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Input method client dead: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string/jumbo v11, "No input method client."

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Input method client in focused window dead: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Input method service dead: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string/jumbo v11, "No input method service."

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_4
.end method

.method executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    .locals 1

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    goto :goto_0
.end method

.method public finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 0

    return-void
.end method

.method public getCurrentFocusDisplayID()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    if-nez p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    :goto_0
    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v0, p2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getInputMethodList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInputMethodList: UserHandle.getCallingUserId()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInputMethodList: mSettings.getCurrentUserId()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInputMethodList: mCurrentFocusedUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getInputMethodWindowVisibleHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v0}, Landroid/view/WindowManagerInternal;->getInputMethodWindowVisibleHeight()I

    move-result v0

    return v0
.end method

.method public getKeyboardSwitcherTweak()Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo p0, "hide_keyboard_switcher"

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v5

    if-nez v5, :cond_0

    return-object v8

    :cond_0
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    monitor-exit v6

    return-object v8

    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_3

    monitor-exit v6

    return-object v8

    :cond_3
    :try_start_2
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v4

    if-ltz v4, :cond_4

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-lt v4, v5, :cond_5

    :cond_4
    monitor-exit v6

    return-object v8

    :cond_5
    :try_start_3
    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    monitor-exit v6

    return-object v5

    :catch_0
    move-exception v0

    monitor-exit v6

    return-object v8

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/List;
    .locals 8

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "voice"

    invoke-direct {p0, v6}, Lcom/android/server/InputMethodManagerService;->findLastResortApplicableShortcutInputMethodAndSubtypeLocked(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v7

    return-object v3

    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_3
    monitor-exit v7

    return-object v3
.end method

.method public getWACOMPen()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->mbWACOMPen:Z

    return v0
.end method

.method getsystemimeKnox(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 14

    iget v11, p1, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    const/4 v11, 0x0

    return v11

    :sswitch_0
    iget v11, p1, Landroid/os/Message;->arg1:I

    packed-switch v11, :pswitch_data_0

    const-string/jumbo v11, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unknown subtype picker mode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :pswitch_0
    iget-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    :goto_0
    invoke-direct {p0, v10}, Lcom/android/server/InputMethodManagerService;->showInputMethodMenu(Z)V

    const/4 v11, 0x1

    return v11

    :pswitch_1
    const/4 v10, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v10, 0x0

    goto :goto_0

    :sswitch_1
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string/jumbo v11, "InputMethodManagerService"

    const-string/jumbo v12, "MSG_SHOW_AGAIN_IM_PICKER"

    invoke-static {v11, v12}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->dismiss()V

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->showInputMethodSubtypeMenu()V

    :cond_0
    const/4 v11, 0x1

    return v11

    :sswitch_2
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/server/InputMethodManagerService;->showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_3
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->showConfigureInputMethods()V

    const/4 v11, 0x1

    return v11

    :sswitch_4
    :try_start_0
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/view/IInputMethod;

    invoke-interface {v11}, Lcom/android/internal/view/IInputMethod;->unbindInput()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_f

    :goto_1
    const/4 v11, 0x1

    return v11

    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_1
    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/view/IInputMethod;

    iget-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v12, Landroid/view/inputmethod/InputBinding;

    invoke-interface {v11, v12}, Lcom/android/internal/view/IInputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_e

    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v11, 0x1

    return v11

    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_2
    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/view/IInputMethod;

    iget v13, p1, Landroid/os/Message;->arg1:I

    iget-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v12, Landroid/os/ResultReceiver;

    invoke-interface {v11, v13, v12}, Lcom/android/internal/view/IInputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_d

    :goto_3
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v11, 0x1

    return v11

    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_3
    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/view/IInputMethod;

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v11, v12}, Lcom/android/internal/view/IInputMethod;->updateWacomState(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_c

    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v11, 0x1

    return v11

    :sswitch_8
    :try_start_4
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/view/IInputMethod;

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v11, v12}, Lcom/android/internal/view/IInputMethod;->updateFloatingState(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_b

    :goto_5
    const/4 v11, 0x1

    return v11

    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_5
    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/view/IInputMethod;

    iget-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v12, Landroid/os/ResultReceiver;

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lcom/android/internal/view/IInputMethod;->hideSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_a

    :goto_6
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v11, 0x1

    return v11

    :sswitch_a
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :try_start_6
    invoke-virtual {p0, v12, v13}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v11

    const/4 v11, 0x1

    return v11

    :catchall_0
    move-exception v12

    monitor-exit v11

    throw v12

    :sswitch_b
    :try_start_7
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/view/IInputMethod;

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v11, v12}, Lcom/android/internal/view/IInputMethod;->minimizeSoftInput(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    const/4 v11, 0x1

    return v11

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7

    :sswitch_c
    :try_start_8
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/view/IInputMethod;

    invoke-interface {v11}, Lcom/android/internal/view/IInputMethod;->undoMinimizeSoftInput()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    const/4 v11, 0x1

    return v11

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8

    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_9
    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/view/IInputMethod;

    iget-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v12, Landroid/os/IBinder;

    invoke-interface {v11, v12}, Lcom/android/internal/view/IInputMethod;->attachToken(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    :goto_9
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v11, 0x1

    return v11

    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/view/IInputMethod;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/view/InputChannel;

    :try_start_a
    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/view/IInputSessionCallback;

    invoke-interface {v5, v1, v11}, Lcom/android/internal/view/IInputMethod;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v1, :cond_1

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    :cond_1
    :goto_a
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v11, 0x1

    return v11

    :catch_2
    move-exception v4

    if-eqz v1, :cond_1

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    goto :goto_a

    :catchall_1
    move-exception v11

    if-eqz v1, :cond_2

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    :cond_2
    throw v11

    :sswitch_f
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_b
    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-virtual {p0, v9}, Lcom/android/server/InputMethodManagerService;->setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V

    iget-object v13, v9, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/view/IInputContext;

    iget-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v12, Landroid/view/inputmethod/EditorInfo;

    invoke-interface {v13, v11, v6, v12}, Lcom/android/internal/view/IInputMethod;->startInput(Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_8

    :goto_b
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v11, 0x1

    return v11

    :sswitch_10
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_c
    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-virtual {p0, v9}, Lcom/android/server/InputMethodManagerService;->setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V

    iget-object v13, v9, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/view/IInputContext;

    iget-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v12, Landroid/view/inputmethod/EditorInfo;

    invoke-interface {v13, v11, v6, v12}, Lcom/android/internal/view/IInputMethod;->restartInput(Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_7

    :goto_c
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v11, 0x1

    return v11

    :sswitch_11
    :try_start_d
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/view/IInputMethodClient;

    iget v12, p1, Landroid/os/Message;->arg1:I

    iget v13, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v11, v12, v13}, Lcom/android/internal/view/IInputMethodClient;->onUnbindMethod(II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_6

    :goto_d
    const/4 v11, 0x1

    return v11

    :sswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputMethodClient;

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/view/InputBindResult;

    :try_start_e
    invoke-interface {v2, v7}, Lcom/android/internal/view/IInputMethodClient;->onBindMethod(Lcom/android/internal/view/InputBindResult;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    iget-object v11, v7, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v11, :cond_3

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, v7, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v11}, Landroid/view/InputChannel;->dispose()V

    :cond_3
    :goto_e
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v11, 0x1

    return v11

    :catch_3
    move-exception v4

    :try_start_f
    const-string/jumbo v11, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Client died receiving input method "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    iget-object v11, v7, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v11, :cond_3

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, v7, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v11}, Landroid/view/InputChannel;->dispose()V

    goto :goto_e

    :catchall_2
    move-exception v11

    iget-object v12, v7, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v12, :cond_4

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, v7, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v12}, Landroid/view/InputChannel;->dispose()V

    :cond_4
    throw v11

    :sswitch_13
    :try_start_10
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v12, v11, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget v11, p1, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    :goto_f
    invoke-interface {v12, v11}, Lcom/android/internal/view/IInputMethodClient;->setActive(Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_4

    :goto_10
    const/4 v11, 0x1

    return v11

    :cond_5
    const/4 v11, 0x0

    goto :goto_f

    :catch_4
    move-exception v4

    const-string/jumbo v12, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Got RemoteException sending setActive(false) notification to pid "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/InputMethodManagerService$ClientState;

    iget v11, v11, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " uid "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/InputMethodManagerService$ClientState;

    iget v11, v11, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :sswitch_14
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    :goto_11
    invoke-direct {p0, v11}, Lcom/android/server/InputMethodManagerService;->handleSetInteractive(Z)V

    const/4 v11, 0x1

    return v11

    :cond_6
    const/4 v11, 0x0

    goto :goto_11

    :sswitch_15
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    :goto_12
    invoke-direct {p0, v11}, Lcom/android/server/InputMethodManagerService;->handleSwitchInputMethod(Z)V

    const/4 v11, 0x1

    return v11

    :cond_7
    const/4 v11, 0x0

    goto :goto_12

    :sswitch_16
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/InputMethodManagerService$ClientState;

    :try_start_11
    iget-object v11, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v11, v8}, Lcom/android/internal/view/IInputMethodClient;->setUserActionNotificationSequenceNumber(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_5

    :goto_13
    const/4 v11, 0x1

    return v11

    :catch_5
    move-exception v4

    const-string/jumbo v11, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Got RemoteException sending setUserActionNotificationSequenceNumber("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") notification to pid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v3, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " uid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v3, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :sswitch_17
    iget v11, p1, Landroid/os/Message;->arg1:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    const/4 v11, 0x1

    :goto_14
    invoke-direct {p0, v11}, Lcom/android/server/InputMethodManagerService;->setSpellCheckerEnabled(Z)V

    const/4 v11, 0x1

    return v11

    :cond_8
    const/4 v11, 0x0

    goto :goto_14

    :sswitch_18
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    iget v11, p1, Landroid/os/Message;->arg1:I

    const/4 v13, 0x1

    if-ne v11, v13, :cond_9

    const/4 v11, 0x1

    :goto_15
    invoke-virtual {v12, v11}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->handleHardKeyboardStatusChange(Z)V

    const/4 v11, 0x1

    return v11

    :cond_9
    const/4 v11, 0x0

    goto :goto_15

    :catch_6
    move-exception v4

    goto/16 :goto_d

    :catch_7
    move-exception v4

    goto/16 :goto_c

    :catch_8
    move-exception v4

    goto/16 :goto_b

    :catch_9
    move-exception v4

    goto/16 :goto_9

    :catch_a
    move-exception v4

    goto/16 :goto_6

    :catch_b
    move-exception v4

    goto/16 :goto_5

    :catch_c
    move-exception v4

    goto/16 :goto_4

    :catch_d
    move-exception v4

    goto/16 :goto_3

    :catch_e
    move-exception v4

    goto/16 :goto_2

    :catch_f
    move-exception v4

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x3e8 -> :sswitch_4
        0x3f2 -> :sswitch_5
        0x3fc -> :sswitch_6
        0x3fd -> :sswitch_7
        0x3fe -> :sswitch_8
        0x3ff -> :sswitch_1
        0x400 -> :sswitch_b
        0x401 -> :sswitch_c
        0x406 -> :sswitch_9
        0x40b -> :sswitch_a
        0x410 -> :sswitch_d
        0x41a -> :sswitch_e
        0x7d0 -> :sswitch_f
        0x7da -> :sswitch_10
        0xbb8 -> :sswitch_11
        0xbc2 -> :sswitch_12
        0xbcc -> :sswitch_13
        0xbd6 -> :sswitch_14
        0xbe0 -> :sswitch_16
        0xbea -> :sswitch_15
        0xbf4 -> :sswitch_17
        0xfa0 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hideCurrentInput(ILandroid/os/ResultReceiver;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v5, :cond_1

    :cond_0
    const-string/jumbo v3, "InputMethodManagerService"

    const-string/jumbo v5, "Not hiding: explicit show not cancelled by non-explicit hide"

    invoke-static {v3, v5}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    iget-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v5, :cond_2

    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_2

    const-string/jumbo v3, "InputMethodManagerService"

    const-string/jumbo v5, "Not hiding: forced show not cancelled by not-always hide"

    invoke-static {v3, v5}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isDeskTopMode()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPressBtnSIPOnOff()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_3
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    if-nez v5, :cond_8

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9

    move v2, v3

    :goto_0
    if-eqz v2, :cond_b

    const-string/jumbo v5, "InputMethodManagerService"

    const-string/jumbo v6, "hideCurrentInputLocked - send MSG_HIDE_SOFT_INPUT"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/16 v8, 0x406

    invoke-virtual {v6, v8, v7, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    const/4 v1, 0x1

    :goto_1
    iget-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    if-eqz v5, :cond_4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    :cond_4
    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mShowHWR:Z

    iget-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v5}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->getKeyboardState()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v5, v3, :cond_c

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardPerflockRelease()V

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->setKeyboardState(I)V

    :cond_5
    :goto_3
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v3, v9}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setCurrentInputMethodClient(Landroid/os/IBinder;)V

    :cond_6
    return v1

    :cond_7
    const-string/jumbo v3, "InputMethodManagerService"

    const-string/jumbo v5, "Not hiding: In DexMode do not press btn SIP key code"

    invoke-static {v3, v5}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_8
    move v2, v3

    goto :goto_0

    :cond_9
    move v2, v4

    goto :goto_0

    :cond_a
    move v2, v4

    goto :goto_0

    :cond_b
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v5, "InputMethodManagerService"

    const-string/jumbo v6, "hideCurrentInputLocked: unbindService is failed due to IllegalArgumentException"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_c
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->getKeyboardState()I

    move-result v3

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->setKeyboardState(I)V

    goto :goto_3
.end method

.method hideInputMethodMenu()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method hideInputMethodMenuLocked()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    return-void
.end method

.method hideKeyboardDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    :cond_0
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public hideMySoftInput(Landroid/os/IBinder;I)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ignoring hideInputMethod due to an invalid token. uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " token:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v4

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p0, p2, v3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "InputMethodManagerService"

    const-string/jumbo v5, "calledFromInValidUser Ignoring SSI"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    if-nez p1, :cond_2

    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, p1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring hideSoftInput of uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :cond_2
    :try_start_4
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v4}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v4, v6, :cond_1

    :cond_3
    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Client requesting input be hidden, flags : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catch_0
    move-exception v0

    :try_start_6
    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "HSI exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :catchall_0
    move-exception v4

    :try_start_8
    monitor-exit v5

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isAccessoryKeyboard()I
    .locals 1

    sget v0, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    return v0
.end method

.method public isCurrentInputMethodAsSamsungKeyboard()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isChineseRegion()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "com.samsung.inputmethod"

    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v4

    :cond_1
    return v3

    :cond_2
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isJapaneseRegion()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v4

    :cond_3
    return v3

    :cond_4
    const-string/jumbo v1, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    return v4

    :cond_6
    return v3
.end method

.method public isInputMethodShown()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->refreshImeWindowVis()V

    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isKeyboardBlockedForInteractionControl()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->mAccessControlEnable:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minimizeSoftInput(Lcom/android/internal/view/IInputMethodClient;I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/16 v3, 0x400

    invoke-virtual {v1, v3, p2, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    const/4 v0, 0x1

    return v0
.end method

.method public notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v6

    if-nez v6, :cond_0

    return v8

    :cond_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    invoke-virtual {v6, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v4

    if-ltz p3, :cond_1

    array-length v6, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lt p3, v6, :cond_2

    :cond_1
    monitor-exit v7

    return v8

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "android.text.style.SUGGESTION_PICKED"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "before"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "after"

    aget-object v8, v4, p3

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "hashcode"

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v8

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    :try_start_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v6, 0x1

    monitor-exit v7

    return v6

    :catchall_0
    move-exception v6

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_3
    monitor-exit v7

    return v8
.end method

.method public notifyUserAction(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, p1, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/android/internal/view/IInputMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v2, "onServiceConnected"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v2, "unbindCurrentMethodLocked - Service connected without a token!"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/16 v5, 0x410

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 7

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    const/16 v5, 0xbb8

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
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

.method onSessionCreated(Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V
    .locals 6

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    new-instance v3, Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-direct {v3, v4, p1, p2, p3}, Lcom/android/server/InputMethodManagerService$SessionState;-><init>(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V

    iput-object v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->attachNewInputLocked(Z)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    iget-object v1, v0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    const/16 v5, 0xbc2

    invoke-virtual {v3, v5, v4, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    monitor-exit v2

    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method onSwitchUser(I)V
    .locals 3

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchUser : userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->switchUserLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/view/IInputMethodManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    const-string/jumbo v1, "InputMethodManagerService"

    const-string/jumbo v2, "Input Method Manager Crash"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/util/SemLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    throw v0
.end method

.method onUnlockUser(I)V
    .locals 7

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onUnlockUser: userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " curUserId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    monitor-exit v3

    return-void

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v4, v0, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    const/4 v1, 0x0

    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onUnlockUser: mImeSelectedOnBoot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mInitialUserSwitch="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mInitialUserSwitch:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mInitialUserSwitch:Z

    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method registerSamsungAdditionalReceviers()V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x0

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v9, "android.intent.action.USBHID_KEYBOARD_EVENT"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;

    invoke-direct {v10, p0}, Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const-string/jumbo v11, "android.permission.MANAGE_USB"

    invoke-virtual {v9, v10, v7, v11, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v9, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v9, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;

    invoke-direct {v10, p0}, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v9, v10, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v9, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;

    invoke-direct {v10, p0}, Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v9, v10, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v9, "com.samsung.android.app.mirrorlink.sip"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/InputMethodManagerService$CarModeReceiver;

    invoke-direct {v10, p0}, Lcom/android/server/InputMethodManagerService$CarModeReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v9, v10, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    sget-object v9, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_KNOX_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v9, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_KNOX_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/InputMethodManagerService$KnoxDesktopModeReceiver;

    invoke-direct {v10, p0}, Lcom/android/server/InputMethodManagerService$KnoxDesktopModeReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v9, v10, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v9, "com.sec.android.inputmethod.Subtype"

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/InputMethodManagerService$KeyboardSubTypeReceiver;

    invoke-direct {v10, p0}, Lcom/android/server/InputMethodManagerService$KeyboardSubTypeReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v9, v10, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v9, "com.sec.android.sidesync.action.PSS_KEYBOARD"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;

    invoke-direct {v10, p0}, Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const-string/jumbo v11, "com.sec.android.permission.SIDESYNC_RECEIVER_PERMISSION"

    invoke-virtual {v9, v10, v4, v11, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v9, "com.sec.android.sidesync.action.KMS_KEYBOARD"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/InputMethodManagerService$KMSKeyboardReceiver;

    invoke-direct {v10, p0}, Lcom/android/server/InputMethodManagerService$KMSKeyboardReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const-string/jumbo v11, "com.sec.android.permission.SIDESYNC_RECEIVER_PERMISSION"

    invoke-virtual {v9, v10, v2, v11, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v9, "VZW"

    const-string/jumbo v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v9, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/InputMethodManagerService$VZWResetSettingReceiver;

    invoke-direct {v10, p0}, Lcom/android/server/InputMethodManagerService$VZWResetSettingReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "universal_switch_enabled"

    invoke-static {v10}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mUniversalSwitchChangeObserver:Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;

    invoke-virtual {v9, v10, v12, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "mobile_keyboard"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mMobileKeyboardChangeObserver:Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;

    invoke-virtual {v9, v10, v12, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "access_control_enabled"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

    invoke-virtual {v9, v10, v12, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "access_control_keyboard_block"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    invoke-virtual {v9, v10, v12, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v1, 0x0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    invoke-virtual {v3, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-ne v1, v0, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    .locals 8

    const/4 v4, 0x1

    iget-boolean v1, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Creating new session for client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/InputMethodManagerService$ClientState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    iput-boolean v4, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    aget-object v4, v0, v4

    new-instance v5, Lcom/android/server/InputMethodManagerService$MethodCallback;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/server/InputMethodManagerService$MethodCallback;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/internal/view/IInputMethod;Landroid/view/InputChannel;)V

    const/16 v6, 0x41a

    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method resetCurrentMethodAndClient(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V

    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    return-void
.end method

.method public setAccessControlEnable(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/server/InputMethodManagerService;->mAccessControlEnable:Z

    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 10

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    if-nez p2, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_3

    monitor-exit v8

    return-void

    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-interface {v7, v9}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    if-eqz v5, :cond_5

    :try_start_2
    array-length v6, v5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_5

    aget-object v7, v5, v1

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    invoke-virtual {v7, v4, p2}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->addInputMethodSubtypes(Landroid/view/inputmethod/InputMethodInfo;[Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v2

    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {p0, v7}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v8

    return-void

    :catch_0
    move-exception v0

    :try_start_5
    const-string/jumbo v7, "InputMethodManagerService"

    const-string/jumbo v9, "Failed to get package infos"

    invoke-static {v7, v9}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v8

    return-void

    :catchall_0
    move-exception v7

    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    monitor-exit v8

    return-void
.end method

.method public setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_0

    return v5

    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :cond_1
    monitor-exit v3

    return v5

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method setDefaultIMEForKeyboard()V
    .locals 6

    sget-object v4, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method setDefaultIMEforChineseKeyboard()V
    .locals 1

    const-string/jumbo v0, "com.samsung.inputmethod/.SamsungIME"

    sput-object v0, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    return-void
.end method

.method setDefaultIMEforJapaneseKeyboard()V
    .locals 1

    const-string/jumbo v0, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    sput-object v0, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    return-void
.end method

.method setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignoring setImeWindowStatus due to an invalid token. uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " token:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iput p2, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iput p3, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    if-eqz p3, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setInputMethodEnabled(Ljava/lang/String;Z)Z
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return v2

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v2, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v1

    if-eqz p2, :cond_3

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    return v8

    :cond_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6, p1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    return v7

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6, v0, v1, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    :goto_0
    return v8

    :cond_5
    const-string/jumbo v6, "InputMethodManagerService"

    const-string/jumbo v7, "Can\'t find new IME, unsetting the current input method."

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, ""

    invoke-direct {p0, v6}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    return v7
.end method

.method setInputMethodLocked(Ljava/lang/String;I)V
    .locals 12

    const/4 v10, 0x1

    iget-boolean v9, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v9, :cond_0

    if-eqz p1, :cond_0

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    iput-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mNeedToExplicitallyCall:Z

    :cond_0
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v1, :cond_1

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    if-eqz p1, :cond_8

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v7

    if-gtz v7, :cond_2

    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-ltz p2, :cond_4

    if-ge p2, v7, :cond_4

    invoke-virtual {v1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_3

    if-nez v6, :cond_5

    :cond_3
    const-string/jumbo v9, "InputMethodManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Illegal subtype state: old subtype = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", new subtype = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    goto :goto_0

    :cond_5
    if-eq v5, v6, :cond_7

    invoke-direct {p0, v1, p2, v10}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v9, :cond_6

    :try_start_0
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v10, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iget v11, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v9, v10, v11}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v9, v5}, Lcom/android/internal/view/IInputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    invoke-direct {p0, v9, v1, v5}, Lcom/android/server/InputMethodManagerService;->notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    :cond_7
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v9, "InputMethodManagerService"

    const-string/jumbo v10, "Failed to call changeInputMethodSubtype"

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v9, 0x0

    :try_start_1
    invoke-direct {p0, v1, p2, v9}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v9

    if-eqz v9, :cond_a

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x20000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v9, "input_method_id"

    invoke-virtual {v4, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v9, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string/jumbo v9, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_9
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v9, :cond_a

    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/server/InputMethodManagerService$5;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$5;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    :cond_a
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    invoke-direct {p0, v9, v1, v10}, Lcom/android/server/InputMethodManagerService;->notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void

    :catchall_0
    move-exception v9

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method public setInputMethodSwitchDisable(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/server/InputMethodManagerService;->mInputMethodSwitchDisable:Z

    return-void
.end method

.method public setPressBtnSIPOnOff(Z)V
    .locals 3

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPressBtnSIPOnOff : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/InputMethodManagerService;->mIsPressBtnSIPOnOff:Z

    return-void
.end method

.method public setScreenBrightness(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setWACOMPen(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/server/InputMethodManagerService;->mbWACOMPen:Z

    return-void
.end method

.method public setisAccessControlKeyboardBlockEnable(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    return-void
.end method

.method public shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_0

    return v8

    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ignoring shouldOfferSwitchingToNextInputMethod due to an invalid token. uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " token:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return v8

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v2, v5, v7}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_2

    monitor-exit v3

    return v8

    :cond_2
    monitor-exit v3

    return v9

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->isKeyboardBlockedForInteractionControl()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v3, "Interaction Control Keyboard block is enabled, so not show keyboard"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_0
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v3, "mAccessibilityRequestingNoSoftKeyboard, so not show keyboard"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_4

    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    :cond_2
    :goto_0
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_5

    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowHWR:Z

    :goto_1
    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mNeedToExplicitallyCall:Z

    if-eqz v2, :cond_3

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v2, :cond_6

    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v3, "System is not Ready, so not show keyboard"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_4
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_2

    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    goto :goto_0

    :cond_5
    iput-boolean v9, p0, Lcom/android/server/InputMethodManagerService;->mShowHWR:Z

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getImeShowFlags()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/16 v6, 0x3fc

    invoke-virtual {v3, v6, v4, v5, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mNeedToExplicitallyCall:Z

    if-eqz v2, :cond_7

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    iput-boolean v9, p0, Lcom/android/server/InputMethodManagerService;->mNeedToExplicitallyCall:Z

    :cond_7
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    if-eqz v2, :cond_c

    :cond_8
    :goto_2
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->getKeyboardState()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardPerflockAcquire()V

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v8}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->setKeyboardState(I)V

    :cond_9
    const/4 v1, 0x1

    :cond_a
    :goto_3
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_b

    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setCurrentInputMethodClient(Landroid/os/IBinder;)V

    :cond_b
    return v1

    :cond_c
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    const v4, 0xc000001

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    goto :goto_2

    :cond_d
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v2, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    const-wide/16 v6, 0xbb8

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_a

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/16 v3, 0x7d00

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v3, "Force disconnect/connect to the IME in showCurrentInputLocked()"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v3, 0x40000001    # 2.0000002f

    invoke-direct {p0, v2, p0, v3}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_3
.end method

.method public showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInputMethodRestrictionState()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "InputMethodManagerService"

    const-string/jumbo v2, "Input method restricted by Knox Customization"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_2

    if-nez p1, :cond_4

    :cond_2
    :goto_0
    const-string/jumbo v1, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignoring showInputMethodPickerFromClient of uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-eq v1, v3, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method showKeyboardNotiDailog(I)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x104065b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/InputMethodManagerService$10;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$10;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/InputMethodManagerService$11;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$11;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x104065a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7dc

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x1040657

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public showMySoftInput(Landroid/os/IBinder;I)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ignoring showMySoftInput due to an invalid token. uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " token:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v4

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p0, p2, v3}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "InputMethodManagerService"

    const-string/jumbo v5, "calledFromInValidUser Ignoring SSI"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    if-nez p1, :cond_2

    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, p1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring showSoftInput of uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :cond_2
    :try_start_4
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v4}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v4, v6, :cond_1

    :cond_3
    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Client requesting input be shown, flags : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catch_0
    move-exception v0

    :try_start_6
    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SSI exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :catchall_0
    move-exception v4

    :try_start_8
    monitor-exit v5

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public showtoastkeyboardconnected()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    sget v3, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const v2, 0x104065c

    :goto_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const v2, 0x104065d

    goto :goto_0
.end method

.method startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v7, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0, v9}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.view.InputMethod"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.client_label"

    const v3, 0x1040479

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.client_intent"

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v8, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v2, 0x60000005

    invoke-direct {p0, v0, p0, v2}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    iput-boolean v9, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    :try_start_0
    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding window token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/16 v3, 0x7db

    invoke-interface {v0, v2, v3}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v0

    :cond_3
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failure connecting to input method service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method startInputLocked(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/InputMethodManagerService$ClientState;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p5, :cond_2

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignoring startInput with null EditorInfo. uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Starting input on non-focused client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-ne v0, v1, :cond_3

    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v2, " Starting startInputUncheckedLocked "

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :cond_3
    return-object v4

    :catch_0
    move-exception v6

    :cond_4
    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    return-object v0
.end method

.method public startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)Lcom/android/internal/view/InputBindResult;
    .locals 7

    if-eqz p3, :cond_0

    invoke-direct/range {p0 .. p9}, Lcom/android/server/InputMethodManagerService;->windowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p8

    move/from16 v4, p9

    move-object v5, p7

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/InputMethodManagerService;->startInput(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    return-object v0
.end method

.method startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .locals 7

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    iget-object v2, p4, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Rejecting this client as it reported an invalid package name. uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p4, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eq v0, p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClientInKeyguard:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    const/16 v3, 0xbcc

    invoke-virtual {v2, v3, v0, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    :cond_2
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    :cond_3
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iput-object p2, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    iput p3, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContextMissingMethods:I

    iput-object p4, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_6

    and-int/lit16 v0, p5, 0x100

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->attachNewInputLocked(Z)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v0

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_8

    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v0

    :cond_8
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x7d00

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v6

    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "Unexpected exception."

    invoke-static {v0, v1, v6}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public switchToLastInputMethod(Landroid/os/IBinder;)Z
    .locals 22

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v17

    if-nez v17, :cond_0

    const/16 v17, 0x0

    return v17

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    :goto_0
    const/16 v16, 0x0

    const/4 v15, -0x1

    if-eqz v11, :cond_2

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    const/4 v5, -0x1

    :goto_1
    if-eqz v9, :cond_1

    if-eq v13, v5, :cond_2

    :cond_1
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v15

    :cond_2
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v17

    if-eqz v17, :cond_6

    :cond_3
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v17, 0x1

    monitor-exit v18

    return v17

    :cond_4
    const/4 v12, 0x0

    goto :goto_0

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v5

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_2
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v4, :cond_3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v17

    if-lez v17, :cond_7

    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v19

    const-string/jumbo v20, "keyboard"

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v14, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v8, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v15

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v14

    goto :goto_2

    :cond_9
    const/16 v17, 0x0

    monitor-exit v18

    return v17

    :catchall_0
    move-exception v17

    monitor-exit v18

    throw v17
.end method

.method public switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_0

    return v7

    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ignoring switchToNextInputMethod due to an invalid token. uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " token:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return v7

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    const/4 v6, 0x1

    invoke-virtual {v4, p2, v2, v5, v6}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_2

    monitor-exit v3

    return v7

    :cond_2
    :try_start_2
    iget-object v2, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iget v4, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return v8

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .locals 10

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v3, :cond_4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v7, v0, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/KeyguardManager;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/NotificationManager;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v7, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iget v8, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v3, v7, v8}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->getKeyboardSwitcherTweak()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    :goto_1
    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    invoke-virtual {v3, v7}, Landroid/view/WindowManagerInternal;->setOnHardKeyboardStatusChangeListener(Landroid/view/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V

    :cond_2
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    if-nez v3, :cond_3

    const-string/jumbo v3, "InputMethodManagerService"

    const-string/jumbo v4, "Reset the default IME as \"Resource\" is ready here."

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->resetStateIfCurrentLocaleChangedLocked()V

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v5

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v5, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getDeviceThemeFromSystemProperties()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/InputMethodManagerService;->mDeviceDefaultThemeType:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Sip_SupportKcmForHwKeyboard"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/InputMethodManagerService;->mEnabledKCMFeatureForHWKeyboard:Z

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_4

    :try_start_1
    new-instance v3, Lcom/android/server/InputMethodManagerService$4;

    invoke-direct {v3, p0}, Lcom/android/server/InputMethodManagerService$4;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_3
    monitor-exit v6

    return-void

    :cond_5
    move v3, v5

    goto/16 :goto_0

    :cond_6
    move v3, v5

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v3, "InputMethodManagerService"

    const-string/jumbo v4, "Unexpected exception"

    invoke-static {v3, v4, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3
.end method

.method unbindCurrentClientLocked(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    if-eqz v0, :cond_0

    iput-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    const/16 v3, 0xbcc

    invoke-virtual {v1, v3, v5, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    const/16 v4, 0xbb8

    invoke-virtual {v1, v4, v2, p1, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iput-boolean v5, v0, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    iput-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    :cond_1
    return-void
.end method

.method unbindCurrentMethodLocked(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eqz v1, :cond_3

    :try_start_0
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal;->saveLastInputMethodWindowForTransition()V

    :cond_2
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/InputMethodManagerService;->setImeWindowStatus(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    :cond_3
    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public undoMinimizeSoftInput()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/16 v3, 0x401

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    return-void
.end method

.method updateCurrentProfileIds()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentProfileIds([I)V

    return-void
.end method

.method updateFromSettingsLocked(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateKeyboardFromSettingsLocked()V

    return-void
.end method

.method updateInputMethodsFromSettingsLocked(Z)V
    .locals 14

    const/4 v13, 0x4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    const v3, 0x8000

    invoke-interface {v0, v1, v3, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-ne v0, v13, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v11

    :cond_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v11}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v11, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :goto_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v8

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown input method from prefs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v13}, Lcom/android/server/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    goto :goto_3

    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public updateKeyboardFromSettingsLocked()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    const v2, 0x10203fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    const-string/jumbo v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[HARDWARE_KEYBOARD] mShowImeWithHardKeyboard = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 13

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_0
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring updateStatusIcon due to an invalid token. uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    if-nez p3, :cond_2

    :try_start_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_0
    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2
    if-eqz p2, :cond_1

    const/4 v6, 0x0

    :try_start_5
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, p2, v2, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v6

    :goto_1
    :try_start_6
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    const/4 v4, 0x0

    move-object v2, p2

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v12

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :catch_0
    move-exception v7

    goto :goto_1
.end method
