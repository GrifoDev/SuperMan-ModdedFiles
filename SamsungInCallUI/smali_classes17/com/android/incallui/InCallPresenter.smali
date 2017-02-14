.class public Lcom/android/incallui/InCallPresenter;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/CallList$Listener;
.implements Lcom/android/incallui/CircularRevealFragment$OnCircularRevealCompleteListener;
.implements Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
.implements Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;
.implements Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;
.implements Lcom/android/incallui/util/CallUpdateUtil$UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallPresenter$AutoAnsTimer;,
        Lcom/android/incallui/InCallPresenter$InCallUiListener;,
        Lcom/android/incallui/InCallPresenter$InCallEventListener;,
        Lcom/android/incallui/InCallPresenter$ConfigurationListener;,
        Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;,
        Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;,
        Lcom/android/incallui/InCallPresenter$OnehandModeListener;,
        Lcom/android/incallui/InCallPresenter$EmergencyModeListener;,
        Lcom/android/incallui/InCallPresenter$InCallOrientationListener;,
        Lcom/android/incallui/InCallPresenter$InCallDetailsListener;,
        Lcom/android/incallui/InCallPresenter$CanAddCallListener;,
        Lcom/android/incallui/InCallPresenter$IncomingCallListener;,
        Lcom/android/incallui/InCallPresenter$InCallStateListener;,
        Lcom/android/incallui/InCallPresenter$InCallState;,
        Lcom/android/incallui/InCallPresenter$InCallReceiver;,
        Lcom/android/incallui/InCallPresenter$SmartAnswerBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_AUTO_ANSWER:Ljava/lang/String; = "com.shhphone.autoanswer.AUTOANSWER_ACTION"

.field private static final ACTION_CARMODE_STATE:Ljava/lang/String; = "com.sec.android.automotive.drivelink.carmodechanged"

.field private static final ACTION_ML_STATE:Ljava/lang/String; = "com.samsung.android.mirrorlink.ML_STATE"

.field private static final ACTION_PS_BARRED:Ljava/lang/String; = "com.android.intent.action.PSBARRED_FOR_VOLTE"

.field private static final BLOCK_QUERY_TIMEOUT_MS:J = 0x3e8L

.field private static final CHECK_UI_LOCKED:I = 0x3ed

.field private static final CHECK_UI_LOCKED_DELAY:I = 0x1388

.field private static final DATAUSAGE_REACH_TO_WARNING:Ljava/lang/String; = "com.samsung.intent.action.DATAUSAGE_REACH_TO_WARNING"

.field private static final DCM_APP_URI:Landroid/net/Uri;

.field private static final EMPTY_EXTRAS:Landroid/os/Bundle;

.field private static final EXTRA_FIRST_TIME_SHOWN:Ljava/lang/String; = "com.android.incallui.intent.extra.FIRST_TIME_SHOWN"

.field private static final EXTRA_INTENT:Ljava/lang/String; = "EXTRA_INTENT"

.field private static final ON_CALL_LIST_CHANGE:I = 0x3ea

.field private static final SET_AUTO_ANSWERING_FALSE_DELAY:I = 0x4b0

.field private static final THEME_APPLY:Ljava/lang/String; = "com.samsung.android.theme.themecenter.THEME_APPLY"

.field private static final TPHONE_RECEIVE_FINISH_INCALLUI:Ljava/lang/String; = "com.skt.prod.phone.action.FINISH_INCALLUI"

.field private static final UPDATE_CALL_AUDIO_BUTTON:I = 0x3ec

.field private static final UPDATE_CALL_AUDIO_BUTTON_DELAY:I = 0x64

.field private static final VIDEO_DATAUSAGE_REACH_TO_LIMIT:Ljava/lang/String; = "com.android.intent.action.VIDEO_DATAUSAGE_REACH_TO_LIMIT"

.field private static sInCallPresenter:Lcom/android/incallui/InCallPresenter;


# instance fields
.field private mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

.field private mAccountSelectionCancelled:Z

.field private mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

.field private mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

.field private mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

.field private mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

.field private mAwaitingCallListUpdate:Z

.field private mBatteryMonitor:Lcom/android/incallui/secrcs/BatteryMonitor;

.field private mBatteryMonitorRegistered:Z

.field private mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

.field private mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

.field private mBoundAndWaitingForOutgoingCall:Z

.field private final mCallCallback:Landroid/telecom/Call$Callback;

.field private mCallEdgeManager:Lcom/android/incallui/edge/CallEdgeManager;

.field private mCallList:Lcom/android/incallui/CallList;

.field private mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

.field private final mCanAddCallListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$CanAddCallListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCarmodeStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mConfigurationListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$ConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContactAgentReceiver:Landroid/content/BroadcastReceiver;

.field private mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

.field private mContext:Landroid/content/Context;

.field private mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

.field private mDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

.field private final mDetailsListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEmergencyCall:Z

.field private final mEmergencyModeListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$EmergencyModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

.field private mFirstCallState:I

.field private mFirstCallType:I

.field private final mHandler:Landroid/os/Handler;

.field private mHideStatusObserver:Landroid/database/ContentObserver;

.field private mInCallActivity:Lcom/android/incallui/InCallActivity;

.field private mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

.field private final mInCallEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInCallReceiver:Landroid/content/BroadcastReceiver;

.field private mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private final mInCallUiListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallUiListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIncomingCallListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActivityPreviouslyStarted:Z

.field private mIsChangingConfigurations:Z

.field private mIsCoverClosed:Z

.field private mIsFullScreen:Z

.field private mIsImsRegistered:Z

.field private mKnoxCustomDisabledItems:I

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenersOfManager:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMirrorlinkStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mMobileKeyboardListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnehandAnyScreenOnListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnehandModeListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$OnehandModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrientationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhotoringBlocked:I

.field private mPhotoringContentPath:Ljava/lang/String;

.field private mPhotoringState:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

.field private mProximitySensor:Lcom/android/incallui/ProximitySensor;

.field private mRcsBroadcastReceiver:Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

.field private mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

.field mRegListener:Lcom/sec/ims/IImsRegistrationListener;

.field private mServiceBound:Z

.field private mServiceConnected:Z

.field private mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

.field private mSubNumberDialog:Lcom/android/incallui/util/SecSubNumberDialogActivity;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

.field private mUpdateUtil:Lcom/android/incallui/util/CallUpdateUtil;

.field private mVideoPopupService:Lcom/android/incallui/service/SecVideoPopupService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallPresenter;->EMPTY_EXTRAS:Landroid/os/Bundle;

    const-string v0, "content://"

    const-string v1, "com.nttdocomo.android.phonemotion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "hide_name_status"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/InCallPresenter;->DCM_APP_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x1

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListenersOfManager:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mEmergencyModeListener:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandModeListener:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandAnyScreenOnListener:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mMobileKeyboardListener:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mConfigurationListener:Ljava/util/Set;

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mAccountSelectionCancelled:Z

    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    new-instance v0, Lcom/android/incallui/AnswerPresenter;

    invoke-direct {v0}, Lcom/android/incallui/AnswerPresenter;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mEmergencyCall:Z

    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    sget-object v0, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->PHOTORING_NONE:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    iput v2, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringContentPath:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsImsRegistered:Z

    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mBatteryMonitorRegistered:Z

    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mSubNumberDialog:Lcom/android/incallui/util/SecSubNumberDialogActivity;

    new-instance v0, Lcom/android/incallui/InCallPresenter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/InCallPresenter$1;-><init>(Lcom/android/incallui/InCallPresenter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHideStatusObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/incallui/InCallPresenter$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$2;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mMirrorlinkStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/incallui/InCallPresenter$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$3;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCarmodeStateReceiver:Landroid/content/BroadcastReceiver;

    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

    new-instance v0, Lcom/android/incallui/InCallPresenter$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$4;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mAwaitingCallListUpdate:Z

    new-instance v0, Lcom/android/incallui/InCallPresenter$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$5;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallCallback:Landroid/telecom/Call$Callback;

    new-instance v0, Lcom/android/incallui/InCallPresenter$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$6;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/incallui/util/CallUpdateUtil;

    const-string v1, "InCallPresenter"

    invoke-direct {v0, v1, p0}, Lcom/android/incallui/util/CallUpdateUtil;-><init>(Ljava/lang/String;Lcom/android/incallui/util/CallUpdateUtil$UpdateCallback;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mUpdateUtil:Lcom/android/incallui/util/CallUpdateUtil;

    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    new-instance v0, Lcom/android/incallui/InCallPresenter$8;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$8;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRegListener:Lcom/sec/ims/IImsRegistrationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/StatusBarNotifier;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/CallList;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/util/CallUpdateUtil;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mUpdateUtil:Lcom/android/incallui/util/CallUpdateUtil;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/BluetoothProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

    return-object v0
.end method

.method private attemptCleanup()V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v2, :cond_11

    iget-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v3, :cond_11

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attemptCleanup? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/service/EcidClient;->clearAllCalls()V

    :cond_0
    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->setMergeAfterAnswer(Z)V

    invoke-static {}, Lcom/android/incallui/service/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/service/SecModifyCallProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecModifyCallProcessor;->clearModifyInProgress()V

    if-eqz v0, :cond_10

    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v2}, Lcom/android/incallui/ContactInfoCache;->clearCache()V

    :cond_1
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v2}, Lcom/android/incallui/ProximitySensor;->tearDown()V

    :cond_2
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v2}, Lcom/android/incallui/StatusBarNotifier;->tearDown()V

    :cond_3
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    :cond_4
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v2, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->removeListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v2}, Lcom/android/incallui/accessory/AccessoryEventHandler;->tearDown()V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    :cond_5
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->clearCoreAppsContact()V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mListenersOfManager:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mEmergencyModeListener:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mOnehandModeListener:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mOnehandAnyScreenOnListener:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mMobileKeyboardListener:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mConfigurationListener:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_6

    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/EpdgManager;->destroy()V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    :cond_7
    const-string v2, "smart_auto_answering"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_8

    :try_start_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_8
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_9

    :try_start_2
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    :cond_9
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mMirrorlinkStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_a

    :try_start_3
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mMirrorlinkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mMirrorlinkStateReceiver:Landroid/content/BroadcastReceiver;

    :cond_a
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCarmodeStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_b

    :try_start_4
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCarmodeStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCarmodeStateReceiver:Landroid/content/BroadcastReceiver;

    :cond_b
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/incallui/BluetoothProfileManager;->closeBluetoothProfileProxy()V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

    :cond_c
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    invoke-virtual {v2}, Lcom/android/incallui/bike/BikeModeController;->cleanUp()V

    :cond_d
    const-string v2, "ims_rcs"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secrcs/RcsShareUI;->tearDown()V

    :cond_e
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->initCoverStateControls()V

    iput v1, p0, Lcom/android/incallui/InCallPresenter;->mKnoxCustomDisabledItems:I

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    invoke-virtual {v1}, Lcom/android/incallui/util/DesktopModeManager;->tearDown()V

    :cond_f
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/SALogging;->unregisterTelecommSALoggingReceiver(Landroid/content/Context;)Z

    const-string v1, "Finished InCallPresenter.CleanUp"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    return-void

    :cond_11
    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v2

    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_2

    :catch_4
    move-exception v2

    goto/16 :goto_1
.end method

.method private clearDigitsInKeypad()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->clearDigits()V

    :cond_0
    return-void
.end method

.method private dismissDialogForDisconnect()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->dismissDialogForDisconnect()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->dismissWaitingCallPopup()V

    goto :goto_0
.end method

.method private getColorsFromCall(Lcom/android/incallui/Call;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPendingPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->getColorsFromPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->getColorsFromPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v0

    goto :goto_0
.end method

.method private getColorsFromPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getHighlightColor()I

    move-result v1

    :cond_0
    new-instance v3, Lcom/android/incallui/InCallUIMaterialColorMapUtils;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/incallui/InCallUIMaterialColorMapUtils;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v3, v1}, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->calculatePrimaryAndSecondaryColor(I)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/InCallPresenter;
    .locals 2

    const-class v1, Lcom/android/incallui/InCallPresenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/InCallPresenter;

    invoke-direct {v0}, Lcom/android/incallui/InCallPresenter;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;

    :cond_0
    sget-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hideDialpadForDisconnect()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->hideDialpadForDisconnect()V

    :cond_0
    return-void
.end method

.method private initCoverStateControls()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/accessory/CoverViewManager;->dismissView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/motion/CallSContextMotion;->stopPutDownListening(Landroid/content/Context;)V

    return-void
.end method

.method public static isCallWithNoValidAccounts(Lcom/android/incallui/Call;)Z
    .locals 5

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isEmergencyCall()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/incallui/InCallPresenter;->EMPTY_EXTRAS:Landroid/os/Bundle;

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v2, "selectPhoneAccountAccounts"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid accounts for call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isRtl()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeBlockCall(Landroid/telecom/Call;)V
    .locals 0

    return-void
.end method

.method private maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V
    .locals 4

    const-string v2, "maybeShowErrorDialogOnDisconnect"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDescription : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getReason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    const-string v2, "canada_bmc_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    const-string v2, "dismissDataChargeAlertDialog for BMC "

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->dismissDataChargeAlertDialog()V

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->setDisconnectCauseForMissingAccounts(Lcom/android/incallui/Call;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallActivity;->maybeShowErrorDialogOnDisconnect(Landroid/telecom/DisconnectCause;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isStartPopupServiceWhenMakeCallFromOtherApp()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    if-eqz v2, :cond_0

    :cond_5
    invoke-virtual {v1}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    invoke-virtual {v1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    :cond_6
    invoke-virtual {v1}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private notifyVideoPauseController(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVideoPauseController "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/VideoPauseController;->onUiShowing(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processOnCallListChange(Lcom/android/incallui/CallList;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v9, 0x6

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-static {p1, v4, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    iput v11, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getCallType()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CallState change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    invoke-static {v5}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    if-nez v4, :cond_3

    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    if-eq v4, v9, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v9, :cond_1

    invoke-static {v8}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0903c5

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/util/SALogging;->getNetworkType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/EpdgManager;->dismissCurrentDialogWithoutSettingFlag()V

    :cond_2
    invoke-static {v8}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f09038b

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/util/SALogging;->getNetworkType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    const/16 v5, 0xa

    if-eq v4, v5, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v4

    if-ne v4, v10, :cond_14

    invoke-static {}, Lcom/android/incallui/util/SALogging;->getGeneralScreenId()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f090377

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-static {v1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ACTIVE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "ims_rcs"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mIsImsRegistered:Z

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRegListener :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mRegListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InCallApp.getInstance().getIMSManagerWrapper() :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mRegListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v4, v5}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    iput-boolean v7, p0, Lcom/android/incallui/InCallPresenter;->mIsImsRegistered:Z

    :cond_5
    const-string v4, "ims_crane"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "send nuber to crane"

    invoke-static {p0, v4, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/incallui/secrcs/RcsShareUI;->sendPhoneNumberBroadcast(Landroid/content/Context;Lcom/android/incallui/Call;)V

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBatteryMonitorRegistered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/incallui/InCallPresenter;->mBatteryMonitorRegistered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mBatteryMonitorRegistered:Z

    if-nez v4, :cond_7

    new-instance v4, Lcom/android/incallui/secrcs/BatteryMonitor;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/incallui/secrcs/BatteryMonitor;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBatteryMonitor:Lcom/android/incallui/secrcs/BatteryMonitor;

    iput-boolean v7, p0, Lcom/android/incallui/InCallPresenter;->mBatteryMonitorRegistered:Z

    new-instance v4, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    invoke-direct {v4, p0}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;-><init>(Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mRcsBroadcastReceiver:Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mRcsBroadcastReceiver:Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->register(Landroid/content/Context;)V

    :cond_7
    const-string v4, "support_tphone"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "Start CoverStateChanged when tphone mode"

    invoke-static {p0, v4, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, v7}, Lcom/android/incallui/InCallPresenter;->onCoverStateChanged(Z)V

    :cond_8
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    if-ne v4, v9, :cond_9

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v10, :cond_9

    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    invoke-static {v4}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(I)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "common_volte_in"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f0902d6

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_9
    invoke-static {v1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "DISCONNECTED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "ims_rcs"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mIsImsRegistered:Z

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deRegisterListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mRegListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InCallApp.getInstance().getIMSManagerWrapper() :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mRegListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v4, v5}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    iput-boolean v8, p0, Lcom/android/incallui/InCallPresenter;->mIsImsRegistered:Z

    :cond_a
    iget-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mBatteryMonitorRegistered:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBatteryMonitor:Lcom/android/incallui/secrcs/BatteryMonitor;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/incallui/secrcs/BatteryMonitor;->UnregisterBatteryMonitor(Landroid/content/Context;)V

    iput-boolean v8, p0, Lcom/android/incallui/InCallPresenter;->mBatteryMonitorRegistered:Z

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/incallui/secrcs/RcsShareUI;->disconnect(Landroid/content/Context;)V

    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mRcsBroadcastReceiver:Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->unregister(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CallType change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "support_tphone"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v4, v5, :cond_d

    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    invoke-static {v4}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(I)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "Downgrade for tphone"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v4, :cond_c

    const-string v4, "cancelNotification"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v4}, Lcom/android/incallui/StatusBarNotifier;->cancelInCall()V

    :cond_c
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    :cond_d
    :goto_3
    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "Finish in call UI for tphone"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    :cond_e
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    if-eq v4, v1, :cond_f

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_f

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->notifyCallTimeForLedCover()V

    :cond_f
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->dismissInCallMenu()V

    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    const/16 v5, 0xd

    if-eq v4, v5, :cond_10

    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    if-ne v4, v9, :cond_12

    :cond_10
    if-eq v1, v10, :cond_11

    const/16 v4, 0x8

    if-ne v1, v4, :cond_12

    :cond_11
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/SystemServiceUtils;->boostCPU(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4, v8}, Lcom/android/incallui/InCallActivity;->animateForShrinkBackground(Z)V

    :cond_12
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    :cond_13
    iput v2, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    iput v1, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v3}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v4

    if-eq v4, v11, :cond_4

    invoke-static {}, Lcom/android/incallui/util/SALogging;->getGeneralScreenId()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f090346

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_15
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    invoke-static {v4}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(I)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "Upgrade for tphone"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {p0, v8, v8}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    goto/16 :goto_3

    :catch_0
    move-exception v4

    goto/16 :goto_2
.end method

.method private setDisconnectCauseForMissingAccounts(Lcom/android/incallui/Call;)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v6, "selectPhoneAccountAccounts"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    invoke-virtual {v5}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v6, "tel"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v7, 0x7f09042e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7, v1, v1}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    :cond_2
    return-void

    :cond_3
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v7, 0x7f090037

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static declared-synchronized setInstance(Lcom/android/incallui/InCallPresenter;)V
    .locals 2
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    const-class v0, Lcom/android/incallui/InCallPresenter;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private shouldAttemptBlocking(Landroid/telecom/Call;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/incallui/util/TelecomCallUtil;->isEmergencyCall(Landroid/telecom/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Not attempting to block incoming emergency call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showSelectPhoneSimAccountDialog()V
    .locals 3

    const-string v1, "feature_multisim_preferred_sim"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "feature_multisim_adaptive_callback"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v1, 0x10808000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/util/SystemServiceUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/SelectSimActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/SelectPhoneSimAccountActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private showVideoEndScreen(Lcom/android/incallui/Call;)V
    .locals 3

    const-string v2, "showVideoEndScreen"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.samsung.incallui.action.START_CALLEND_ACTIVITY"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.incallui.action.START_CALLEND_ACTIVITY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2, v1}, Lcom/android/incallui/InCallActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private startAutoAnsTimer(I)V
    .locals 6

    const-wide/16 v2, 0xa

    const-string v0, "startAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->resetAutoAnsTimer()V

    if-gtz p1, :cond_1

    new-instance v0, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;-><init>(Lcom/android/incallui/InCallPresenter;JJ)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    :goto_0
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSystemSettingAllSoundOff()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;-><init>(Lcom/android/incallui/InCallPresenter;JJ)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_1
.end method

.method private startUi(Lcom/android/incallui/InCallPresenter$InCallState;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_2

    move v1, v3

    :goto_0
    const-string v5, "dcm_sda_support_feature"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    const/4 v5, 0x3

    if-eq v2, v5, :cond_0

    const/4 v5, 0x4

    if-ne v2, v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/android/incallui/util/InCallUtils;->sendNotificationToSmartDeviceAgent(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_1
    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v5}, Lcom/android/incallui/ProximitySensor;->isScreenReallyOff()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-virtual {v5}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v3, "Restarting InCallComponent to turn screen on for call waiting"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->finish()V

    :goto_1
    return v4

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4, v4}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    :cond_4
    :goto_2
    move v4, v3

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v4, p1, v5}, Lcom/android/incallui/StatusBarNotifier;->updateNotificationAndLaunchIncomingCallUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v4, p1, v5}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    goto :goto_2
.end method

.method public static toRotationAngle(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateActivity(Lcom/android/incallui/InCallActivity;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "setActivity isActivityStarted - return "

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v2, :cond_2

    const/4 v1, 0x1

    const-string v2, "UI Initialized"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallActivity;->setExcludeFromRecents(Z)V

    const-string v2, "ims_support_multimedia_caller_id"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "InCallPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setActivity call updatePhotoringState state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/InCallActivity;->updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/InCallPresenter;->maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v3, :cond_5

    const-string v2, "UI Initialized, but no calls left.  shut down."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v2}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallPresenter;->onCoverStateChanged(Z)V

    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallPresenter;->onCallListChange(Lcom/android/incallui/CallList;)V

    :cond_7
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    goto :goto_0

    :cond_8
    const-string v2, "UI Destroyed"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->initCoverStateControls()V

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-virtual {v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v2

    if-nez v2, :cond_9

    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    :cond_9
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->clearDisconnectedTimeoutEvent()Z

    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public acceptUpgradeRequest(ILandroid/content/Context;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " acceptUpgradeRequest videoState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v2, :cond_1

    invoke-static {p2}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    const-string v2, " acceptUpgradeRequest mCallList is empty so returning"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-direct {v1, p1}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0
.end method

.method public addCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addConfigurationListener(Lcom/android/incallui/InCallPresenter$ConfigurationListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mConfigurationListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mEmergencyModeListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    invoke-interface {p1, v0}, Lcom/android/incallui/InCallPresenter$InCallEventListener;->onFullscreenModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public addInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;Z)V

    return-void
.end method

.method public addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;Z)V
    .locals 3

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-virtual {v1, v2, p1}, Lcom/android/incallui/bike/BikeModeController;->addIncomingCallListenerComsumed(Ljava/util/List;Lcom/android/incallui/InCallPresenter$IncomingCallListener;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-interface {p1, v1, v2, v0}, Lcom/android/incallui/InCallPresenter$IncomingCallListener;->onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;Z)V

    return-void
.end method

.method public addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;Z)V
    .locals 3

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "addListener: Skip onStateChange during UI Locked"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_0
.end method

.method public addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 3

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListenersOfManager:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListenersOfManager:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "addListenerOfManager: Skip onStateChange during UI Locked"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_0
.end method

.method public addListenerToFirst(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 3

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "addListenerToFirst: Skip onStateChange during UI Locked"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_0
.end method

.method public addMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mMobileKeyboardListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnehandAnyScreenOnListener(Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandAnyScreenOnListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandModeListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public answerIncomingCall(Landroid/content/Context;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    invoke-virtual {p0, v3, v3}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    goto :goto_0
.end method

.method public answeringMode()V
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "answeringMode : isAutoAnswered() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/TelecomAdapter;->answerCall(Lcom/android/incallui/Call;)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnsweringMode()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnsweringMode(Z)V

    :cond_4
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->playGuidance()V

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->resetAutoAnsTimer()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f09008d

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public attemptFinishActivity()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hide in call UI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v3}, Lcom/android/incallui/ContactInfoCache;->clearCache()V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3, v1}, Lcom/android/incallui/InCallActivity;->setExcludeFromRecents(Z)V

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->finish()V

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->initCoverStateControls()V

    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mAccountSelectionCancelled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public bringToForeground(Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallPresenter;->showDialpadDuringPenMultiWindow(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->hasInCallUiFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    goto :goto_0
.end method

.method public cancelAccountSelection()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mAccountSelectionCancelled:Z

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public cancelAndUpdateNotification()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0}, Lcom/android/incallui/StatusBarNotifier;->cancelInCall()V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    :cond_0
    return-void
.end method

.method public checkAndChangeOrientation(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getRequestedOrientation()I

    move-result v1

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, p1}, Lcom/android/incallui/InCallActivity;->setRequestedOrientation(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public checkAndStartAM()V
    .locals 11

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "checkAndStartAM"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    move v3, v6

    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "callsettings_ring_duration"

    const/16 v10, 0xd

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "callsettings_answer_memo"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x0

    const-string v8, "feature_kdi"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v4

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "limit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "answerMemo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasActiveCall = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- all_sound_off == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSystemSettingAllSoundOff()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isVoicePartyCall = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isEmergencyMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasHoldCall = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    if-ne v0, v6, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkPhoneVibrateOrSilentMode()Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_2
    if-nez v3, :cond_5

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v8

    if-nez v8, :cond_5

    move v2, v6

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "answerMemo  canAMStart "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    const-string v6, "answerMemo  ON "

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-direct {p0, v5}, Lcom/android/incallui/InCallPresenter;->startAutoAnsTimer(I)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    move v3, v7

    goto/16 :goto_0

    :cond_5
    move v2, v7

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->memoryFullAnswerMemoNotification()V

    goto :goto_2
.end method

.method public clearFullscreen()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    return-void
.end method

.method public declineIncomingCall(Landroid/content/Context;)V
    .locals 5

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method declineUpgradeRequest()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->declineUpgradeRequest(Landroid/content/Context;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public declineUpgradeRequest(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-direct {v1, v3}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    :cond_2
    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0
.end method

.method public disconnectCallForVoiceParty()V
    .locals 4

    const/4 v1, 0x0

    const-string v2, "feature_kdi"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/incallui/CallList;->isLiveCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "hangUpOngoingCall: set DISCONNECTING voice memo"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->setState(I)V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    :cond_1
    return-void
.end method

.method public enableScreenTimeout(Z)V
    .locals 4

    const/16 v3, 0x80

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableScreenTimeout: value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v1, :cond_0

    const-string v1, "enableScreenTimeout: mInCallActivity is null."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public forceCancelNotification(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0, p1}, Lcom/android/incallui/StatusBarNotifier;->setBlockToUpdate(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0}, Lcom/android/incallui/StatusBarNotifier;->cancelInCall()V

    :cond_0
    return-void
.end method

.method public getActivity()Lcom/android/incallui/InCallActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    return-object v0
.end method

.method public getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    return-object v0
.end method

.method public getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    return-object v0
.end method

.method public getAudioMode()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method public getBikeModeController()Lcom/android/incallui/bike/BikeModeController;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    return-object v0
.end method

.method public getBluetoothProfileManager()Lcom/android/incallui/BluetoothProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

    return-object v0
.end method

.method public getCallCardFragmentVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->isVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallList()Lcom/android/incallui/CallList;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    return-object v0
.end method

.method public getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    return-object v0
.end method

.method public getCoverScreen()Lcom/android/incallui/accessory/CoverScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/accessory/CoverViewManager;->getCoverScreen()Lcom/android/incallui/accessory/CoverScreen;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCoverViewManager()Lcom/android/incallui/accessory/CoverViewManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    return-object v0
.end method

.method public getInCallActivityInfo()Landroid/os/Bundle;
    .locals 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a041e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v1, v9

    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a041f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v2, v9

    :goto_0
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a041c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v4, v9

    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a041d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v5, v9

    iget v9, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v2

    sub-int v6, v9, v4

    iget v9, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v1

    sub-int v7, v9, v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getInCallActivityInfo posX = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", posY = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v9, "android:activity.launchBounds"

    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v6, v2

    add-int v12, v7, v1

    invoke-direct {v10, v6, v7, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0

    :cond_0
    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0420

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v1, v9

    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0421

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v2, v9

    goto/16 :goto_0
.end method

.method public getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/InCallCameraManager;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallCameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInCallIntent(ZZ)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZLjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getInCallIntent(ZZLjava/lang/Class;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10840000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object v1, p3

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getTargetClass()Ljava/lang/Class;

    move-result-object v1

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string v2, "InCallActivity.show_dialpad"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const-string v2, "InCallActivity.new_outgoing_call"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeModeController;->getInCallStateConsumed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_0
.end method

.method public getKnoxCustomDisabledItems()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/InCallPresenter;->mKnoxCustomDisabledItems:I

    return v0
.end method

.method public getPhotoringBlocked()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    return v0
.end method

.method public getPhotoringContentPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringContentPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 3

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-nez p1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    :cond_1
    :goto_1
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_b

    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mBoundAndWaitingForOutgoingCall:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "feature_multisim_preferred_sim"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "feature_multisim_adaptive_callback"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_SIM_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "*31#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#31#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const-string v1, "delay_display_screen_with_prefix_number"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_7
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_9

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_a
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    goto/16 :goto_1

    :cond_b
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public getProximitySensor()Lcom/android/incallui/ProximitySensor;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    return-object v0
.end method

.method public getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    .locals 1

    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    return-object v0
.end method

.method public getSpaceBesideCallCard()F
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->getSpaceBesideCallCard()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTargetClass()Ljava/lang/Class;
    .locals 6

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/incallui/InCallPresenter;->mEmergencyCall:Z

    if-eqz v3, :cond_0

    const-string v3, "panic_mode_swa"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-class v3, Lcom/android/incallui/PinPanicDummyActivity;

    :goto_0
    return-object v3

    :cond_0
    const-class v3, Lcom/android/incallui/InCallActivity;

    goto :goto_0
.end method

.method public getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelecomManager:Landroid/telecom/TelecomManager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public getThemeColors()Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    return-object v0
.end method

.method public getVideoPopupService()Lcom/android/incallui/service/SecVideoPopupService;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/service/SecVideoPopupService;

    return-object v0
.end method

.method public handleAccountSelection(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/incallui/TelecomAdapter;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    :cond_0
    return-void
.end method

.method public handleCallKey()Z
    .locals 12

    const/16 v11, 0x8

    const/4 v10, 0x1

    const-string v8, "handleCallKey"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v7

    if-eqz v7, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "incomingCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "roaming_enhancement"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->isCallRoamingGuardDialogShowing()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return v10

    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v8, "handleCallKey : onAnswerWithWaitingCheck"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/incallui/AnswerUi;->isAlreadyAnimationProcessing()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "Skip handleCallKey when answer animation is running"

    invoke-static {p0, v8, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-static {v7}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    if-eqz v8, :cond_4

    const-string v8, "handleCallKey - mCallPopupService : onAnswerWithWaitingCheck"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v8}, Lcom/android/incallui/service/SecCallPopupService;->onAnswerWithWaitingCheck()V

    goto :goto_0

    :cond_4
    const-string v8, "handleCallKey : answerCall"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/incallui/TelecomAdapter;->answerCall(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Lcom/android/incallui/Call;->can(I)Z

    move-result v4

    invoke-virtual {v0, v11}, Lcom/android/incallui/Call;->can(I)Z

    move-result v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "activeCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", canMerge: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", canSwap: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    if-eqz v5, :cond_7

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/TelecomAdapter;->swap(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6, v10}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "heldCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", canHold: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    if-ne v8, v11, :cond_0

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public handleCshInfo(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public handleError(I)V
    .locals 0

    return-void
.end method

.method public handleIncommingIMandFT(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public handleInvitation(ZLandroid/content/Intent;)V
    .locals 4

    const-string v1, "notify user make notification"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/secrcs/RcsShareUI;->notifyUser(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getRcsInvitation()Lcom/android/incallui/secrcs/RcsInvitation;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/secrcs/RcsInvitation;->updateState(Landroid/content/Context;Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public handleRcsAction(Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleRcsAction from Presenter :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    const-string v5, "ims_rcs"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "com.samsung.rcs.intent.action.CONTACTS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->getContactsPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sec.android.app.contacts.PhoneBookTopMenuActivity"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "EXTRA_INTENT"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "com.samsung.rcs.intent.action.ADD_CALL"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/TelecomAdapter;->addCall()V

    goto :goto_0

    :cond_2
    const-string v5, "com.samsung.rcs.intent.action.MANAGE_CONFERENCE_CALL"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.samsung.rcs.intent.action.NOTES"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEMO_CREATE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v5, "com.samsung.rcs.intent.action.SIM_SERVICES"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.stk.start_main_activity"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v5, "com.samsung.rcs.intent.action.BLUETOOTH_HANDSET"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/UiAdapter;->getCallButtonPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->toggleBluetooth()V

    goto :goto_0

    :cond_5
    const-string v5, "com.samsung.rcs.intent.action.INIT_SPEAKER_ON"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v5

    if-eq v5, v8, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/incallui/InCallPresenter;->setAudioMode(I)V

    goto :goto_0

    :cond_6
    const-string v5, "com.samsung.rcs.intent.action.UPDATE_PROXIMITY"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    goto/16 :goto_0

    :cond_7
    const-string v5, "com.samsung.rcs.intent.action.ACTION_RCS_SPEAKER_OFF"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v5

    if-ne v5, v8, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/android/incallui/InCallPresenter;->setAudioMode(I)V

    goto/16 :goto_0

    :cond_8
    const-string v5, "com.samsung.rcs.intent.action.SPEAKER_ON"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "com.samsung.rcs.intent.action.SPEAKER_OFF"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->toggleSpeakerphone()V

    goto/16 :goto_0

    :cond_a
    const-string v5, "com.samsung.rcs.intent.action.ACTION_RCS_CALL_HOLD"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, " Hold request received"

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v5, "com.samsung.rcs.intent.action.MUTE_ON"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    goto/16 :goto_0

    :cond_c
    const-string v5, "com.samsung.rcs.intent.action.MUTE_OFF"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    goto/16 :goto_0

    :cond_d
    const-string v5, "com.samsung.rcs.intent.action.END_CALL"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/incallui/InCallPresenter;->hangUpOngoingCall(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_e
    const-string v5, "com.samsung.rcs.intent.action.ACTION_LAUNCH_MINI_MODE_CALL_VIEW"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v4

    const-string v5, "action ACTION_LAUNCH_MINI_MODE_CALL_VIEW received from RCS "

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v4, :cond_0

    invoke-virtual {v4, v9}, Lcom/android/incallui/ProximitySensor;->setFromRcsShare(Z)V

    invoke-virtual {v4}, Lcom/android/incallui/ProximitySensor;->forceUpdateProximitySensorMode()V

    goto/16 :goto_0

    :cond_f
    const-string v5, "com.samsung.rcs.intent.action.ACTION_HIDE_MINI_MODE_CALL_VIEW"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v4

    const-string v5, "action ACTION_HIDE_MINI_MODE_CALL_VIEW received from RCS "

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v4, :cond_0

    invoke-virtual {v4, v7}, Lcom/android/incallui/ProximitySensor;->setFromRcsShare(Z)V

    invoke-virtual {v4}, Lcom/android/incallui/ProximitySensor;->forceUpdateProximitySensorMode()V

    goto/16 :goto_0
.end method

.method public handoverFailNotification(Lcom/android/incallui/Call;)V
    .locals 7

    const/4 v6, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "handoverFailNotification()"

    invoke-static {p0, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isAvailableEpdg()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDeviceOnWiFi()Z

    move-result v3

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handoverFailNotification() isWiFiOn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", canEpdg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isEpdg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isVideoCall:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v4

    if-nez v4, :cond_0

    const v4, 0x7f0902e2

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0905a9

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_0
.end method

.method public hangUpOngoingCall(Landroid/content/Context;)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->isLiveCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "hangUpOngoingCall: set DISCONNECTING"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setState(I)V

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public hasInCallUiFocus()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideVideoPopup()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/service/SecVideoPopupService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/service/SecVideoPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecVideoPopupService;->hidePopup()V

    :cond_0
    return-void
.end method

.method public isActivityPreviouslyStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    return v0
.end method

.method public isActivityStarted()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->isFinishing()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "isActivityStarted - mInCallActivity = null"

    invoke-static {p0, v3, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    move v1, v2

    goto :goto_0
.end method

.method public isBoundAndWaitingForOutgoingCall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mBoundAndWaitingForOutgoingCall:Z

    return v0
.end method

.method public isChangingConfigurations()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    return v0
.end method

.method public isDialpadVisible()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFullscreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    return v0
.end method

.method public isServiceBound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    return v0
.end method

.method public isShowingInCallUi()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartPopupServiceWhenMakeCallFromOtherApp()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v3, "support_tphone"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "do not start popup service when tphone mode"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Popup service is not supported in LGT Model."

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/InCallUISystemDB;->isFlightMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Popup service is not supported in EmergencyMode."

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStartPopupServiceWhenMakeCallFromOtherApp(Lcom/android/incallui/Call;)Z

    move-result v2

    goto :goto_0
.end method

.method public maybeStartRevealAnimation(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public memoryFullAnswerMemoNotification()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0}, Lcom/android/incallui/StatusBarNotifier;->memoryFullAnswerMemoNotification()V

    return-void
.end method

.method public notifyFullscreenModeChange(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter$InCallEventListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/InCallPresenter$InCallEventListener;->onFullscreenModeChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifySecondaryCallerInfoVisibilityChanged(ZI)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter$InCallEventListener;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallPresenter$InCallEventListener;->onSecondaryCallerInfoVisibilityChanged(ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method onActivityStarted()V
    .locals 1

    const-string v0, "onActivityStarted"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method onActivityStopped()V
    .locals 1

    const-string v0, "onActivityStopped"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onBringToForeground(Z)V
    .locals 1

    const-string v0, "Bringing UI to foreground."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->onCallAdded(Landroid/telecom/Call;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallPresenter;->setBoundAndWaitingForOutgoingCall(ZLandroid/telecom/PhoneAccountHandle;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallCallback:Landroid/telecom/Call$Callback;

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    const-string v0, "multiend_point"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/remotecall/utils/RemoteCallUtils;->updateRemoteCallUI()V

    :cond_0
    return-void
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 22

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "callList"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v19, "ims_rcs"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v19

    if-eqz v19, :cond_0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onCallListChange state:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getState()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v13, Landroid/content/Intent;

    const-string v19, "com.samsung.rcs.contentsharing.action.DISCONNECT_SHARE"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/InCallPresenter;->mAwaitingCallListUpdate:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v8

    const-string v19, "vzw_volte_ui"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->updateVZWLTEVideoCallMenuShow()V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v19

    if-nez v19, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    if-eqz v19, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Lcom/android/incallui/AnswerUi;->isAnswerAnimationRunning()Z

    move-result v19

    if-eqz v19, :cond_4

    const-string v19, "perf - Skip onCallListChange when answer animation is running"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/InCallActivity;->isShrinkBackgroundRunning()Z

    move-result v19

    if-eqz v19, :cond_5

    const-string v19, "perf - Skip onCallListChange when scale animation is running"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v9

    invoke-static {v8}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-static {v8}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v5

    if-eqz v9, :cond_14

    invoke-virtual {v9}, Lcom/android/incallui/Call;->getState()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_14

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    invoke-static {v5, v0}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBar(Landroid/app/Activity;Z)V

    :cond_7
    const-string v19, "feature_dcm"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v19

    if-eqz v19, :cond_b

    if-eqz v9, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v19

    invoke-virtual {v9}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v10

    if-eqz v10, :cond_b

    iget-boolean v0, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    iget-boolean v0, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isChangedHideStatus:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    :cond_8
    invoke-virtual {v9}, Lcom/android/incallui/Call;->getState()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v19

    if-eqz v19, :cond_a

    :cond_9
    invoke-virtual {v9}, Lcom/android/incallui/Call;->getState()I

    move-result v19

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    invoke-virtual {v9}, Lcom/android/incallui/Call;->getState()I

    move-result v19

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    :cond_a
    const-string v19, "NTT DOCOMO : unregisterContentObserver "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mHideStatusObserver:Landroid/database/ContentObserver;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isChangedHideStatus:Z

    :cond_b
    const-string v19, "panic_mode_swa"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v15

    if-eqz v15, :cond_c

    invoke-virtual {v15}, Lcom/android/incallui/Call;->isEmergencyCall()Z

    move-result v19

    if-eqz v19, :cond_c

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/InCallPresenter;->mEmergencyCall:Z

    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v17, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onCallListChange oldState= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " newState="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v16

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onCallListChange newState changed to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->postAccessibilityEventForUpdateScreen()V

    :cond_d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Phone switching state: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " -> "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    const-string v19, "UI"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/util/InCallUtils;->isEcholocateEnabled(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_15

    sget-object v19, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_15

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v19

    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getEcholocatePhoneNumber()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->CALL_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    invoke-virtual/range {v21 .. v21}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->ordinal()I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/incallui/TelecomAdapter;->senduiCallState(Ljava/lang/String;I)V

    :cond_e
    :goto_2
    const-string v19, "lock_screen_during_call"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_12

    const/4 v7, 0x0

    sget-object v19, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_f

    sget-object v19, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_10

    :cond_f
    sget-object v19, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_11

    sget-object v19, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_11

    :cond_10
    const/4 v7, 0x1

    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/incallui/InCallPresenter;->sendLockScreenEvent(Z)V

    :cond_12
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v19

    if-eqz v19, :cond_16

    const-string v19, "Skip onCallListChange during UI Locked"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_1

    sget-object v19, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_13

    sget-object v19, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/incallui/InCallPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    goto/16 :goto_0

    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_1

    :cond_15
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getState()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/util/InCallUtils;->sendEcholocateUIState(I)V

    goto :goto_2

    :cond_16
    const-string v19, "multiend_point"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v19

    if-nez v19, :cond_17

    sget-object v19, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_17

    const-string v19, "Launching InCall UI when state From NO_CALL to INCALL"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    :cond_17
    if-eqz v8, :cond_18

    sget-object v19, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_18

    sget-object v19, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_18

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v19

    if-eqz v19, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v19

    if-nez v19, :cond_18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    move-object/from16 v19, v0

    if-eqz v19, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    move/from16 v19, v0

    if-eqz v19, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/util/SystemServiceUtils;->pokeUserActivity(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/accessory/CoverViewManager;->updateCoverScreenTimeOut()V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->initCoverStateControls()V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/incallui/InCallPresenter$InCallStateListener;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Notify "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " of state "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/incallui/InCallPresenter$InCallState;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v14, v0, v1, v2}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_3

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mListenersOfManager:Ljava/util/Set;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/incallui/InCallPresenter$InCallStateListener;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Notify "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " of state "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/incallui/InCallPresenter$InCallState;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v14, v0, v1, v2}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_4

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v19

    if-eqz v19, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v19

    if-nez v19, :cond_1d

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v19

    if-eqz v19, :cond_29

    :cond_1d
    const/4 v12, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/incallui/InCallActivity;->dismissKeyguard(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/InCallActivity;->updateKeepScreenOnFlag()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v19

    if-eqz v19, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v19, v0

    sget-object v21, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2a

    const/16 v19, 0x1

    :goto_6
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->updateAppSwitchSystemKeyEvent(Z)V

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCarModeOn()Z

    move-result v19

    if-nez v19, :cond_1e

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isLostPhoneLock()Z

    move-result v19

    if-nez v19, :cond_1e

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOtaMode()Z

    move-result v19

    if-nez v19, :cond_1e

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeMode()Z

    move-result v19

    if-nez v19, :cond_1e

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v19

    if-nez v19, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/InCallActivity;->setStatusBar(Z)V

    :cond_1e
    const-string v19, "ims_rcs"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1f

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v19

    if-nez v19, :cond_1f

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v19

    if-eqz v19, :cond_1f

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/secrcs/RcsShareUI;->isShareActive(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_1f

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/incallui/secrcs/RcsShareUI;->resumeShare(Landroid/content/Context;Lcom/android/incallui/Call;)V

    :cond_1f
    const-string v19, "ims_rcs"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_20

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v19, v0

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/InCallActivity;->getRcsInvitation()Lcom/android/incallui/secrcs/RcsInvitation;

    move-result-object v19

    if-eqz v19, :cond_20

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/InCallActivity;->getRcsInvitation()Lcom/android/incallui/secrcs/RcsInvitation;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/android/incallui/secrcs/RcsInvitation;->updateState(Landroid/content/Context;Lcom/android/incallui/Call;)V

    :cond_20
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/InCallPresenter;->processOnCallListChange(Lcom/android/incallui/CallList;)V

    const-string v19, "auto_call_test"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_21

    invoke-static {}, Lcom/android/incallui/util/VTAutoTestProxy;->getInstance()Lcom/android/incallui/util/VTAutoTestProxy;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/util/VTAutoTestProxy;->handleMessage(I)V

    :cond_21
    const-string v19, "vzw_volte_ui"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_22

    if-eqz v8, :cond_22

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getState()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_22

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "tty notification on active call, is ACTIVE isActivityStarted() : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", InCallUISystemDB.getTtyNotification() : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtyNotification()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v19

    if-eqz v19, :cond_22

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtyNotification()Z

    move-result v19

    if-eqz v19, :cond_22

    const-string v19, "tty notification on active call, show!"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/InCallActivity;->onTtyNotification(Z)V

    :cond_22
    const-string v19, "automatic_answering_machine"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_24

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v19

    if-eqz v19, :cond_23

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v19

    if-nez v19, :cond_23

    if-eqz v8, :cond_23

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getState()I

    move-result v19

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_23

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    new-instance v19, Lcom/android/incallui/InCallPresenter$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallPresenter$7;-><init>(Lcom/android/incallui/InCallPresenter;)V

    const-wide/16 v20, 0x4b0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v11, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_23
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v19

    if-nez v19, :cond_24

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v19

    if-nez v19, :cond_24

    if-eqz v8, :cond_24

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getState()I

    move-result v19

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-object/from16 v19, v0

    if-eqz v19, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-object/from16 v19, v0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->stopService(Landroid/content/Context;)V

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    :cond_24
    const-string v19, "smart_auto_answering"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_25

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v19

    if-eqz v19, :cond_25

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v19

    if-nez v19, :cond_25

    if-eqz v8, :cond_25

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getState()I

    move-result v19

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_25

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    :cond_25
    sget v19, Lcom/android/incallui/service/vt/VideoCallCapability;->HANDOVER_NOTIFICATION:I

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v19

    if-eqz v19, :cond_1

    const/16 v18, 0x0

    if-eqz v8, :cond_28

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->getHandoverNotificationType()Ljava/lang/String;

    move-result-object v19

    const-string v20, "VZW"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_26

    sget-object v19, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2b

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v19

    if-eqz v19, :cond_2b

    const/16 v18, 0x1

    :cond_26
    :goto_7
    if-nez v18, :cond_27

    sget-object v19, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2c

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v19

    if-eqz v19, :cond_2c

    :cond_27
    const/16 v18, 0x1

    :cond_28
    :goto_8
    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/incallui/InCallPresenter;->handoverFailNotification(Lcom/android/incallui/Call;)V

    goto/16 :goto_0

    :cond_29
    const/4 v12, 0x0

    goto/16 :goto_5

    :cond_2a
    const/16 v19, 0x0

    goto/16 :goto_6

    :cond_2b
    const/16 v18, 0x0

    goto :goto_7

    :cond_2c
    const/16 v18, 0x0

    goto :goto_8
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->onCallRemoved(Landroid/telecom/Call;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallCallback:Landroid/telecom/Call$Callback;

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter$CanAddCallListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/InCallPresenter$CanAddCallListener;->onCanAddCallChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onChangeToVideoRequest(Lcom/android/incallui/Call;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangeToVideoRequest call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " video state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/incallui/service/vt/VideoCallControl;->shouldAcceptRequest(II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/incallui/Call;->setRequestedVideoState(I)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->hideDialpadForModifyCall()V

    goto :goto_0
.end method

.method public onCircularRevealComplete(Landroid/app/FragmentManager;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->showCallCardFragment(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/CircularRevealFragment;->endCircularReveal(Landroid/app/FragmentManager;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChange(I)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChange: orientation= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mConfigurationListener:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter$ConfigurationListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/InCallPresenter$ConfigurationListener;->onConfigurationChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCoverStateChanged(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverStateChanged: previous = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_1

    const-string v1, "onCoverStateChanged: NO_CALLS"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupIncomingCall_coverClosed()V

    :goto_1
    const-string v1, "support_tphone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneRelaxMode()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_2
    const-string v1, "onCoverStateChanged: tphone mode"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_d

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/motion/CallSContextMotion;->startPutDownListening(Landroid/content/Context;)V

    :cond_4
    :goto_3
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->dismissInCallMenu()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p1}, Lcom/android/incallui/util/VoiceCallAppLogging;->isCoverClosed(Z)V

    goto :goto_1

    :cond_6
    invoke-static {p1}, Lcom/android/incallui/util/VideoCallAppLogging;->isCoverClosed(Z)V

    goto :goto_1

    :cond_7
    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    if-ne v1, p1, :cond_8

    const-string v1, "onCoverStateChanged: mIsCoverClosed == isClosed"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string v2, "sem_statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/SemStatusBarManager;->setIndicatorBgColor(I)V

    :cond_9
    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    if-nez v1, :cond_a

    const-string v1, "onCoverStateChanged: create CoverView"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v1, Lcom/android/incallui/accessory/CoverViewManager;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-direct {v1, v2}, Lcom/android/incallui/accessory/CoverViewManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    :cond_a
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    invoke-virtual {v1, p1}, Lcom/android/incallui/accessory/CoverViewManager;->onCoverStateChanged(Z)V

    :cond_b
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    goto/16 :goto_2

    :cond_c
    const-string v1, "onCoverStateChanged: can\'t start cover"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz p1, :cond_3

    invoke-virtual {p0, v4, v4}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    goto/16 :goto_2

    :cond_d
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/motion/CallSContextMotion;->stopPutDownListening(Landroid/content/Context;)V

    goto/16 :goto_3
.end method

.method public onDeviceOrientationChange(I)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceOrientationChange: orientation= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->notifyCallsOfDeviceRotation(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter$InCallOrientationListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/InCallPresenter$InCallOrientationListener;->onDeviceOrientationChanged(I)V

    goto :goto_1

    :cond_0
    const-string v1, "onDeviceOrientationChange: CallList is null."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 8

    const/4 v7, 0x0

    const-string v4, "InCallPresenter : onDisconnect"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/PrivatePolicy;->onDisconnect()V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->clearDigitsInKeypad()V

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->hideDialpadForDisconnect()V

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->dismissDialogForDisconnect()V

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->resetTtyNotification()V

    sget-boolean v4, Lcom/android/incallui/service/vt/VideoCallConfig;->OVERLAY_POPUP_PLAY:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->hideVideoPopup()V

    :cond_1
    const-string v4, "multiend_point"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/remotecall/utils/RemoteCallUtils;->updateRemoteCallUI()V

    :cond_2
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->resetAutoAnsTimer()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopGuidance()V

    :cond_3
    const-string v4, "handle_sip_error_code"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p1}, Lcom/android/incallui/util/IMSErrorUtils;->handleDisconnectCause(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->showVideoEndScreen(Lcom/android/incallui/Call;)V

    :cond_4
    const-string v4, "ims_support_multimedia_caller_id"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->PHOTORING_NONE:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    iget v6, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    invoke-virtual {v4, v5, v6}, Lcom/android/incallui/InCallActivity;->updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V

    :cond_5
    const-string v4, "rich_call_screen_cmcc"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/android/incallui/richscreen/RichCallScreenUtils;

    invoke-direct {v1}, Lcom/android/incallui/richscreen/RichCallScreenUtils;-><init>()V

    const-string v4, "1140020000"

    invoke-virtual {v1, v2, v4}, Lcom/android/incallui/richscreen/RichCallScreenUtils;->startDownloadRichScrnObj(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallPresenter;->onCallListChange(Lcom/android/incallui/CallList;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4, v7}, Lcom/android/incallui/InCallActivity;->dismissKeyguard(Z)V

    :cond_7
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->removeCoreAppsContact(Ljava/lang/String;)V

    const-string v4, "auto_call_test"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/android/incallui/util/VTAutoTestProxy;->getInstance()Lcom/android/incallui/util/VTAutoTestProxy;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/incallui/util/VTAutoTestProxy;->handleMessage(I)V

    :cond_8
    const-string v4, "feature_ctc"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isEmergencyCall()Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.EMERGENCY_CALL_END"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "send Broadcast: com.samsung.intent.action.EMERGENCY_CALL_END"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/incallui/InCallApp;->sendBroadcast(Landroid/content/Intent;)V

    :cond_9
    invoke-static {v7}, Lcom/android/incallui/util/InCallUtils;->setMergeAfterAnswer(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-nez v4, :cond_a

    invoke-static {v7}, Lcom/android/incallui/util/SoundEffect;->turnOnExtraVol(Z)V

    :cond_a
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-nez v4, :cond_b

    const-string v4, "clearDisplayFlags for epdg"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/EpdgManager;->clearDisplayFlags()V

    :cond_b
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/incallui/util/AppLogging;->insertLogOnCallDisconnect(Landroid/content/Context;Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->clearFullscreen()V

    return-void
.end method

.method public onDismissDialog()V
    .locals 2

    const-string v0, "Dialog dismissed"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    :cond_0
    return-void
.end method

.method public onDowngradeToAudio(Lcom/android/incallui/Call;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDowngradeToAudio call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/PrivatePolicy;->clearForModifyCall()V

    :cond_0
    return-void
.end method

.method public onDowngradeToAudioRequest(Lcom/android/incallui/Call;I)V
    .locals 6

    const v5, 0x7f0902d3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDowngradeToAudioRequest call = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " video state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    if-nez p2, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->isChangedToTwoWayVideo()Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0xd

    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/SecCall;->setChangedToTwoWayVideo(Z)V

    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isDialpadVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->hideDialpadForModifyCall()V

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    invoke-static {v3, p2}, Lcom/android/incallui/service/vt/VideoCallControl;->shouldAcceptRequest(II)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {p2}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    goto :goto_0

    :cond_3
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    goto :goto_1

    :cond_4
    const-string v3, "att_volte_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "mpcs_volte_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_2

    :cond_6
    const-string v3, "tmo_volte_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    :cond_7
    if-nez v1, :cond_8

    const-string v1, "Caller"

    :cond_8
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v4, 0x7f0902d4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_2

    :cond_a
    invoke-virtual {p1, p2}, Lcom/android/incallui/Call;->setRequestedVideoState(I)V

    goto/16 :goto_0
.end method

.method public onEmergencyModeChange(I)V
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEmergencyModeChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mEmergencyModeListener:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter$EmergencyModeListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/InCallPresenter$EmergencyModeListener;->onEmergencyModeChange(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallPresenter;->onCoverStateChanged(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    :cond_1
    return-void
.end method

.method public onHmtStateChanged(Z)V
    .locals 6

    const/4 v5, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHmtStateChanged isDocked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_HMT_DISCONNECTED hasIncomingCall : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isVideoCall : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getTargetClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZLjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getConnectingOrConnectedCallCount()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v12}, Lcom/android/incallui/bike/BikeModeController;->onIncomingCallConsumed(Lcom/android/incallui/Call;I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_CDMA:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_GSM:Z

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->dismissDataUsageLimitDialog()V

    :cond_3
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "support_sync_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v7, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.kddi.android.evc.SettingsProvider/system"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_4
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "setting_use_synccall"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_5

    const/4 v9, 0x1

    goto :goto_1

    :cond_5
    const-string v1, "setting_use_incoming_show_pu"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_6
    if-eqz v9, :cond_7

    if-eqz v8, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->checkAndStartAM()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_8
    :goto_2
    const-string v1, "feature_multisim_preferred_sim"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "feature_multisim_adaptive_callback"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    invoke-static {}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->dismissDialog()V

    invoke-static {}, Lcom/android/incallui/SelectSimActivity;->dismissDialogFromOutside()V

    :cond_a
    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/service/EcidClient;->newIncoming(Lcom/android/incallui/Call;)V

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingCall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    if-nez v1, :cond_d

    new-instance v1, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-direct {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->startService(Landroid/content/Context;)V

    const-string v1, "startService about AnswerMemoRecorder"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    invoke-interface {v11, v14, v2, v0}, Lcom/android/incallui/InCallPresenter$IncomingCallListener;->onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    goto :goto_3

    :catch_0
    move-exception v15

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem getting content resolver or performing kddi evc query."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    if-eqz v7, :cond_e

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_e
    throw v1

    :cond_f
    const-string v1, "auto_call_test"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/android/incallui/util/VTAutoTestProxy;->getInstance()Lcom/android/incallui/util/VTAutoTestProxy;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VTAutoTestProxy;->handleMessage(I)V

    :cond_10
    const-string v1, "UI"

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isEcholocateEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz p1, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->sendEcholocateUIState(I)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    goto/16 :goto_0
.end method

.method public onMobileKeyboardChanged()V
    .locals 3

    const-string v1, "onMobileKeyboardChanged()"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mMobileKeyboardListener:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;

    invoke-interface {v0}, Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;->onMobileKeyboardChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOnehandAnyScreenOnChanged()V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOnehandAnyScreenOnChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getOneHandAnyScreenEnabled()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mOnehandAnyScreenOnListener:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;

    invoke-interface {v0}, Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;->onOnehandAnyScreenOnChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOnehandModeChanged()V
    .locals 3

    const-string v1, "onOnehandModeChanged()"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mOnehandModeListener:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter$OnehandModeListener;

    invoke-interface {v0}, Lcom/android/incallui/InCallPresenter$OnehandModeListener;->onOnehandModeChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPostDialCharPause(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->showPostCharPauseDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPostDialCharPauseComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPostDialCharWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedMessageFromTelecom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedMessageFromTelecom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/android/incallui/util/VideoCallUtils;->onReceivedMessageFromTelecom(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "onIncomingCallAnswered"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/AnswerUi;->isAnswerAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/util/SystemServiceUtils;->boostCPU(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/AnswerUi;->animateForAnswerCall(I)V

    goto :goto_0
.end method

.method public onServiceBind()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    return-void
.end method

.method public onServiceUnbind()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/InCallPresenter;->setBoundAndWaitingForOutgoingCall(ZLandroid/telecom/PhoneAccountHandle;)V

    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    return-void
.end method

.method public onShrinkAnimationComplete()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mAwaitingCallListUpdate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->onCallListChange(Lcom/android/incallui/CallList;)V

    :cond_0
    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onUiShowing(Z)V
    .locals 6

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2, v4, v5}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v2, p1}, Lcom/android/incallui/ProximitySensor;->onInCallShowing(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incalluibind/ObjectFactory;->getUiReadyBroadcastIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v4, "com.android.incallui.intent.extra.FIRST_TIME_SHOWN"

    iget-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_4

    const-string v2, "Sending sticky broadcast: "

    invoke-static {p0, v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_5

    iput-boolean v3, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    :goto_2
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$InCallUiListener;

    invoke-interface {v1, p1}, Lcom/android/incallui/InCallPresenter$InCallUiListener;->onUiShowing(Z)V

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const-string v2, "Removing sticky broadcast: "

    invoke-static {p0, v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->updateIsChangingConfigurations()V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public onUpgradeToVideoFail(ILcom/android/incallui/Call;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpgradeToVideoFail call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/PrivatePolicy;->clearForModifyCall()V

    :cond_0
    return-void
.end method

.method public onUpgradeToVideoRequest(Lcom/android/incallui/Call;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpgradeToVideoRequest call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " video state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/incallui/service/vt/VideoCallControl;->shouldRejectRequest(II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/incallui/Call;->setRequestedVideoState(I)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->hideDialpadForModifyCall()V

    :cond_5
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/incallui/PrivatePolicy;->removeStatus(I)V

    goto :goto_0
.end method

.method public onUpgradeToVideoSuccess(Lcom/android/incallui/Call;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgradeToVideoSuccess call = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->stopRecord()V

    :cond_0
    return-void
.end method

.method protected postAccessibilityEventForUpdateScreen()V
    .locals 2

    const-string v1, "postAccessibilityEventForUpdateScreen"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isForegroundActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->postAccessibilityEventForUpdateScreen()V

    goto :goto_0
.end method

.method public refreshListeners()V
    .locals 5

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter$InCallStateListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter$InCallState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mListenersOfManager:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter$InCallStateListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter$InCallState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public removeCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeConfigurationListener(Lcom/android/incallui/InCallPresenter$ConfigurationListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mConfigurationListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mEmergencyModeListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListenersOfManager:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mMobileKeyboardListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeMsgCheckUILocked()V
    .locals 3

    const/16 v2, 0x3ed

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "removeMsgCheckUILocked"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public removeOnehandAnyScreenOnListener(Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandAnyScreenOnListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandModeListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeRejectCallNotification()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method resetAutoAnsTimer()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    if-eqz v0, :cond_0

    const-string v0, "resetAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    :cond_0
    return-void
.end method

.method public sendLockScreenEvent()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->sendLockScreenEvent(Z)V

    return-void
.end method

.method public sendLockScreenEvent(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendLockScreenEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lock_screen_during_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->sendLockScreenEvent(Z)V

    :cond_0
    return-void
.end method

.method public sendMsgCallListChange()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->sendMsgCallListChange(I)V

    return-void
.end method

.method public sendMsgCallListChange(I)V
    .locals 4

    const/16 v1, 0x3ea

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sendMsgCallListChange"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public sendMsgCheckUILocked()V
    .locals 5

    const/16 v4, 0x3ed

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sendMsgCheckUILocked"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public setActivity(Lcom/android/incallui/InCallActivity;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "registerActivity cannot be called with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eq v0, p1, :cond_1

    const-string v0, "Setting a second activity before destroying the first."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->forceFinish()V

    :cond_1
    const-string v0, "feature_dcm"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0, v2, v9}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter;->DCM_APP_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "NTT DOCOMO : cursor != null && cursor count != 0 "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    if-ne v0, v10, :cond_2

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v10, v8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :goto_0
    iget-boolean v0, v8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    if-eqz v0, :cond_3

    const-string v0, "NTT DOCOMO : registerContentObserver "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter;->DCM_APP_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mHideStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v10, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->updateActivity(Lcom/android/incallui/InCallActivity;)V

    return-void

    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "NTT DOCOMO : cursor count=0 "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_5
    const-string v0, "NTT DOCOMO : cursor=null "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAnsMemoRecordMgr(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    return-void
.end method

.method public setAudioMode(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending new Audio Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    return-void
.end method

.method public setBlockToUpdateNotification(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0, p1}, Lcom/android/incallui/StatusBarNotifier;->setBlockToUpdate(Z)V

    :cond_0
    return-void
.end method

.method public setBoundAndWaitingForOutgoingCall(ZLandroid/telecom/PhoneAccountHandle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBoundAndWaitingForOutgoingCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mBoundAndWaitingForOutgoingCall:Z

    iput-object p2, p0, Lcom/android/incallui/InCallPresenter;->mPendingPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    :cond_0
    return-void
.end method

.method public setCallPopupService(Lcom/android/incallui/service/SecCallPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/InCallPresenter;->setFullScreen(ZZ)V

    return-void
.end method

.method public setFullScreen(ZZ)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const-string v0, "setFullScreen FullScreenMode is unavailable"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fullscreen(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    if-eq v0, p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InCallPresenter - setFullScreen : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fullscreen(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->notifyFullscreenModeChange(Z)V

    :cond_1
    return-void
.end method

.method public setInCallAllowsOrientationChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    const-string v0, "mInCallActivity is null. Can\'t set requested orientation."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->NO_SENSOR_SCREEN_ORIENTATION:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->setRequestedOrientation(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->enableInCallOrientationEventListener(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->FULL_SENSOR_SCREEN_ORIENTATION:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->setRequestedOrientation(I)V

    goto :goto_1
.end method

.method public setInCallState(Lcom/android/incallui/InCallPresenter$InCallState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-void
.end method

.method public setPhotoringBlocked(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    :cond_1
    return-void
.end method

.method public setRecordMgr(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    return-void
.end method

.method public setSubNumberDialog(Lcom/android/incallui/util/SecSubNumberDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mSubNumberDialog:Lcom/android/incallui/util/SecSubNumberDialogActivity;

    return-void
.end method

.method public setThemeColors()V
    .locals 5

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/InCallPresenter;->getColorsFromCall(Lcom/android/incallui/Call;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e0010

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0f01e6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    const v3, 0x7f090044

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3, v2}, Lcom/android/incallui/InCallActivity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    iget v0, v3, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    goto :goto_1
.end method

.method public setUp(Landroid/content/Context;Lcom/android/incallui/CallList;Lcom/android/incallui/AudioModeProvider;Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/ProximitySensor;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v4, "perf - setUp()"

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    if-eqz v4, :cond_3

    const-string v4, "New service connection replacing existing one."

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    if-ne p1, v4, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-ne p2, v4, :cond_1

    move v4, v5

    :goto_1
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    if-ne p3, v4, :cond_2

    :goto_2
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    :goto_3
    return-void

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    const-string v4, "yellowpage_callerid_info"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p1}, Lcom/android/incallui/secutils/YellowPageCallerid;->initContactService(Landroid/content/Context;)V

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-nez v4, :cond_5

    iput-object p4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    :cond_5
    iput-object p3, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-nez v4, :cond_6

    iput-object p6, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    :cond_6
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    if-nez v4, :cond_7

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v4, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->addListenerToFirst(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    :cond_7
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallPresenter;->addInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)V

    iput-object p2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    iput-boolean v5, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v4, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/incallui/service/vt/VideoCallManager;->setUp(Lcom/android/incallui/InCallPresenter;)V

    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/incallui/VideoPauseController;->setUp(Lcom/android/incallui/InCallPresenter;)V

    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->addSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V

    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x20

    invoke-virtual {v4, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_e

    new-instance v4, Lcom/android/incallui/InCallPresenter$InCallReceiver;

    invoke-direct {v4, p0, v8}, Lcom/android/incallui/InCallPresenter$InCallReceiver;-><init>(Lcom/android/incallui/InCallPresenter;Lcom/android/incallui/InCallPresenter$1;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "support_tphone"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "com.skt.prod.phone.action.FINISH_INCALLUI"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_8
    const-string v4, "support_safetycare"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_9
    const-string v4, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "ims_ps_barring"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "com.android.intent.action.PSBARRED_FOR_VOLTE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_a
    sget-boolean v4, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_CDMA:Z

    if-nez v4, :cond_b

    sget-boolean v4, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_GSM:Z

    if-eqz v4, :cond_c

    :cond_b
    const-string v4, "com.samsung.intent.action.DATAUSAGE_REACH_TO_WARNING"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.android.intent.action.VIDEO_DATAUSAGE_REACH_TO_LIMIT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_c
    const-string v4, "support_bluetooth_multi_profile"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_d
    const-string v4, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v1}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_e
    sget-boolean v4, Lcom/android/incallui/service/vt/VideoCallConfig;->EPDG_ERROR_EVENT:Z

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    if-nez v4, :cond_f

    new-instance v4, Lcom/android/incallui/service/vt/EpdgManager;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/incallui/service/vt/EpdgManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    :cond_f
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_10

    new-instance v4, Lcom/android/incallui/util/ContactAgentUtils$ContactAgentReceiver;

    invoke-direct {v4}, Lcom/android/incallui/util/ContactAgentUtils$ContactAgentReceiver;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v4, Lcom/android/incallui/util/ContactAgentUtils;->ACTION_CONTACT_ORIGINAL_IMAGE_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "add receiver for coreapps"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v0}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_10
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallEdgeManager:Lcom/android/incallui/edge/CallEdgeManager;

    if-nez v4, :cond_11

    new-instance v4, Lcom/android/incallui/edge/CallEdgeManager;

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/android/incallui/edge/CallEdgeManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallEdgeManager:Lcom/android/incallui/edge/CallEdgeManager;

    :cond_11
    const-string v4, "smart_auto_answering"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_12

    new-instance v4, Lcom/android/incallui/InCallPresenter$SmartAnswerBroadcastReceiver;

    invoke-direct {v4, p0, v8}, Lcom/android/incallui/InCallPresenter$SmartAnswerBroadcastReceiver;-><init>(Lcom/android/incallui/InCallPresenter;Lcom/android/incallui/InCallPresenter$1;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.shhphone.autoanswer.AUTOANSWER_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "add receiver for smart answer"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v3}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_12
    const-string v4, "add receiver for ACTION_ML_STATE"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.samsung.android.mirrorlink.ML_STATE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mMirrorlinkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v1}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v4, "add receiver for ACTION_CARMODE_STATE"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.sec.android.automotive.drivelink.carmodechanged"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mCarmodeStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v2}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v4, Lcom/android/incallui/bike/BikeModeController;

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/android/incallui/bike/BikeModeController;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    invoke-virtual {v4}, Lcom/android/incallui/bike/BikeModeController;->setUp()V

    const-string v4, "support_bluetooth_multi_profile"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    new-instance v4, Lcom/android/incallui/BluetoothProfileManager;

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/android/incallui/BluetoothProfileManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

    invoke-virtual {v4}, Lcom/android/incallui/BluetoothProfileManager;->initBluetoothProfileProxy()V

    :cond_13
    const-string v4, "support_knox_desktop"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->getInstance()Lcom/android/incallui/util/DesktopModeManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/android/incallui/util/DesktopModeManager;->init(Landroid/content/Context;)V

    :cond_14
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/SALogging;->registerTelecommSALoggingReceiver(Landroid/content/Context;)Z

    const-string v4, "perf - Finished InCallPresenter.setUp"

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_3
.end method

.method public setVideoPopup(Lcom/android/incallui/service/SecVideoPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/service/SecVideoPopupService;

    return-void
.end method

.method public showConferenceCallManager(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->showConferenceCallManager(Z)V

    goto :goto_0
.end method

.method public showDialpadDuringPenMultiWindow(Z)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "showDialpadDuringPenMultiWindow"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showInCall(ZZ)V
    .locals 10

    const/16 v9, 0x3ed

    const/4 v8, 0x1

    const-string v4, "showInCall"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "support_tphone"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "do not showInCall incallUi when tphone mode"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/incallui/InCallActivity;->showConferenceCallManager(Z)V

    :cond_2
    const-string v4, "feature_multisim_preferred_sim"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "feature_multisim_adaptive_callback"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_SIM_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v4, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->showSelectPhoneSimAccountDialog()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getTargetClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v3}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZLjava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v4, :cond_5

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->lock()V

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "perf - startActivity with Bundle"

    invoke-static {p0, v4, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getInCallActivityInfo()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_6
    const-string v4, "perf - startActivity "

    invoke-static {p0, v4, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public showVideoPopup()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/service/SecVideoPopupService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/service/SecVideoPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecVideoPopupService;->showPopup()V

    :cond_0
    return-void
.end method

.method public smartAnsweringMode(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const-string v1, "smartAnsweringMode() smart answer Broadcast, hasIncomingCall"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v3}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/incallui/InCallPresenter;->answerIncomingCall(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnsweringMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v3}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnsweringMode(Z)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->playGuidance()V

    :cond_1
    return-void
.end method

.method public startContactInfoSearch(Lcom/android/incallui/Call;)V
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->queryCompleted:Z

    if-eqz v2, :cond_0

    const-string v2, "skip startContactInfoSearch"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    new-instance v3, Lcom/android/incallui/InCallPresenter$9;

    invoke-direct {v3, p0}, Lcom/android/incallui/InCallPresenter$9;-><init>(Lcom/android/incallui/InCallPresenter;)V

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    goto :goto_0
.end method

.method public startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 21

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "startOrFinishUi: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " -> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/wrapper/KnoxCustomManagerWrapper;->getCallScreenDisabledItems(Landroid/content/Context;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/InCallPresenter;->mKnoxCustomDisabledItems:I

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "startOrFinishUi: mKnoxCustomDisabledItems = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/InCallPresenter;->mKnoxCustomDisabledItems:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallApp;->unlock()V

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v6

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isKidsModeRunning()Z

    move-result v17

    if-eqz v17, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/incallui/Call;->isEmergencyCall()Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "kids mode is running, return"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallActivity;->finish()V

    :cond_2
    :goto_0
    return-object p1

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCarmodeHome()Z

    move-result v17

    if-eqz v17, :cond_4

    const-string v17, "car mode is running, return"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/bike/BikeModeController;->startOrFinishUiConsumed(Lcom/android/incallui/InCallPresenter$InCallState;)Z

    move-result v17

    if-nez v17, :cond_2

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v17

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_e

    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_e

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getLiveCallCounts()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    const/4 v5, 0x1

    :goto_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "alreadyOutgoing: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_2

    if-nez v5, :cond_2

    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_f

    const/16 v16, 0x1

    :goto_2
    const-string v17, "feature_multisim_preferred_sim"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "feature_multisim_adaptive_callback"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    :cond_6
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_7

    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_SIM_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_10

    :cond_7
    const/4 v14, 0x1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v17

    if-nez v17, :cond_13

    const/4 v11, 0x1

    :goto_4
    if-nez v11, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->getCallCardFragmentVisible()Z

    move-result v17

    if-nez v17, :cond_14

    const/16 v17, 0x1

    :goto_5
    or-int v11, v11, v17

    :cond_8
    if-nez v11, :cond_9

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v17

    if-eqz v17, :cond_15

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v17

    if-eqz v17, :cond_15

    const/16 v17, 0x1

    :goto_6
    or-int v11, v11, v17

    :cond_9
    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v17

    if-nez v17, :cond_a

    const/4 v11, 0x0

    :cond_a
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_16

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getLiveCallCounts()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    const/4 v9, 0x1

    :goto_7
    if-eqz v11, :cond_17

    if-nez v9, :cond_b

    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_17

    :cond_b
    const/4 v15, 0x1

    :goto_8
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "showCallUi = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v17, "rich_call_screen_cmcc"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v17

    if-nez v17, :cond_d

    const/4 v13, 0x0

    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v13

    :cond_c
    :goto_9
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "RichScreenApp: getRichScreen:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v13, :cond_d

    new-instance v10, Lcom/android/incallui/richscreen/RichCallScreenUtils;

    invoke-direct {v10}, Lcom/android/incallui/richscreen/RichCallScreenUtils;-><init>()V

    invoke-virtual {v13}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v17

    const-string v18, "1110000000"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/android/incallui/richscreen/RichCallScreenUtils;->getRichCallScreenPersonObject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1b

    if-eqz v11, :cond_1b

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->isCallWithNoValidAccounts(Lcom/android/incallui/Call;)Z

    move-result v17

    if-eqz v17, :cond_1b

    const/16 v17, 0x1

    :goto_a
    or-int v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v17

    if-nez v17, :cond_1c

    const/4 v4, 0x1

    :goto_b
    if-eqz v4, :cond_1d

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Undo the state change: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " -> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 p1, v0

    goto/16 :goto_0

    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_2

    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_11
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_12

    const/4 v14, 0x1

    goto/16 :goto_3

    :cond_12
    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_14
    const/16 v17, 0x0

    goto/16 :goto_5

    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_6

    :cond_16
    const/4 v9, 0x0

    goto/16 :goto_7

    :cond_17
    const/4 v15, 0x0

    goto/16 :goto_8

    :cond_18
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_19

    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1a

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v13

    if-nez v13, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v13

    goto/16 :goto_9

    :cond_1a
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v13

    goto/16 :goto_9

    :cond_1b
    const/16 v17, 0x0

    goto/16 :goto_a

    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_b

    :cond_1d
    if-nez v15, :cond_1e

    if-eqz v14, :cond_22

    :cond_1e
    const-string v17, "Start in call UI"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->clearDisconnectedTimeoutEvent()Z

    const/16 v18, 0x0

    if-nez v14, :cond_20

    const/16 v17, 0x1

    :goto_c
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v17

    if-eqz v17, :cond_1f

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v17

    if-nez v17, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v17

    if-nez v17, :cond_1f

    const-string v17, "Minimize other popup window"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Landroid/content/Intent;

    const-string v17, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "com.android.incallui"

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v17

    if-eqz v17, :cond_21

    const-string v17, "OVDT"

    :goto_d
    invoke-static {}, Lcom/android/incallui/util/AppLogging;->getCallTypeString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_20
    const/16 v17, 0x0

    goto :goto_c

    :cond_21
    const-string v17, "OVCT"

    goto :goto_d

    :cond_22
    if-eqz v16, :cond_27

    const-string v17, "Start Full Screen in call UI"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v17

    if-eqz v17, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v17, v0

    if-eqz v17, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    :cond_23
    const-string v17, "multi_number_cmcc"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mSubNumberDialog:Lcom/android/incallui/util/SecSubNumberDialogActivity;

    move-object/from16 v17, v0

    if-eqz v17, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mSubNumberDialog:Lcom/android/incallui/util/SecSubNumberDialogActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/util/SecSubNumberDialogActivity;->finish()V

    :cond_24
    const-string v17, "support_tphone"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_25

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v17

    if-eqz v17, :cond_25

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v17

    if-eqz v17, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v17

    if-eqz v17, :cond_25

    const-string v17, "finish InCallActivity when incoming call in the tphone mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    goto/16 :goto_0

    :cond_25
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v17

    if-eqz v17, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v17

    if-nez v17, :cond_26

    new-instance v8, Landroid/content/Intent;

    const-string v17, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_26
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/InCallPresenter;->startUi(Lcom/android/incallui/InCallPresenter$InCallState;)Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 p1, v0

    goto/16 :goto_0

    :cond_27
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    if-eqz v17, :cond_28

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Version name : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/InCallApp;->getAppVerionName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    goto/16 :goto_0
.end method

.method public stopRecord()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->stopRecord()V

    :cond_0
    return-void
.end method

.method public tearDown()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "tearDown"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->clearOnDisconnect()V

    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoPauseController;->tearDown()V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->tearDown()V

    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->removeSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V

    return-void
.end method

.method public toggleSpeakerphone()V
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x5

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->setAudioMode(I)V

    return-void
.end method

.method public unsetActivity(Lcom/android/incallui/InCallActivity;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unregisterActivity cannot be called with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_1

    const-string v0, "No InCallActivity currently set, no need to unset."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eq v0, p1, :cond_2

    const-string v0, "Second instance of InCallActivity is trying to unregister when another instance is active. Ignoring."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->updateActivity(Lcom/android/incallui/InCallActivity;)V

    goto :goto_0
.end method

.method public updateForegroundCallDetails()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->canUpdateDetailsChanged(Landroid/telecom/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mUpdateUtil:Lcom/android/incallui/util/CallUpdateUtil;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/CallUpdateUtil;->update(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method updateIsChangingConfigurations()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isChangingConfigurations()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIsChangingConfigurations = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateNotification()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    :cond_0
    return-void
.end method

.method public updateNotification(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;Z)Z

    :cond_0
    return-void
.end method

.method public updatePhotoringState()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    iget v2, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallActivity;->updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V

    :cond_0
    return-void
.end method

.method public updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;ILjava/lang/Object;)V
    .locals 3

    const-string v0, "InCallPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhotoringState state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    iput p2, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringContentPath:Ljava/lang/String;

    const-string v0, "InCallPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhotoringState state - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringContentPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V

    :cond_0
    return-void
.end method

.method public updateRejectCallNotification(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0, p1}, Lcom/android/incallui/StatusBarNotifier;->registerRejectCallNotification(Z)V

    :cond_0
    return-void
.end method

.method public updateRightNow(Ljava/lang/Object;)V
    .locals 5

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telecom/Call;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v3, v2}, Lcom/android/incallui/CallList;->getCallByTelecomCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call not found in call list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$InCallDetailsListener;

    invoke-virtual {v2}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Lcom/android/incallui/InCallPresenter$InCallDetailsListener;->onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V

    goto :goto_1
.end method
