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

.field private static final PLAY_AUTO_ANSWER_MESSAGE:I = 0xa5

.field private static final PLAY_AUTO_ANSWER_MESSAGE_DELAY:I = 0x3e8

.field private static final PLAY_AUTO_ANSWER_MESSAGE_DELAY_KDI:I = 0x7d0

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

    .prologue
    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallPresenter;->EMPTY_EXTRAS:Landroid/os/Bundle;

    .line 181
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

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x1

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x0

    .line 3940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    .line 207
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    .line 208
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    .line 210
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    .line 212
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    .line 214
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    .line 216
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    .line 218
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListenersOfManager:Ljava/util/Set;

    .line 220
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mEmergencyModeListener:Ljava/util/Set;

    .line 222
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandModeListener:Ljava/util/Set;

    .line 224
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandAnyScreenOnListener:Ljava/util/Set;

    .line 226
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mMobileKeyboardListener:Ljava/util/Set;

    .line 228
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mConfigurationListener:Ljava/util/Set;

    .line 238
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 240
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    .line 241
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mAccountSelectionCancelled:Z

    .line 242
    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    .line 243
    new-instance v0, Lcom/android/incallui/AnswerPresenter;

    invoke-direct {v0}, Lcom/android/incallui/AnswerPresenter;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    .line 253
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mEmergencyCall:Z

    .line 255
    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    .line 259
    sget-object v0, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->PHOTORING_NONE:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    .line 260
    iput v2, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    .line 261
    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringContentPath:Ljava/lang/String;

    .line 264
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    .line 265
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    .line 269
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    .line 278
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsImsRegistered:Z

    .line 279
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mBatteryMonitorRegistered:Z

    .line 296
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    .line 298
    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mSubNumberDialog:Lcom/android/incallui/util/SecSubNumberDialogActivity;

    .line 302
    new-instance v0, Lcom/android/incallui/InCallPresenter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/InCallPresenter$1;-><init>(Lcom/android/incallui/InCallPresenter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHideStatusObserver:Landroid/database/ContentObserver;

    .line 324
    new-instance v0, Lcom/android/incallui/InCallPresenter$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$2;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mMirrorlinkStateReceiver:Landroid/content/BroadcastReceiver;

    .line 335
    new-instance v0, Lcom/android/incallui/InCallPresenter$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$3;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCarmodeStateReceiver:Landroid/content/BroadcastReceiver;

    .line 348
    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

    .line 351
    new-instance v0, Lcom/android/incallui/InCallPresenter$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$4;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    .line 386
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mAwaitingCallListUpdate:Z

    .line 507
    new-instance v0, Lcom/android/incallui/InCallPresenter$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$5;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallCallback:Landroid/telecom/Call$Callback;

    .line 551
    new-instance v0, Lcom/android/incallui/InCallPresenter$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$6;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 631
    new-instance v0, Lcom/android/incallui/util/CallUpdateUtil;

    const-string v1, "InCallPresenter"

    invoke-direct {v0, v1, p0}, Lcom/android/incallui/util/CallUpdateUtil;-><init>(Ljava/lang/String;Lcom/android/incallui/util/CallUpdateUtil$UpdateCallback;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mUpdateUtil:Lcom/android/incallui/util/CallUpdateUtil;

    .line 652
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    .line 657
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    .line 659
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 2376
    new-instance v0, Lcom/android/incallui/InCallPresenter$8;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$8;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRegListener:Lcom/sec/ims/IImsRegistrationListener;

    .line 3941
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/StatusBarNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/CallList;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/util/CallUpdateUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mUpdateUtil:Lcom/android/incallui/util/CallUpdateUtil;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/BluetoothProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

    return-object v0
.end method

.method private attemptCleanup()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 3043
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v2, :cond_11

    iget-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v3, :cond_11

    const/4 v0, 0x1

    .line 3045
    .local v0, "shouldCleanup":Z
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

    .line 3047
    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3048
    invoke-static {}, Lcom/android/incallui/service/EcidClient;->clearAllCalls()V

    .line 3052
    :cond_0
    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->setMergeAfterAnswer(Z)V

    .line 3053
    invoke-static {}, Lcom/android/incallui/service/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/service/SecModifyCallProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecModifyCallProcessor;->clearModifyInProgress()V

    .line 3055
    if-eqz v0, :cond_10

    .line 3056
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    .line 3057
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 3061
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    if-eqz v2, :cond_1

    .line 3062
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v2}, Lcom/android/incallui/ContactInfoCache;->clearCache()V

    .line 3064
    :cond_1
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    .line 3066
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v2, :cond_2

    .line 3067
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 3068
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v2}, Lcom/android/incallui/ProximitySensor;->tearDown()V

    .line 3070
    :cond_2
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    .line 3072
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    .line 3074
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v2, :cond_3

    .line 3075
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 3076
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v2}, Lcom/android/incallui/StatusBarNotifier;->tearDown()V

    .line 3078
    :cond_3
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    .line 3080
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_4

    .line 3081
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    .line 3083
    :cond_4
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    .line 3085
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    if-eqz v2, :cond_5

    .line 3086
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v2, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->removeListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    .line 3087
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v2}, Lcom/android/incallui/accessory/AccessoryEventHandler;->tearDown()V

    .line 3088
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    .line 3091
    :cond_5
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->clearCoreAppsContact()V

    .line 3093
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    .line 3094
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 3096
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3097
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3098
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3099
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3100
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3101
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3102
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3103
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mListenersOfManager:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3104
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mEmergencyModeListener:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3105
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mOnehandModeListener:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3106
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mOnehandAnyScreenOnListener:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3107
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mMobileKeyboardListener:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3108
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mConfigurationListener:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3110
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_6

    .line 3112
    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 3115
    :goto_1
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    .line 3118
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    if-eqz v2, :cond_7

    .line 3119
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/EpdgManager;->destroy()V

    .line 3120
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    .line 3124
    :cond_7
    const-string v2, "smart_auto_answering"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3125
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_8

    .line 3127
    :try_start_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 3130
    :goto_2
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3134
    :cond_8
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_9

    .line 3136
    :try_start_2
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3139
    :goto_3
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    .line 3142
    :cond_9
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mMirrorlinkStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_a

    .line 3144
    :try_start_3
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mMirrorlinkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 3148
    :goto_4
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mMirrorlinkStateReceiver:Landroid/content/BroadcastReceiver;

    .line 3151
    :cond_a
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCarmodeStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_b

    .line 3153
    :try_start_4
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCarmodeStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 3156
    :goto_5
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCarmodeStateReceiver:Landroid/content/BroadcastReceiver;

    .line 3159
    :cond_b
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

    if-eqz v2, :cond_c

    .line 3160
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/incallui/BluetoothProfileManager;->closeBluetoothProfileProxy()V

    .line 3161
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

    .line 3164
    :cond_c
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    if-eqz v2, :cond_d

    .line 3165
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    invoke-virtual {v2}, Lcom/android/incallui/bike/BikeModeController;->cleanUp()V

    .line 3168
    :cond_d
    const-string v2, "ims_rcs"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3169
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secrcs/RcsShareUI;->tearDown()V

    .line 3172
    :cond_e
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->initCoverStateControls()V

    .line 3174
    iput v1, p0, Lcom/android/incallui/InCallPresenter;->mKnoxCustomDisabledItems:I

    .line 3176
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    if-eqz v1, :cond_f

    .line 3177
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    invoke-virtual {v1}, Lcom/android/incallui/util/DesktopModeManager;->tearDown()V

    .line 3179
    :cond_f
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/SALogging;->unregisterTelecommSALoggingReceiver(Landroid/content/Context;)Z

    .line 3181
    const-string v1, "Finished InCallPresenter.CleanUp"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3183
    :cond_10
    return-void

    .end local v0    # "shouldCleanup":Z
    :cond_11
    move v0, v1

    .line 3043
    goto/16 :goto_0

    .line 3154
    .restart local v0    # "shouldCleanup":Z
    :catch_0
    move-exception v2

    goto :goto_5

    .line 3145
    :catch_1
    move-exception v2

    goto :goto_4

    .line 3137
    :catch_2
    move-exception v2

    goto :goto_3

    .line 3128
    :catch_3
    move-exception v2

    goto :goto_2

    .line 3113
    :catch_4
    move-exception v2

    goto/16 :goto_1
.end method

.method private clearDigitsInKeypad()V
    .locals 1

    .prologue
    .line 2687
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2688
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->clearDigits()V

    .line 2690
    :cond_0
    return-void
.end method

.method private dismissDialogForDisconnect()V
    .locals 1

    .prologue
    .line 2676
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2677
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->dismissDialogForDisconnect()V

    .line 2681
    :cond_0
    :goto_0
    return-void

    .line 2678
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2679
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->dismissWaitingCallPopup()V

    goto :goto_0
.end method

.method private getColorsFromCall(Lcom/android/incallui/Call;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 3556
    if-nez p1, :cond_0

    .line 3557
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPendingPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->getColorsFromPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v0

    .line 3559
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
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 3564
    const/4 v1, 0x0

    .line 3565
    .local v1, "highlightColor":I
    if-eqz p1, :cond_0

    .line 3566
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 3568
    .local v2, "tm":Landroid/telecom/TelecomManager;
    if-eqz v2, :cond_0

    .line 3569
    invoke-virtual {v2, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 3572
    .local v0, "account":Landroid/telecom/PhoneAccount;
    if-eqz v0, :cond_0

    .line 3573
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getHighlightColor()I

    move-result v1

    .line 3577
    .end local v0    # "account":Landroid/telecom/PhoneAccount;
    .end local v2    # "tm":Landroid/telecom/TelecomManager;
    :cond_0
    new-instance v3, Lcom/android/incallui/InCallUIMaterialColorMapUtils;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    .line 3578
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/incallui/InCallUIMaterialColorMapUtils;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v3, v1}, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->calculatePrimaryAndSecondaryColor(I)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/InCallPresenter;
    .locals 2

    .prologue
    .line 669
    const-class v1, Lcom/android/incallui/InCallPresenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-nez v0, :cond_0

    .line 670
    new-instance v0, Lcom/android/incallui/InCallPresenter;

    invoke-direct {v0}, Lcom/android/incallui/InCallPresenter;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;

    .line 672
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 669
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hideDialpadForDisconnect()V
    .locals 1

    .prologue
    .line 2696
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2697
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->hideDialpadForDisconnect()V

    .line 2699
    :cond_0
    return-void
.end method

.method private initCoverStateControls()V
    .locals 1

    .prologue
    .line 4440
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    if-eqz v0, :cond_0

    .line 4441
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/accessory/CoverViewManager;->dismissView()V

    .line 4442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    .line 4444
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    .line 4445
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/motion/CallSContextMotion;->stopPutDownListening(Landroid/content/Context;)V

    .line 4446
    return-void
.end method

.method public static isCallWithNoValidAccounts(Lcom/android/incallui/Call;)Z
    .locals 5
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 2940
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isEmergencyCall()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2941
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2943
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 2944
    sget-object v0, Lcom/android/incallui/InCallPresenter;->EMPTY_EXTRAS:Landroid/os/Bundle;

    .line 2947
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2949
    const-string v2, "selectPhoneAccountAccounts"

    .line 2950
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2952
    .local v1, "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    .line 2953
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2954
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

    .line 2955
    const/4 v2, 0x1

    .line 2958
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3516
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
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 490
    return-void
.end method

.method private maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 2644
    const-string v2, "maybeShowErrorDialogOnDisconnect"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2645
    if-nez p1, :cond_1

    .line 2673
    :cond_0
    :goto_0
    return-void

    .line 2646
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    .line 2647
    .local v1, "disconnectCause":Landroid/telecom/DisconnectCause;
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

    .line 2648
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

    .line 2651
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 2652
    const-string v2, "canada_bmc_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2653
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 2654
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    const-string v2, "dismissDataChargeAlertDialog for BMC "

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2655
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->dismissDataChargeAlertDialog()V

    .line 2657
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2658
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->setDisconnectCauseForMissingAccounts(Lcom/android/incallui/Call;)V

    .line 2661
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2662
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallActivity;->maybeShowErrorDialogOnDisconnect(Landroid/telecom/DisconnectCause;)V

    goto/16 :goto_0

    .line 2663
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isStartPopupServiceWhenMakeCallFromOtherApp()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    if-eqz v2, :cond_0

    .line 2666
    :cond_5
    invoke-virtual {v1}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2667
    invoke-virtual {v1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    .line 2668
    invoke-virtual {v1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 2669
    :cond_6
    invoke-virtual {v1}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private notifyVideoPauseController(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    .line 4433
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

    .line 4434
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    if-nez v0, :cond_0

    .line 4435
    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/VideoPauseController;->onUiShowing(Z)V

    .line 4437
    :cond_0
    return-void

    .line 4433
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processOnCallListChange(Lcom/android/incallui/CallList;)V
    .locals 12
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v9, 0x6

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2493
    const/4 v4, 0x0

    invoke-static {p1, v4, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2494
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 2495
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    .line 2496
    iput v11, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    .line 2626
    :goto_0
    return-void

    .line 2499
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getCallType()I

    move-result v2

    .line 2500
    .local v2, "callType":I
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 2501
    .local v1, "callState":I
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

    .line 2502
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    if-nez v4, :cond_3

    .line 2503
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    if-eq v4, v9, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v9, :cond_1

    .line 2504
    invoke-static {v8}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0903cf

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/util/SALogging;->getNetworkType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2506
    :cond_1
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 2507
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    if-eqz v4, :cond_2

    .line 2508
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/EpdgManager;->dismissCurrentDialogWithoutSettingFlag()V

    .line 2510
    :cond_2
    invoke-static {v8}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f090395

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/util/SALogging;->getNetworkType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2514
    :cond_3
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    const/16 v5, 0xa

    if-eq v4, v5, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    .line 2518
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V

    .line 2520
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v3

    .line 2521
    .local v3, "disconnectCause":Landroid/telecom/DisconnectCause;
    invoke-virtual {v3}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v4

    if-ne v4, v10, :cond_14

    .line 2522
    invoke-static {}, Lcom/android/incallui/util/SALogging;->getGeneralScreenId()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f090381

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2528
    .end local v3    # "disconnectCause":Landroid/telecom/DisconnectCause;
    :cond_4
    :goto_1
    invoke-static {v1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ACTIVE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2529
    const-string v4, "ims_rcs"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2530
    iget-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mIsImsRegistered:Z

    if-nez v4, :cond_5

    .line 2531
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

    .line 2532
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

    .line 2533
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mRegListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v4, v5}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 2534
    iput-boolean v7, p0, Lcom/android/incallui/InCallPresenter;->mIsImsRegistered:Z

    .line 2537
    :cond_5
    const-string v4, "ims_crane"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2538
    const-string v4, "send nuber to crane"

    invoke-static {p0, v4, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2539
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/incallui/secrcs/RcsShareUI;->sendPhoneNumberBroadcast(Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 2541
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

    .line 2542
    iget-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mBatteryMonitorRegistered:Z

    if-nez v4, :cond_7

    .line 2543
    new-instance v4, Lcom/android/incallui/secrcs/BatteryMonitor;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/incallui/secrcs/BatteryMonitor;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBatteryMonitor:Lcom/android/incallui/secrcs/BatteryMonitor;

    .line 2544
    iput-boolean v7, p0, Lcom/android/incallui/InCallPresenter;->mBatteryMonitorRegistered:Z

    .line 2545
    new-instance v4, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    invoke-direct {v4, p0}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;-><init>(Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mRcsBroadcastReceiver:Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    .line 2546
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mRcsBroadcastReceiver:Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 2549
    :cond_7
    const-string v4, "support_tphone"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2550
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2551
    const-string v4, "Start CoverStateChanged when tphone mode"

    invoke-static {p0, v4, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2552
    invoke-virtual {p0, v7}, Lcom/android/incallui/InCallPresenter;->onCoverStateChanged(Z)V

    .line 2557
    :cond_8
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    if-ne v4, v9, :cond_9

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v10, :cond_9

    .line 2558
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    invoke-static {v4}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(I)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2559
    const-string v4, "common_volte_in"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2560
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f0902e2

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2564
    :cond_9
    invoke-static {v1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "DISCONNECTED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2565
    const-string v4, "ims_rcs"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2566
    iget-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mIsImsRegistered:Z

    if-eqz v4, :cond_a

    .line 2567
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

    .line 2568
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

    .line 2569
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mRegListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v4, v5}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 2570
    iput-boolean v8, p0, Lcom/android/incallui/InCallPresenter;->mIsImsRegistered:Z

    .line 2573
    :cond_a
    iget-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mBatteryMonitorRegistered:Z

    if-eqz v4, :cond_b

    .line 2574
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBatteryMonitor:Lcom/android/incallui/secrcs/BatteryMonitor;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/incallui/secrcs/BatteryMonitor;->UnregisterBatteryMonitor(Landroid/content/Context;)V

    .line 2575
    iput-boolean v8, p0, Lcom/android/incallui/InCallPresenter;->mBatteryMonitorRegistered:Z

    .line 2576
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/incallui/secrcs/RcsShareUI;->disconnect(Landroid/content/Context;)V

    .line 2578
    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mRcsBroadcastReceiver:Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->unregister(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2584
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

    .line 2585
    const-string v4, "support_tphone"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2586
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2587
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v4, v5, :cond_d

    .line 2588
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    invoke-static {v4}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(I)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2589
    const-string v4, "Downgrade for tphone"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2590
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v4, :cond_c

    .line 2591
    const-string v4, "cancelNotification"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2592
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v4}, Lcom/android/incallui/StatusBarNotifier;->cancelInCall()V

    .line 2594
    :cond_c
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    .line 2600
    :cond_d
    :goto_3
    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2601
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2602
    const-string v4, "Finish in call UI for tphone"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2603
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    .line 2607
    :cond_e
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    if-eq v4, v1, :cond_f

    .line 2608
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    .line 2609
    invoke-virtual {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_f

    .line 2610
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->notifyCallTimeForLedCover()V

    .line 2613
    :cond_f
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v4, :cond_13

    .line 2614
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->dismissInCallMenu()V

    .line 2615
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    const/16 v5, 0xd

    if-eq v4, v5, :cond_10

    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    if-ne v4, v9, :cond_12

    .line 2616
    :cond_10
    if-eq v1, v10, :cond_11

    const/16 v4, 0x8

    if-ne v1, v4, :cond_12

    .line 2617
    :cond_11
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/SystemServiceUtils;->boostCPU(Landroid/content/Context;)V

    .line 2618
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4, v8}, Lcom/android/incallui/InCallActivity;->animateForShrinkBackground(Z)V

    .line 2621
    :cond_12
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    .line 2624
    :cond_13
    iput v2, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    .line 2625
    iput v1, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    goto/16 :goto_0

    .line 2523
    .restart local v3    # "disconnectCause":Landroid/telecom/DisconnectCause;
    :cond_14
    invoke-virtual {v3}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v4

    if-eq v4, v11, :cond_4

    .line 2524
    invoke-static {}, Lcom/android/incallui/util/SALogging;->getGeneralScreenId()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f090350

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2595
    .end local v3    # "disconnectCause":Landroid/telecom/DisconnectCause;
    :cond_15
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    invoke-static {v4}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2596
    const-string v4, "Upgrade for tphone"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2597
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {p0, v8, v8}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    goto/16 :goto_3

    .line 2579
    :catch_0
    move-exception v4

    goto/16 :goto_2
.end method

.method private setDisconnectCauseForMissingAccounts(Lcom/android/incallui/Call;)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 2968
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v5

    .line 2970
    .local v5, "telecomCall":Landroid/telecom/Call;
    invoke-virtual {v5}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2972
    .local v2, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 2973
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "extras":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2976
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    const-string v6, "selectPhoneAccountAccounts"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2979
    .local v3, "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2980
    :cond_1
    invoke-virtual {v5}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 2981
    .local v4, "scheme":Ljava/lang/String;
    const-string v6, "tel"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v7, 0x7f090438

    .line 2982
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2984
    .local v1, "errorMsg":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7, v1, v1}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 2986
    .local v0, "disconnectCause":Landroid/telecom/DisconnectCause;
    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    .line 2988
    .end local v0    # "disconnectCause":Landroid/telecom/DisconnectCause;
    .end local v1    # "errorMsg":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    :cond_2
    return-void

    .line 2982
    .restart local v4    # "scheme":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v7, 0x7f090037

    .line 2983
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static declared-synchronized setInstance(Lcom/android/incallui/InCallPresenter;)V
    .locals 2
    .param p0, "inCallPresenter"    # Lcom/android/incallui/InCallPresenter;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 677
    const-class v0, Lcom/android/incallui/InCallPresenter;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    monitor-exit v0

    return-void

    .line 677
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private shouldAttemptBlocking(Landroid/telecom/Call;)Z
    .locals 3
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    const/4 v0, 0x0

    .line 413
    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 425
    :goto_0
    return v0

    .line 416
    :cond_0
    invoke-static {p1}, Lcom/android/incallui/util/TelecomCallUtil;->isEmergencyCall(Landroid/telecom/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    const-string v1, "Not attempting to block incoming emergency call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showSelectPhoneSimAccountDialog()V
    .locals 3

    .prologue
    .line 3333
    const-string v1, "feature_multisim_preferred_sim"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "feature_multisim_adaptive_callback"

    .line 3334
    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3335
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3336
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10808000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3337
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/util/SystemServiceUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3338
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/SelectSimActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3341
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3343
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 3340
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/SelectPhoneSimAccountActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private showVideoEndScreen(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 2629
    const-string v2, "showVideoEndScreen"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2630
    const-string v0, "com.samsung.incallui.action.START_CALLEND_ACTIVITY"

    .line 2632
    .local v0, "INCALLUI_START_CALLEND_ACTIVITY":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2633
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.incallui.action.START_CALLEND_ACTIVITY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2634
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2635
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2, v1}, Lcom/android/incallui/InCallActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2637
    :cond_0
    return-void
.end method

.method private startAutoAnsTimer(I)V
    .locals 6
    .param p1, "limit"    # I

    .prologue
    const-wide/16 v2, 0xa

    .line 4150
    const-string v0, "startAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4151
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->resetAutoAnsTimer()V

    .line 4152
    if-gtz p1, :cond_1

    .line 4153
    new-instance v0, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;-><init>(Lcom/android/incallui/InCallPresenter;JJ)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    .line 4157
    :goto_0
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4158
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSystemSettingAllSoundOff()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4159
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;->start()Landroid/os/CountDownTimer;

    .line 4164
    :cond_0
    :goto_1
    return-void

    .line 4155
    :cond_1
    new-instance v0, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;-><init>(Lcom/android/incallui/InCallPresenter;JJ)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    goto :goto_0

    .line 4162
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_1
.end method

.method private startUi(Lcom/android/incallui/InCallPresenter$InCallState;)Z
    .locals 6
    .param p1, "inCallState"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2991
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    .line 2992
    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_2

    move v1, v3

    .line 2994
    .local v1, "isCallWaiting":Z
    :goto_0
    const-string v5, "dcm_sda_support_feature"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2995
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2996
    .local v0, "incomingCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 2997
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v2

    .line 2998
    .local v2, "presentation":I
    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    const/4 v5, 0x3

    if-eq v2, v5, :cond_0

    const/4 v5, 0x4

    if-ne v2, v5, :cond_1

    .line 3001
    :cond_0
    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/android/incallui/util/InCallUtils;->sendNotificationToSmartDeviceAgent(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 3013
    .end local v0    # "incomingCall":Lcom/android/incallui/Call;
    .end local v2    # "presentation":I
    :cond_1
    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    if-nez v5, :cond_5

    .line 3014
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v5}, Lcom/android/incallui/ProximitySensor;->isScreenReallyOff()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3015
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3016
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    .line 3017
    invoke-virtual {v5}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v5

    if-nez v5, :cond_3

    .line 3018
    const-string v3, "Restarting InCallComponent to turn screen on for call waiting"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3019
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->finish()V

    .line 3035
    :goto_1
    return v4

    .end local v1    # "isCallWaiting":Z
    :cond_2
    move v1, v4

    .line 2992
    goto :goto_0

    .line 3028
    .restart local v1    # "isCallWaiting":Z
    :cond_3
    invoke-virtual {p0, v4, v4}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    :cond_4
    :goto_2
    move v4, v3

    .line 3035
    goto :goto_1

    .line 3031
    :cond_5
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v4, p1, v5}, Lcom/android/incallui/StatusBarNotifier;->updateNotificationAndLaunchIncomingCallUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3032
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v4, p1, v5}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    goto :goto_2
.end method

.method public static toRotationAngle(I)I
    .locals 1
    .param p0, "rotation"    # I

    .prologue
    .line 4413
    packed-switch p0, :pswitch_data_0

    .line 4427
    const/4 v0, 0x0

    .line 4429
    .local v0, "rotationAngle":I
    :goto_0
    return v0

    .line 4415
    .end local v0    # "rotationAngle":I
    :pswitch_0
    const/4 v0, 0x0

    .line 4416
    .restart local v0    # "rotationAngle":I
    goto :goto_0

    .line 4418
    .end local v0    # "rotationAngle":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 4419
    .restart local v0    # "rotationAngle":I
    goto :goto_0

    .line 4421
    .end local v0    # "rotationAngle":I
    :pswitch_2
    const/16 v0, 0xb4

    .line 4422
    .restart local v0    # "rotationAngle":I
    goto :goto_0

    .line 4424
    .end local v0    # "rotationAngle":I
    :pswitch_3
    const/16 v0, 0x10e

    .line 4425
    .restart local v0    # "rotationAngle":I
    goto :goto_0

    .line 4413
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
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    const/4 v3, 0x0

    .line 970
    const/4 v1, 0x0

    .line 971
    .local v1, "updateListeners":Z
    const/4 v0, 0x0

    .line 973
    .local v0, "doAttemptCleanup":Z
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 974
    const-string v2, "setActivity isActivityStarted - return "

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 978
    :cond_1
    if-eqz p1, :cond_8

    .line 979
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v2, :cond_2

    .line 980
    const/4 v1, 0x1

    .line 981
    const-string v2, "UI Initialized"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 988
    :cond_2
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 989
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallActivity;->setExcludeFromRecents(Z)V

    .line 991
    const-string v2, "ims_support_multimedia_caller_id"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 992
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

    .line 993
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/InCallActivity;->updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V

    .line 998
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 999
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/InCallPresenter;->maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V

    .line 1008
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v3, :cond_5

    .line 1009
    const-string v2, "UI Initialized, but no calls left.  shut down."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1010
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    goto :goto_0

    .line 1014
    :cond_5
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v2}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1015
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallPresenter;->onCoverStateChanged(Z)V

    .line 1057
    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    .line 1058
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallPresenter;->onCallListChange(Lcom/android/incallui/CallList;)V

    .line 1061
    :cond_7
    if-eqz v0, :cond_0

    .line 1062
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    goto :goto_0

    .line 1018
    :cond_8
    const-string v2, "UI Destroyed"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1019
    const/4 v1, 0x1

    .line 1020
    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 1022
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->initCoverStateControls()V

    .line 1024
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1025
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-virtual {v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1026
    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    .line 1038
    :cond_9
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->clearDisconnectedTimeoutEvent()Z

    .line 1039
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public acceptUpgradeRequest(ILandroid/content/Context;)V
    .locals 4
    .param p1, "videoState"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2044
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

    .line 2046
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v2, :cond_1

    .line 2047
    invoke-static {p2}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    .line 2048
    const-string v2, " acceptUpgradeRequest mCallList is empty so returning"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2060
    :cond_0
    :goto_0
    return-void

    .line 2052
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2053
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 2054
    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-direct {v1, p1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 2055
    .local v1, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2056
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 2058
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0
.end method

.method public addCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$CanAddCallListener;

    .prologue
    .line 1824
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1825
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1826
    return-void
.end method

.method public addConfigurationListener(Lcom/android/incallui/InCallPresenter$ConfigurationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$ConfigurationListener;

    .prologue
    .line 1904
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1905
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mConfigurationListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1906
    return-void
.end method

.method public addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallDetailsListener;

    .prologue
    .line 1811
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1812
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1813
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1815
    :cond_0
    return-void
.end method

.method public addEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$EmergencyModeListener;

    .prologue
    .line 1860
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1861
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mEmergencyModeListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1862
    return-void
.end method

.method public addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallEventListener;

    .prologue
    .line 1846
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1847
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1848
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1849
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    invoke-interface {p1, v0}, Lcom/android/incallui/InCallPresenter$InCallEventListener;->onFullscreenModeChanged(Z)V

    .line 1851
    :cond_0
    return-void
.end method

.method public addInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallUiListener;

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2181
    return-void
.end method

.method public addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    .prologue
    .line 1747
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;Z)V

    .line 1748
    return-void
.end method

.method public addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;Z)V
    .locals 3
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$IncomingCallListener;
    .param p2, "needUpdate"    # Z

    .prologue
    .line 1751
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-virtual {v1, v2, p1}, Lcom/android/incallui/bike/BikeModeController;->addIncomingCallListenerComsumed(Ljava/util/List;Lcom/android/incallui/InCallPresenter$IncomingCallListener;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1764
    :cond_0
    :goto_0
    return-void

    .line 1755
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1756
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1757
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 1758
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1759
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1760
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-interface {p1, v1, v2, v0}, Lcom/android/incallui/InCallPresenter$IncomingCallListener;->onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallStateListener;

    .prologue
    .line 1787
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;Z)V

    .line 1788
    return-void
.end method

.method public addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;Z)V
    .locals 3
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallStateListener;
    .param p2, "needUpdate"    # Z

    .prologue
    .line 1791
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1792
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1793
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1794
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 1795
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1796
    const-string v0, "addListener: Skip onStateChange during UI Locked"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1802
    :cond_0
    :goto_0
    return-void

    .line 1798
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
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallStateListener;

    .prologue
    .line 1915
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1916
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListenersOfManager:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1917
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListenersOfManager:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1918
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1919
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1920
    const-string v0, "addListenerOfManager: Skip onStateChange during UI Locked"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1926
    :cond_0
    :goto_0
    return-void

    .line 1922
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
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallStateListener;

    .prologue
    .line 1773
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1776
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1777
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1778
    const-string v0, "addListenerToFirst: Skip onStateChange during UI Locked"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1784
    :cond_0
    :goto_0
    return-void

    .line 1780
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
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;

    .prologue
    .line 1893
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1894
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mMobileKeyboardListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1895
    return-void
.end method

.method public addOnehandAnyScreenOnListener(Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;

    .prologue
    .line 1882
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1883
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandAnyScreenOnListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1884
    return-void
.end method

.method public addOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$OnehandModeListener;

    .prologue
    .line 1871
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandModeListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1873
    return-void
.end method

.method public addOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallOrientationListener;

    .prologue
    .line 1835
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1836
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1837
    return-void
.end method

.method public answerIncomingCall(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "videoState"    # I

    .prologue
    const/4 v3, 0x0

    .line 2014
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_1

    .line 2015
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    .line 2024
    :cond_0
    :goto_0
    return-void

    .line 2019
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2020
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 2021
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    .line 2022
    invoke-virtual {p0, v3, v3}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    goto :goto_0
.end method

.method public answeringMode()V
    .locals 6

    .prologue
    const/16 v5, 0xa5

    const/4 v4, 0x1

    .line 4213
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

    .line 4214
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

    .line 4239
    :cond_0
    :goto_0
    return-void

    .line 4216
    :cond_1
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-nez v1, :cond_6

    .line 4217
    invoke-static {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    .line 4218
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_2

    .line 4219
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    goto :goto_0

    .line 4222
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 4223
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_3

    .line 4224
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/TelecomAdapter;->answerCall(Lcom/android/incallui/Call;)V

    .line 4226
    :cond_3
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnsweringMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4227
    invoke-static {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnsweringMode(Z)V

    .line 4229
    :cond_4
    const-string v1, "feature_kdi"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4230
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4234
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "isGuidanceMsgPlaying"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4235
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->resetAutoAnsTimer()V

    goto :goto_0

    .line 4232
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 4236
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_6
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4237
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f09008f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public attemptFinishActivity()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 861
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 862
    .local v0, "doFinish":Z
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

    .line 864
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    if-eqz v3, :cond_0

    .line 865
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v3}, Lcom/android/incallui/ContactInfoCache;->clearCache()V

    .line 867
    :cond_0
    if-eqz v0, :cond_1

    .line 868
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3, v1}, Lcom/android/incallui/InCallActivity;->setExcludeFromRecents(Z)V

    .line 869
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->finish()V

    .line 871
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->initCoverStateControls()V

    .line 872
    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mAccountSelectionCancelled:Z

    if-eqz v1, :cond_1

    .line 875
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 878
    :cond_1
    return-void

    .end local v0    # "doFinish":Z
    :cond_2
    move v0, v2

    .line 861
    goto :goto_0
.end method

.method public bringToForeground(Z)V
    .locals 2
    .param p1, "showDialpad"    # Z

    .prologue
    .line 2204
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallPresenter;->showDialpadDuringPenMultiWindow(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2218
    :cond_0
    :goto_0
    return-void

    .line 2215
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->hasInCallUiFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_0

    .line 2216
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    goto :goto_0
.end method

.method public cancelAccountSelection()V
    .locals 3

    .prologue
    .line 1962
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mAccountSelectionCancelled:Z

    .line 1963
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_0

    .line 1964
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1965
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1966
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1967
    .local v1, "callId":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 1970
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "callId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public cancelAndUpdateNotification()V
    .locals 3

    .prologue
    .line 3371
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    .line 3372
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0}, Lcom/android/incallui/StatusBarNotifier;->cancelInCall()V

    .line 3373
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    .line 3375
    :cond_0
    return-void
.end method

.method public checkAndChangeOrientation(I)Z
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 3451
    const/4 v0, 0x0

    .line 3452
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getRequestedOrientation()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 3453
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, p1}, Lcom/android/incallui/InCallActivity;->setRequestedOrientation(I)V

    .line 3454
    const/4 v0, 0x1

    .line 3456
    :cond_0
    return v0
.end method

.method public checkAndStartAM()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4097
    const-string v8, "checkAndStartAM"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4098
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 4099
    .local v1, "call":Lcom/android/incallui/Call;
    const/4 v3, 0x0

    .line 4101
    .local v3, "hasActiveCall":Z
    if-eqz v1, :cond_0

    .line 4102
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    move v3, v6

    .line 4105
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "callsettings_ring_duration"

    const/16 v10, 0xd

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 4109
    .local v5, "limit":I
    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "callsettings_answer_memo"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4113
    .local v0, "answerMemo":I
    const/4 v4, 0x0

    .line 4114
    .local v4, "isVoicePartyCall":Z
    const-string v8, "feature_kdi"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4115
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v4

    .line 4118
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

    .line 4119
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

    .line 4120
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

    .line 4121
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- all_sound_off == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4123
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSystemSettingAllSoundOff()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4121
    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4124
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

    .line 4125
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

    .line 4126
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

    .line 4128
    if-eqz v0, :cond_2

    if-ne v0, v6, :cond_5

    .line 4129
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

    .line 4130
    .local v2, "canAMStart":Z
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

    .line 4132
    if-eqz v2, :cond_3

    .line 4133
    const-string v6, "answerMemo  ON "

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4134
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4135
    invoke-direct {p0, v5}, Lcom/android/incallui/InCallPresenter;->startAutoAnsTimer(I)V

    .line 4140
    :cond_3
    :goto_2
    return-void

    .end local v0    # "answerMemo":I
    .end local v2    # "canAMStart":Z
    .end local v4    # "isVoicePartyCall":Z
    .end local v5    # "limit":I
    :cond_4
    move v3, v7

    .line 4102
    goto/16 :goto_0

    .restart local v0    # "answerMemo":I
    .restart local v4    # "isVoicePartyCall":Z
    .restart local v5    # "limit":I
    :cond_5
    move v2, v7

    .line 4129
    goto :goto_1

    .line 4137
    .restart local v2    # "canAMStart":Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->memoryFullAnswerMemoNotification()V

    goto :goto_2
.end method

.method public clearFullscreen()V
    .locals 1

    .prologue
    .line 4322
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    .line 4323
    return-void
.end method

.method public declineIncomingCall(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2032
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_1

    .line 2033
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    .line 2041
    :cond_0
    :goto_0
    return-void

    .line 2037
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2038
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 2039
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

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->declineUpgradeRequest(Landroid/content/Context;)V

    .line 2086
    return-void

    .line 2085
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public declineUpgradeRequest(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 2064
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v2, :cond_1

    .line 2065
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    .line 2078
    :cond_0
    :goto_0
    return-void

    .line 2069
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2070
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 2071
    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-direct {v1, v3}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 2073
    .local v1, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2074
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 2076
    :cond_2
    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0
.end method

.method public disconnectCallForVoiceParty()V
    .locals 4

    .prologue
    .line 4242
    const/4 v1, 0x0

    .line 4243
    .local v1, "isVoicePartyCall":Z
    const-string v2, "feature_kdi"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4244
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 4246
    :cond_0
    if-eqz v1, :cond_1

    .line 4247
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 4248
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/incallui/CallList;->isLiveCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4249
    const-string v2, "hangUpOngoingCall: set DISCONNECTING voice memo"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4250
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 4251
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->setState(I)V

    .line 4252
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    .line 4255
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    return-void
.end method

.method public enableScreenTimeout(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/16 v3, 0x80

    .line 4390
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

    .line 4391
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v1, :cond_0

    .line 4392
    const-string v1, "enableScreenTimeout: mInCallActivity is null."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4402
    :goto_0
    return-void

    .line 4396
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 4397
    .local v0, "window":Landroid/view/Window;
    if-eqz p1, :cond_1

    .line 4398
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 4400
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public forceCancelNotification(Z)V
    .locals 1
    .param p1, "block"    # Z

    .prologue
    .line 3364
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    .line 3365
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0, p1}, Lcom/android/incallui/StatusBarNotifier;->setBlockToUpdate(Z)V

    .line 3366
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0}, Lcom/android/incallui/StatusBarNotifier;->cancelInCall()V

    .line 3368
    :cond_0
    return-void
.end method

.method public getActivity()Lcom/android/incallui/InCallActivity;
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    return-object v0
.end method

.method public getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    .locals 1

    .prologue
    .line 4089
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    return-object v0
.end method

.method public getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    return-object v0
.end method

.method public getAudioMode()I
    .locals 1

    .prologue
    .line 3877
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method public getBikeModeController()Lcom/android/incallui/bike/BikeModeController;
    .locals 1

    .prologue
    .line 4457
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    return-object v0
.end method

.method public getBluetoothProfileManager()Lcom/android/incallui/BluetoothProfileManager;
    .locals 1

    .prologue
    .line 4461
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

    return-object v0
.end method

.method public getCallCardFragmentVisible()Z
    .locals 1

    .prologue
    .line 3478
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3479
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->isVisible()Z

    move-result v0

    .line 3481
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallList()Lcom/android/incallui/CallList;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    return-object v0
.end method

.method public getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    return-object v0
.end method

.method public getCoverScreen()Lcom/android/incallui/accessory/CoverScreen;
    .locals 1

    .prologue
    .line 3856
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    if-eqz v0, :cond_0

    .line 3857
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/accessory/CoverViewManager;->getCoverScreen()Lcom/android/incallui/accessory/CoverScreen;

    move-result-object v0

    .line 3859
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCoverViewManager()Lcom/android/incallui/accessory/CoverViewManager;
    .locals 1

    .prologue
    .line 3852
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    return-object v0
.end method

.method public getInCallActivityInfo()Landroid/os/Bundle;
    .locals 13

    .prologue
    .line 4540
    const/4 v1, 0x0

    .line 4541
    .local v1, "defaultH":I
    const/4 v2, 0x0

    .line 4542
    .local v2, "defaultW":I
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4543
    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0419

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v1, v9

    .line 4544
    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a041a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v2, v9

    .line 4550
    :goto_0
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 4551
    .local v8, "size":Landroid/graphics/Point;
    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 4552
    .local v3, "display":Landroid/view/Display;
    invoke-virtual {v3, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 4554
    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0417

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v4, v9

    .line 4555
    .local v4, "offsetX":I
    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0418

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v5, v9

    .line 4557
    .local v5, "offsetY":I
    iget v9, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v2

    sub-int v6, v9, v4

    .line 4558
    .local v6, "posX":I
    iget v9, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v1

    sub-int v7, v9, v5

    .line 4560
    .local v7, "posY":I
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

    .line 4561
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4562
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v9, "android:activity.launchBounds"

    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v6, v2

    add-int v12, v7, v1

    invoke-direct {v10, v6, v7, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4563
    return-object v0

    .line 4546
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "display":Landroid/view/Display;
    .end local v4    # "offsetX":I
    .end local v5    # "offsetY":I
    .end local v6    # "posX":I
    .end local v7    # "posY":I
    .end local v8    # "size":Landroid/graphics/Point;
    :cond_0
    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a041b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v1, v9

    .line 4547
    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a041c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v2, v9

    goto/16 :goto_0
.end method

.method public getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;
    .locals 2

    .prologue
    .line 3383
    monitor-enter p0

    .line 3384
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    if-nez v0, :cond_0

    .line 3385
    new-instance v0, Lcom/android/incallui/InCallCameraManager;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallCameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    .line 3388
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    monitor-exit p0

    return-object v0

    .line 3389
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInCallIntent(ZZ)Landroid/content/Intent;
    .locals 1
    .param p1, "showDialpad"    # Z
    .param p2, "newOutgoingCall"    # Z

    .prologue
    .line 3309
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZLjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getInCallIntent(ZZLjava/lang/Class;)Landroid/content/Intent;
    .locals 4
    .param p1, "showDialpad"    # Z
    .param p2, "newOutgoingCall"    # Z
    .param p3, "targetClass"    # Ljava/lang/Class;

    .prologue
    .line 3313
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3314
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10840000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3318
    move-object v1, p3

    .line 3319
    .local v1, "tartgetClassForIntent":Ljava/lang/Class;
    if-nez p3, :cond_0

    .line 3320
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getTargetClass()Ljava/lang/Class;

    move-result-object v1

    .line 3322
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3324
    if-eqz p1, :cond_1

    .line 3325
    const-string v2, "InCallActivity.show_dialpad"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3328
    :cond_1
    const-string v2, "InCallActivity.new_outgoing_call"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3329
    return-object v0
.end method

.method public getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeModeController;->getInCallStateConsumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 684
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_0
.end method

.method public getKnoxCustomDisabledItems()I
    .locals 1

    .prologue
    .line 4077
    iget v0, p0, Lcom/android/incallui/InCallPresenter;->mKnoxCustomDisabledItems:I

    return v0
.end method

.method public getPhotoringBlocked()I
    .locals 1

    .prologue
    .line 2266
    iget v0, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    return v0
.end method

.method public getPhotoringContentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringContentPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 3
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 1672
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 1674
    .local v0, "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 1710
    :goto_0
    return-object v1

    .line 1677
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1678
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 1704
    :cond_1
    :goto_1
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_b

    .line 1705
    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mBoundAndWaitingForOutgoingCall:Z

    if-eqz v1, :cond_b

    .line 1706
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_0

    .line 1679
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1680
    const-string v1, "feature_multisim_preferred_sim"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "feature_multisim_adaptive_callback"

    .line 1681
    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1682
    :cond_3
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_SIM_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_1

    .line 1684
    :cond_4
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_1

    .line 1686
    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1687
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1688
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "*31#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1689
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

    .line 1690
    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1693
    :cond_7
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_1

    .line 1695
    :cond_8
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1696
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_1

    .line 1697
    :cond_9
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_a

    .line 1698
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_a

    .line 1699
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_a

    .line 1700
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1701
    :cond_a
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    goto/16 :goto_1

    :cond_b
    move-object v1, v0

    .line 1710
    goto/16 :goto_0
.end method

.method public getProximitySensor()Lcom/android/incallui/ProximitySensor;
    .locals 1

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    return-object v0
.end method

.method public getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    .locals 1

    .prologue
    .line 1083
    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    return-object v0
.end method

.method public getSpaceBesideCallCard()F
    .locals 1

    .prologue
    .line 3465
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3466
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->getSpaceBesideCallCard()F

    move-result v0

    .line 3468
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTargetClass()Ljava/lang/Class;
    .locals 6

    .prologue
    .line 3297
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 3298
    .local v2, "context":Landroid/content/Context;
    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3299
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 3300
    .local v1, "calls":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/incallui/InCallPresenter;->mEmergencyCall:Z

    if-eqz v3, :cond_0

    const-string v3, "panic_mode_swa"

    .line 3301
    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3302
    const-class v3, Lcom/android/incallui/PinPanicDummyActivity;

    .line 3304
    :goto_0
    return-object v3

    :cond_0
    const-class v3, Lcom/android/incallui/InCallActivity;

    goto :goto_0
.end method

.method public getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 3585
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_0

    .line 3586
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    .line 3587
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 3589
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 3596
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public getThemeColors()Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 1

    .prologue
    .line 3552
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    return-object v0
.end method

.method public getVideoPopupService()Lcom/android/incallui/service/SecVideoPopupService;
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/service/SecVideoPopupService;

    return-object v0
.end method

.method public handleAccountSelection(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "setDefault"    # Z

    .prologue
    .line 1939
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_0

    .line 1940
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1941
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1942
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1943
    .local v1, "callId":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/incallui/TelecomAdapter;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 1946
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "callId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public handleCallKey()Z
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x1

    .line 2275
    const-string v8, "handleCallKey"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2281
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    .line 2286
    .local v2, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v7

    .line 2287
    .local v7, "incomingCall":Lcom/android/incallui/Call;
    if-eqz v7, :cond_5

    .line 2288
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

    .line 2291
    const-string v8, "roaming_enhancement"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2292
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->isCallRoamingGuardDialogShowing()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2360
    :cond_0
    :goto_0
    return v10

    .line 2296
    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v1

    .line 2297
    .local v1, "answerUi":Lcom/android/incallui/AnswerUi;
    if-eqz v1, :cond_3

    .line 2298
    const-string v8, "handleCallKey : onAnswerWithWaitingCheck"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2299
    invoke-interface {v1}, Lcom/android/incallui/AnswerUi;->isAlreadyAnimationProcessing()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2300
    const-string v8, "Skip handleCallKey when answer animation is running"

    invoke-static {p0, v8, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2303
    :cond_2
    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-static {v7}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    goto :goto_0

    .line 2305
    :cond_3
    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    if-eqz v8, :cond_4

    .line 2306
    const-string v8, "handleCallKey - mCallPopupService : onAnswerWithWaitingCheck"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2307
    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v8}, Lcom/android/incallui/service/SecCallPopupService;->onAnswerWithWaitingCheck()V

    goto :goto_0

    .line 2309
    :cond_4
    const-string v8, "handleCallKey : answerCall"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2310
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/incallui/TelecomAdapter;->answerCall(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 2319
    .end local v1    # "answerUi":Lcom/android/incallui/AnswerUi;
    :cond_5
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2320
    .local v0, "activeCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_7

    .line 2323
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Lcom/android/incallui/Call;->can(I)Z

    move-result v4

    .line 2325
    .local v4, "canMerge":Z
    invoke-virtual {v0, v11}, Lcom/android/incallui/Call;->can(I)Z

    move-result v5

    .line 2328
    .local v5, "canSwap":Z
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

    .line 2332
    if-eqz v4, :cond_6

    .line 2333
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2335
    :cond_6
    if-eqz v5, :cond_7

    .line 2336
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/TelecomAdapter;->swap(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2344
    .end local v4    # "canMerge":Z
    .end local v5    # "canSwap":Z
    :cond_7
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v6

    .line 2345
    .local v6, "heldCall":Lcom/android/incallui/Call;
    if-eqz v6, :cond_0

    .line 2348
    invoke-virtual {v6, v10}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    .line 2350
    .local v3, "canHold":Z
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

    .line 2353
    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    if-ne v8, v11, :cond_0

    if-eqz v3, :cond_0

    .line 2354
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public handleCshInfo(Landroid/content/Intent;)V
    .locals 0
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 2479
    return-void
.end method

.method public handleError(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 2483
    return-void
.end method

.method public handleIncommingIMandFT(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2475
    return-void
.end method

.method public handleInvitation(ZLandroid/content/Intent;)V
    .locals 4
    .param p1, "isIncoming"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2466
    const-string v1, "notify user make notification"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2467
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2468
    .local v0, "activecall":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/secrcs/RcsShareUI;->notifyUser(Landroid/content/Context;Ljava/lang/String;)V

    .line 2469
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_0

    .line 2470
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getRcsInvitation()Lcom/android/incallui/secrcs/RcsInvitation;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/secrcs/RcsInvitation;->updateState(Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 2471
    :cond_0
    return-void
.end method

.method public handleRcsAction(Ljava/lang/String;)V
    .locals 10
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x1

    .line 2400
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

    .line 2401
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2402
    .local v0, "call":Lcom/android/incallui/Call;
    const-string v5, "ims_rcs"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2403
    const-string v5, "com.samsung.rcs.intent.action.CONTACTS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2404
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2405
    .local v2, "outside":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2406
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2408
    .local v1, "inside":Landroid/content/Intent;
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->getContactsPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sec.android.app.contacts.PhoneBookTopMenuActivity"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2409
    const-string v5, "EXTRA_INTENT"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2410
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2462
    .end local v1    # "inside":Landroid/content/Intent;
    .end local v2    # "outside":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2411
    :cond_1
    const-string v5, "com.samsung.rcs.intent.action.ADD_CALL"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2412
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/TelecomAdapter;->addCall()V

    goto :goto_0

    .line 2413
    :cond_2
    const-string v5, "com.samsung.rcs.intent.action.MANAGE_CONFERENCE_CALL"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2415
    const-string v5, "com.samsung.rcs.intent.action.NOTES"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2416
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEMO_CREATE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2417
    :cond_3
    const-string v5, "com.samsung.rcs.intent.action.SIM_SERVICES"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2418
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.stk.start_main_activity"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2419
    :cond_4
    const-string v5, "com.samsung.rcs.intent.action.BLUETOOTH_HANDSET"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2420
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/UiAdapter;->getCallButtonPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    .line 2421
    .local v3, "presenter":Lcom/android/incallui/CallButtonPresenter;
    if-eqz v3, :cond_0

    .line 2422
    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->toggleBluetooth()V

    goto :goto_0

    .line 2424
    .end local v3    # "presenter":Lcom/android/incallui/CallButtonPresenter;
    :cond_5
    const-string v5, "com.samsung.rcs.intent.action.INIT_SPEAKER_ON"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2425
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 2426
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/incallui/InCallPresenter;->setAudioMode(I)V

    goto :goto_0

    .line 2428
    :cond_6
    const-string v5, "com.samsung.rcs.intent.action.UPDATE_PROXIMITY"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2429
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    goto/16 :goto_0

    .line 2430
    :cond_7
    const-string v5, "com.samsung.rcs.intent.action.ACTION_RCS_SPEAKER_OFF"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2431
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 2432
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/android/incallui/InCallPresenter;->setAudioMode(I)V

    goto/16 :goto_0

    .line 2434
    :cond_8
    const-string v5, "com.samsung.rcs.intent.action.SPEAKER_ON"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "com.samsung.rcs.intent.action.SPEAKER_OFF"

    .line 2435
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2436
    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->toggleSpeakerphone()V

    goto/16 :goto_0

    .line 2437
    :cond_a
    const-string v5, "com.samsung.rcs.intent.action.ACTION_RCS_CALL_HOLD"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2438
    const-string v5, " Hold request received"

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2439
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2440
    :cond_b
    const-string v5, "com.samsung.rcs.intent.action.MUTE_ON"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2441
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    goto/16 :goto_0

    .line 2442
    :cond_c
    const-string v5, "com.samsung.rcs.intent.action.MUTE_OFF"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2443
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    goto/16 :goto_0

    .line 2444
    :cond_d
    const-string v5, "com.samsung.rcs.intent.action.END_CALL"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2445
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/incallui/InCallPresenter;->hangUpOngoingCall(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2446
    :cond_e
    const-string v5, "com.samsung.rcs.intent.action.ACTION_LAUNCH_MINI_MODE_CALL_VIEW"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2447
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v4

    .line 2448
    .local v4, "proximitySensor":Lcom/android/incallui/ProximitySensor;
    const-string v5, "action ACTION_LAUNCH_MINI_MODE_CALL_VIEW received from RCS "

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2449
    if-eqz v4, :cond_0

    .line 2450
    invoke-virtual {v4, v9}, Lcom/android/incallui/ProximitySensor;->setFromRcsShare(Z)V

    .line 2451
    invoke-virtual {v4}, Lcom/android/incallui/ProximitySensor;->forceUpdateProximitySensorMode()V

    goto/16 :goto_0

    .line 2453
    .end local v4    # "proximitySensor":Lcom/android/incallui/ProximitySensor;
    :cond_f
    const-string v5, "com.samsung.rcs.intent.action.ACTION_HIDE_MINI_MODE_CALL_VIEW"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2454
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v4

    .line 2455
    .restart local v4    # "proximitySensor":Lcom/android/incallui/ProximitySensor;
    const-string v5, "action ACTION_HIDE_MINI_MODE_CALL_VIEW received from RCS "

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2456
    if-eqz v4, :cond_0

    .line 2457
    invoke-virtual {v4, v7}, Lcom/android/incallui/ProximitySensor;->setFromRcsShare(Z)V

    .line 2458
    invoke-virtual {v4}, Lcom/android/incallui/ProximitySensor;->forceUpdateProximitySensorMode()V

    goto/16 :goto_0
.end method

.method public handoverFailNotification(Lcom/android/incallui/Call;)V
    .locals 7
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v6, 0x1

    .line 4283
    if-nez p1, :cond_1

    .line 4316
    :cond_0
    :goto_0
    return-void

    .line 4284
    :cond_1
    const-string v4, "handoverFailNotification()"

    invoke-static {p0, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 4285
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isAvailableEpdg()Z

    move-result v0

    .line 4286
    .local v0, "canEpdg":Z
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDeviceOnWiFi()Z

    move-result v3

    .line 4287
    .local v3, "isWiFiOn":Z
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 4288
    .local v1, "isEpdg":Z
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v2

    .line 4289
    .local v2, "isVideoCall":Z
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

    .line 4290
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 4304
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4305
    if-eqz v3, :cond_2

    .line 4306
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4307
    const v4, 0x7f0902ee

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_0

    .line 4310
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4311
    const v4, 0x7f0905a8

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_0
.end method

.method public hangUpOngoingCall(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1978
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_1

    .line 1979
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-nez v1, :cond_0

    .line 1982
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    .line 2006
    :cond_0
    :goto_0
    return-void

    .line 1987
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1988
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_2

    .line 1989
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1992
    :cond_2
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->isLiveCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1993
    const-string v1, "hangUpOngoingCall: set DISCONNECTING"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1994
    const-string v1, "ims_callplus"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ims_crane"

    .line 1995
    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1996
    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 1997
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->setOutgoingCallPlusFlag(Z)V

    .line 2002
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 2003
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setState(I)V

    .line 2004
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 1999
    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->setOutgoingCallPlusFlag(Z)V

    goto :goto_1
.end method

.method public hasInCallUiFocus()Z
    .locals 1

    .prologue
    .line 2096
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

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/service/SecVideoPopupService;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/service/SecVideoPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecVideoPopupService;->hidePopup()V

    .line 884
    :cond_0
    return-void
.end method

.method public isActivityPreviouslyStarted()Z
    .locals 1

    .prologue
    .line 2116
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    return v0
.end method

.method public isActivityStarted()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2106
    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 2107
    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 2108
    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->isFinishing()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 2112
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 2108
    goto :goto_0

    .line 2109
    :catch_0
    move-exception v0

    .line 2110
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "isActivityStarted - mInCallActivity = null"

    invoke-static {p0, v3, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    move v1, v2

    .line 2112
    goto :goto_0
.end method

.method public isBoundAndWaitingForOutgoingCall()Z
    .locals 1

    .prologue
    .line 1714
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mBoundAndWaitingForOutgoingCall:Z

    return v0
.end method

.method public isChangingConfigurations()Z
    .locals 1

    .prologue
    .line 2125
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    return v0
.end method

.method public isDialpadVisible()Z
    .locals 2

    .prologue
    .line 3504
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 3505
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 3506
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    .line 3508
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 4360
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    return v0
.end method

.method public isServiceBound()Z
    .locals 1

    .prologue
    .line 3243
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    return v0
.end method

.method public isShowingInCallUi()Z
    .locals 1

    .prologue
    .line 2092
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

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 4465
    const-string v3, "support_tphone"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4466
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4467
    const-string v3, "do not start popup service when tphone mode"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4487
    :cond_0
    :goto_0
    return v2

    .line 4471
    :cond_1
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4472
    const-string v3, "Popup service is not supported in LGT Model."

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 4475
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 4476
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/android/incallui/InCallUISystemDB;->isFlightMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4479
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4482
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4483
    const-string v3, "Popup service is not supported in EmergencyMode."

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 4486
    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 4487
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStartPopupServiceWhenMakeCallFromOtherApp(Lcom/android/incallui/Call;)Z

    move-result v2

    goto :goto_0
.end method

.method public maybeStartRevealAnimation(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3270
    return-void
.end method

.method public memoryFullAnswerMemoNotification()V
    .locals 1

    .prologue
    .line 4085
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0}, Lcom/android/incallui/StatusBarNotifier;->memoryFullAnswerMemoNotification()V

    .line 4086
    return-void
.end method

.method public notifyFullscreenModeChange(Z)V
    .locals 3
    .param p1, "isFullscreenMode"    # Z

    .prologue
    .line 4370
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

    .line 4371
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$InCallEventListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/InCallPresenter$InCallEventListener;->onFullscreenModeChanged(Z)V

    goto :goto_0

    .line 4373
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$InCallEventListener;
    :cond_0
    return-void
.end method

.method public notifySecondaryCallerInfoVisibilityChanged(ZI)V
    .locals 3
    .param p1, "isVisible"    # Z
    .param p2, "height"    # I

    .prologue
    .line 4384
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

    .line 4385
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$InCallEventListener;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallPresenter$InCallEventListener;->onSecondaryCallerInfoVisibilityChanged(ZI)V

    goto :goto_0

    .line 4387
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$InCallEventListener;
    :cond_0
    return-void
.end method

.method onActivityStarted()V
    .locals 1

    .prologue
    .line 2189
    const-string v0, "onActivityStarted"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2191
    return-void
.end method

.method onActivityStopped()V
    .locals 1

    .prologue
    .line 2195
    const-string v0, "onActivityStopped"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2197
    return-void
.end method

.method public onBringToForeground(Z)V
    .locals 1
    .param p1, "showDialpad"    # Z

    .prologue
    .line 389
    const-string v0, "Bringing UI to foreground."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    .line 391
    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 2
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->onCallAdded(Landroid/telecom/Call;)V

    .line 405
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallPresenter;->setBoundAndWaitingForOutgoingCall(ZLandroid/telecom/PhoneAccountHandle;)V

    .line 406
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallCallback:Landroid/telecom/Call$Callback;

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    .line 407
    const-string v0, "multiend_point"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-static {}, Lcom/android/incallui/remotecall/utils/RemoteCallUtils;->updateRemoteCallUI()V

    .line 410
    :cond_0
    return-void
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 22
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 1105
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

    .line 1107
    const-string v19, "ims_rcs"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1108
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 1109
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

    .line 1110
    new-instance v13, Landroid/content/Intent;

    const-string v19, "com.samsung.rcs.contentsharing.action.DISCONNECT_SHARE"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1111
    .local v13, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1115
    .end local v13    # "i":Landroid/content/Intent;
    :cond_0
    if-nez p1, :cond_2

    .line 1329
    :cond_1
    :goto_0
    return-void

    .line 1118
    :cond_2
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/InCallPresenter;->mAwaitingCallListUpdate:Z

    .line 1119
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v8

    .line 1121
    .local v8, "call":Lcom/android/incallui/Call;
    const-string v19, "vzw_volte_ui"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1122
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->updateVZWLTEVideoCallMenuShow()V

    .line 1125
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1126
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v19

    if-nez v19, :cond_5

    .line 1127
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    if-eqz v19, :cond_5

    .line 1128
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1129
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v6

    .line 1130
    .local v6, "answerUi":Lcom/android/incallui/AnswerUi;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Lcom/android/incallui/AnswerUi;->isAnswerAnimationRunning()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1131
    const-string v19, "perf - Skip onCallListChange when answer animation is running"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1134
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/InCallActivity;->isShrinkBackgroundRunning()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1135
    const-string v19, "perf - Skip onCallListChange when scale animation is running"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1140
    .end local v6    # "answerUi":Lcom/android/incallui/AnswerUi;
    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v9

    .line 1141
    .local v9, "calls":Lcom/android/incallui/Call;
    invoke-static {v8}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-static {v8}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 1142
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v5

    .line 1143
    .local v5, "activity":Landroid/app/Activity;
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

    .line 1146
    .end local v5    # "activity":Landroid/app/Activity;
    :cond_7
    const-string v19, "feature_dcm"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 1147
    if-eqz v9, :cond_b

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v19

    invoke-virtual {v9}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v10

    .line 1149
    .local v10, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v10, :cond_b

    iget-boolean v0, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    iget-boolean v0, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isChangedHideStatus:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 1151
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

    .line 1152
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

    .line 1153
    :cond_a
    const-string v19, "NTT DOCOMO : unregisterContentObserver "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1154
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

    .line 1155
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    .line 1156
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isChangedHideStatus:Z

    .line 1161
    .end local v10    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_b
    const-string v19, "panic_mode_swa"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 1162
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v15

    .line 1163
    .local v15, "mCall":Lcom/android/incallui/Call;
    if-eqz v15, :cond_c

    invoke-virtual {v15}, Lcom/android/incallui/Call;->isEmergencyCall()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 1164
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/InCallPresenter;->mEmergencyCall:Z

    .line 1167
    .end local v15    # "mCall":Lcom/android/incallui/Call;
    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v16

    .line 1168
    .local v16, "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v17, v0

    .line 1169
    .local v17, "oldState":Lcom/android/incallui/InCallPresenter$InCallState;
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

    .line 1170
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v16

    .line 1171
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

    .line 1173
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_d

    .line 1174
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->postAccessibilityEventForUpdateScreen()V

    .line 1178
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

    .line 1179
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 1181
    const-string v19, "UI"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/util/InCallUtils;->isEcholocateEnabled(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 1182
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

    .line 1183
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v19

    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getEcholocatePhoneNumber()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->CALL_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    .line 1184
    invoke-virtual/range {v21 .. v21}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->ordinal()I

    move-result v21

    .line 1183
    invoke-virtual/range {v19 .. v21}, Lcom/android/incallui/TelecomAdapter;->senduiCallState(Ljava/lang/String;I)V

    .line 1190
    :cond_e
    :goto_2
    const-string v19, "lock_screen_during_call"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 1191
    const/4 v7, 0x0

    .line 1192
    .local v7, "bNow":Z
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

    .line 1194
    :cond_10
    const/4 v7, 0x1

    .line 1196
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/incallui/InCallPresenter;->sendLockScreenEvent(Z)V

    .line 1199
    .end local v7    # "bNow":Z
    :cond_12
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v19

    if-eqz v19, :cond_16

    .line 1200
    const-string v19, "Skip onCallListChange during UI Locked"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1201
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

    .line 1203
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/incallui/InCallPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    goto/16 :goto_0

    .line 1143
    .end local v16    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    .end local v17    # "oldState":Lcom/android/incallui/InCallPresenter$InCallState;
    .restart local v5    # "activity":Landroid/app/Activity;
    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 1186
    .end local v5    # "activity":Landroid/app/Activity;
    .restart local v16    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    .restart local v17    # "oldState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_15
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getState()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/util/InCallUtils;->sendEcholocateUIState(I)V

    goto :goto_2

    .line 1209
    :cond_16
    const-string v19, "multiend_point"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 1210
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

    .line 1211
    const-string v19, "Launching InCall UI when state From NO_CALL to INCALL"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1212
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    .line 1216
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

    .line 1217
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v19

    if-eqz v19, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v19

    if-nez v19, :cond_18

    .line 1218
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    .line 1222
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    move-object/from16 v19, v0

    if-eqz v19, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    move/from16 v19, v0

    if-eqz v19, :cond_19

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/util/SystemServiceUtils;->pokeUserActivity(Landroid/content/Context;)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/accessory/CoverViewManager;->updateCoverScreenTimeOut()V

    .line 1227
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1a

    .line 1228
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->initCoverStateControls()V

    .line 1232
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

    .line 1233
    .local v14, "listener":Lcom/android/incallui/InCallPresenter$InCallStateListener;
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

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v14, v0, v1, v2}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_3

    .line 1236
    .end local v14    # "listener":Lcom/android/incallui/InCallPresenter$InCallStateListener;
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

    .line 1237
    .restart local v14    # "listener":Lcom/android/incallui/InCallPresenter$InCallStateListener;
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

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v14, v0, v1, v2}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_4

    .line 1241
    .end local v14    # "listener":Lcom/android/incallui/InCallPresenter$InCallStateListener;
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 1242
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v19

    if-nez v19, :cond_1d

    .line 1243
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v19

    if-eqz v19, :cond_29

    :cond_1d
    const/4 v12, 0x1

    .line 1244
    .local v12, "hasCall":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/incallui/InCallActivity;->dismissKeyguard(Z)V

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/InCallActivity;->updateKeepScreenOnFlag()V

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v20, v0

    .line 1248
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

    .line 1247
    :goto_6
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->updateAppSwitchSystemKeyEvent(Z)V

    .line 1250
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCarModeOn()Z

    move-result v19

    if-nez v19, :cond_1e

    .line 1251
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isLostPhoneLock()Z

    move-result v19

    if-nez v19, :cond_1e

    .line 1252
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOtaMode()Z

    move-result v19

    if-nez v19, :cond_1e

    .line 1253
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeMode()Z

    move-result v19

    if-nez v19, :cond_1e

    .line 1254
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v19

    if-nez v19, :cond_1e

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/InCallActivity;->setStatusBar(Z)V

    .line 1261
    .end local v12    # "hasCall":Z
    :cond_1e
    const-string v19, "ims_rcs"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1f

    .line 1262
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v19

    if-nez v19, :cond_1f

    .line 1263
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v19

    if-eqz v19, :cond_1f

    .line 1264
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/secrcs/RcsShareUI;->isShareActive(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_1f

    .line 1265
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

    .line 1269
    :cond_1f
    const-string v19, "ims_rcs"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_20

    .line 1270
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v4

    .line 1271
    .local v4, "activecall":Lcom/android/incallui/Call;
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

    .line 1272
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

    .line 1276
    .end local v4    # "activecall":Lcom/android/incallui/Call;
    :cond_20
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/InCallPresenter;->processOnCallListChange(Lcom/android/incallui/CallList;)V

    .line 1278
    const-string v19, "auto_call_test"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_21

    .line 1279
    invoke-static {}, Lcom/android/incallui/util/VTAutoTestProxy;->getInstance()Lcom/android/incallui/util/VTAutoTestProxy;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/util/VTAutoTestProxy;->handleMessage(I)V

    .line 1283
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

    .line 1284
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

    .line 1285
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v19

    if-eqz v19, :cond_22

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtyNotification()Z

    move-result v19

    if-eqz v19, :cond_22

    .line 1286
    const-string v19, "tty notification on active call, show!"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/InCallActivity;->onTtyNotification(Z)V

    .line 1291
    :cond_22
    const-string v19, "automatic_answering_machine"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_24

    .line 1292
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

    .line 1293
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    .line 1294
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    .line 1295
    .local v11, "handler":Landroid/os/Handler;
    new-instance v19, Lcom/android/incallui/InCallPresenter$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallPresenter$7;-><init>(Lcom/android/incallui/InCallPresenter;)V

    const-wide/16 v20, 0x4b0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v11, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1302
    .end local v11    # "handler":Landroid/os/Handler;
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

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-object/from16 v19, v0

    if-eqz v19, :cond_24

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-object/from16 v19, v0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->stopService(Landroid/content/Context;)V

    .line 1305
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    .line 1310
    :cond_24
    const-string v19, "smart_auto_answering"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_25

    .line 1311
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

    .line 1312
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    .line 1313
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    .line 1317
    :cond_25
    sget v19, Lcom/android/incallui/service/vt/VideoCallCapability;->HANDOVER_NOTIFICATION:I

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1318
    const/16 v18, 0x0

    .line 1319
    .local v18, "showNotification":Z
    if-eqz v8, :cond_28

    .line 1320
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->getHandoverNotificationType()Ljava/lang/String;

    move-result-object v19

    const-string v20, "VZW"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_26

    .line 1321
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

    .line 1323
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

    .line 1325
    :cond_28
    :goto_8
    if-eqz v18, :cond_1

    .line 1326
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/incallui/InCallPresenter;->handoverFailNotification(Lcom/android/incallui/Call;)V

    goto/16 :goto_0

    .line 1243
    .end local v18    # "showNotification":Z
    :cond_29
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 1248
    .restart local v12    # "hasCall":Z
    :cond_2a
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 1321
    .end local v12    # "hasCall":Z
    .restart local v18    # "showNotification":Z
    :cond_2b
    const/16 v18, 0x0

    goto :goto_7

    .line 1323
    :cond_2c
    const/16 v18, 0x0

    goto :goto_8
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 1
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->onCallRemoved(Landroid/telecom/Call;)V

    .line 498
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallCallback:Landroid/telecom/Call$Callback;

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    .line 499
    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 3
    .param p1, "canAddCall"    # Z

    .prologue
    .line 502
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

    .line 503
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$CanAddCallListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/InCallPresenter$CanAddCallListener;->onCanAddCallChanged(Z)V

    goto :goto_0

    .line 505
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$CanAddCallListener;
    :cond_0
    return-void
.end method

.method public onChangeToVideoRequest(Lcom/android/incallui/Call;I)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoState"    # I

    .prologue
    .line 1576
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

    .line 1578
    if-nez p1, :cond_1

    .line 1596
    :cond_0
    :goto_0
    return-void

    .line 1581
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    .line 1582
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1583
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    .line 1585
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/incallui/service/vt/VideoCallControl;->shouldAcceptRequest(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1586
    invoke-static {p2}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    goto :goto_0

    .line 1589
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1590
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    .line 1592
    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/incallui/Call;->setRequestedVideoState(I)V

    .line 1593
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1594
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->hideDialpadForModifyCall()V

    goto :goto_0
.end method

.method public onCircularRevealComplete(Landroid/app/FragmentManager;)V
    .locals 2
    .param p1, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 1733
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->showCallCardFragment(Z)V

    .line 1736
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/CircularRevealFragment;->endCircularReveal(Landroid/app/FragmentManager;)V

    .line 1738
    :cond_0
    return-void
.end method

.method public onConfigurationChange(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 3417
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

    .line 3420
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

    .line 3421
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$ConfigurationListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/InCallPresenter$ConfigurationListener;->onConfigurationChanged(I)V

    goto :goto_0

    .line 3423
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$ConfigurationListener;
    :cond_0
    return-void
.end method

.method public onCoverStateChanged(Z)V
    .locals 5
    .param p1, "isClosed"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3797
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

    .line 3799
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_1

    .line 3800
    const-string v1, "onCoverStateChanged: NO_CALLS"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3849
    :cond_0
    :goto_0
    return-void

    .line 3804
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    if-eqz v1, :cond_5

    .line 3805
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupIncomingCall_coverClosed()V

    .line 3813
    :goto_1
    const-string v1, "support_tphone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3814
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3815
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneRelaxMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3816
    :cond_2
    const-string v1, "onCoverStateChanged: tphone mode"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3817
    iput-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    .line 3839
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3840
    if-eqz p1, :cond_d

    .line 3841
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/motion/CallSContextMotion;->startPutDownListening(Landroid/content/Context;)V

    .line 3846
    :cond_4
    :goto_3
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3847
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->dismissInCallMenu()V

    goto :goto_0

    .line 3807
    :cond_5
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3808
    invoke-static {p1}, Lcom/android/incallui/util/VoiceCallAppLogging;->isCoverClosed(Z)V

    goto :goto_1

    .line 3810
    :cond_6
    invoke-static {p1}, Lcom/android/incallui/util/VideoCallAppLogging;->isCoverClosed(Z)V

    goto :goto_1

    .line 3818
    :cond_7
    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    if-ne v1, p1, :cond_8

    .line 3819
    const-string v1, "onCoverStateChanged: mIsCoverClosed == isClosed"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 3821
    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3822
    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_9

    .line 3823
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string v2, "sem_statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    .line 3824
    .local v0, "mStatusBarManager":Landroid/app/SemStatusBarManager;
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/SemStatusBarManager;->setIndicatorBgColor(I)V

    .line 3826
    .end local v0    # "mStatusBarManager":Landroid/app/SemStatusBarManager;
    :cond_9
    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    if-nez v1, :cond_a

    .line 3827
    const-string v1, "onCoverStateChanged: create CoverView"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3828
    new-instance v1, Lcom/android/incallui/accessory/CoverViewManager;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-direct {v1, v2}, Lcom/android/incallui/accessory/CoverViewManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    .line 3830
    :cond_a
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    if-eqz v1, :cond_b

    .line 3831
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    invoke-virtual {v1, p1}, Lcom/android/incallui/accessory/CoverViewManager;->onCoverStateChanged(Z)V

    .line 3833
    :cond_b
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    goto/16 :goto_2

    .line 3835
    :cond_c
    const-string v1, "onCoverStateChanged: can\'t start cover"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3836
    if-eqz p1, :cond_3

    invoke-virtual {p0, v4, v4}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    goto/16 :goto_2

    .line 3843
    :cond_d
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/motion/CallSContextMotion;->stopPutDownListening(Landroid/content/Context;)V

    goto/16 :goto_3
.end method

.method public onDeviceOrientationChange(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 3402
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

    .line 3404
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v1, :cond_0

    .line 3405
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->notifyCallsOfDeviceRotation(I)V

    .line 3411
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

    .line 3412
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/InCallPresenter$InCallOrientationListener;->onDeviceOrientationChanged(I)V

    goto :goto_1

    .line 3407
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
    :cond_0
    const-string v1, "onDeviceOrientationChange: CallList is null."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3414
    :cond_1
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v7, 0x0

    .line 1445
    const-string v4, "InCallPresenter : onDisconnect"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1447
    sget-boolean v4, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1448
    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/PrivatePolicy;->onDisconnect()V

    .line 1450
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->clearDigitsInKeypad()V

    .line 1451
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->hideDialpadForDisconnect()V

    .line 1456
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->dismissDialogForDisconnect()V

    .line 1458
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->resetTtyNotification()V

    .line 1460
    sget-boolean v4, Lcom/android/incallui/service/vt/VideoCallConfig;->OVERLAY_POPUP_PLAY:Z

    if-eqz v4, :cond_1

    .line 1461
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->hideVideoPopup()V

    .line 1464
    :cond_1
    const-string v4, "multiend_point"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1465
    invoke-static {}, Lcom/android/incallui/remotecall/utils/RemoteCallUtils;->updateRemoteCallUI()V

    .line 1468
    :cond_2
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1469
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->resetAutoAnsTimer()V

    .line 1470
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1471
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopGuidance()V

    .line 1475
    :cond_3
    const-string v4, "handle_sip_error_code"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1476
    invoke-static {p1}, Lcom/android/incallui/util/IMSErrorUtils;->handleDisconnectCause(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1477
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->showVideoEndScreen(Lcom/android/incallui/Call;)V

    .line 1481
    :cond_4
    const-string v4, "ims_support_multimedia_caller_id"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1482
    sget-object v4, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->PHOTORING_NONE:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    .line 1483
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v4, :cond_5

    .line 1484
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    iget v6, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    invoke-virtual {v4, v5, v6}, Lcom/android/incallui/InCallActivity;->updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V

    .line 1488
    :cond_5
    const-string v4, "rich_call_screen_cmcc"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1489
    const/4 v3, 0x0

    .line 1490
    .local v3, "primary":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v3

    .line 1491
    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1492
    const/4 v2, 0x0

    .line 1493
    .local v2, "number":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 1494
    new-instance v1, Lcom/android/incallui/richscreen/RichCallScreenUtils;

    invoke-direct {v1}, Lcom/android/incallui/richscreen/RichCallScreenUtils;-><init>()V

    .line 1495
    .local v1, "mRichCallScreenUtils":Lcom/android/incallui/richscreen/RichCallScreenUtils;
    const-string v4, "1140020000"

    invoke-virtual {v1, v2, v4}, Lcom/android/incallui/richscreen/RichCallScreenUtils;->startDownloadRichScrnObj(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    .end local v1    # "mRichCallScreenUtils":Lcom/android/incallui/richscreen/RichCallScreenUtils;
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "primary":Lcom/android/incallui/Call;
    :cond_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallPresenter;->onCallListChange(Lcom/android/incallui/CallList;)V

    .line 1502
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1503
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4, v7}, Lcom/android/incallui/InCallActivity;->dismissKeyguard(Z)V

    .line 1510
    :cond_7
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->removeCoreAppsContact(Ljava/lang/String;)V

    .line 1512
    const-string v4, "auto_call_test"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1513
    invoke-static {}, Lcom/android/incallui/util/VTAutoTestProxy;->getInstance()Lcom/android/incallui/util/VTAutoTestProxy;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/incallui/util/VTAutoTestProxy;->handleMessage(I)V

    .line 1516
    :cond_8
    const-string v4, "feature_ctc"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1517
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isEmergencyCall()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1518
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.EMERGENCY_CALL_END"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1519
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "send Broadcast: com.samsung.intent.action.EMERGENCY_CALL_END"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1520
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/incallui/InCallApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 1529
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_9
    invoke-static {v7}, Lcom/android/incallui/util/InCallUtils;->setMergeAfterAnswer(Z)V

    .line 1531
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

    .line 1532
    invoke-static {v7}, Lcom/android/incallui/util/SoundEffect;->turnOnExtraVol(Z)V

    .line 1535
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

    .line 1536
    const-string v4, "clearDisplayFlags for epdg"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1537
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    if-eqz v4, :cond_b

    .line 1538
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/EpdgManager;->clearDisplayFlags()V

    .line 1542
    :cond_b
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/incallui/util/AppLogging;->insertLogOnCallDisconnect(Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 1543
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->clearFullscreen()V

    .line 1544
    return-void
.end method

.method public onDismissDialog()V
    .locals 2

    .prologue
    .line 2369
    const-string v0, "Dialog dismissed"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2370
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    .line 2371
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    .line 2372
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    .line 2374
    :cond_0
    return-void
.end method

.method public onDowngradeToAudio(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1664
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

    .line 1665
    return-void
.end method

.method public onDowngradeToAudioRequest(Lcom/android/incallui/Call;I)V
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoState"    # I

    .prologue
    const v5, 0x7f0902df

    .line 1600
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

    .line 1602
    if-nez p1, :cond_0

    .line 1644
    :goto_0
    return-void

    .line 1606
    :cond_0
    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1607
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    .line 1608
    .local v2, "secCall":Lcom/android/incallui/SecCall;
    if-nez p2, :cond_1

    if-eqz v2, :cond_1

    .line 1609
    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->isChangedToTwoWayVideo()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1610
    const/16 v3, 0xd

    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    .line 1614
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/SecCall;->setChangedToTwoWayVideo(Z)V

    .line 1633
    .end local v2    # "secCall":Lcom/android/incallui/SecCall;
    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isDialpadVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1634
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->hideDialpadForModifyCall()V

    .line 1637
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    invoke-static {v3, p2}, Lcom/android/incallui/service/vt/VideoCallControl;->shouldAcceptRequest(II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1638
    invoke-static {p2}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    goto :goto_0

    .line 1612
    .restart local v2    # "secCall":Lcom/android/incallui/SecCall;
    :cond_3
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    goto :goto_1

    .line 1616
    .end local v2    # "secCall":Lcom/android/incallui/SecCall;
    :cond_4
    const-string v3, "att_volte_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "mpcs_volte_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1617
    :cond_5
    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_2

    .line 1618
    :cond_6
    const-string v3, "tmo_volte_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1619
    const/4 v1, 0x0

    .line 1620
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    .line 1621
    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 1622
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_7

    .line 1623
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    .line 1626
    :cond_7
    if-nez v1, :cond_8

    .line 1627
    const-string v1, "Caller"

    .line 1629
    :cond_8
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v4, 0x7f0902e0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;)V

    goto :goto_2

    .line 1631
    .end local v0    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v1    # "name":Ljava/lang/String;
    :cond_9
    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_2

    .line 1642
    :cond_a
    invoke-virtual {p1, p2}, Lcom/android/incallui/Call;->setRequestedVideoState(I)V

    goto/16 :goto_0
.end method

.method public onEmergencyModeChange(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    const/4 v3, 0x1

    .line 3737
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

    .line 3740
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

    .line 3741
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$EmergencyModeListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/InCallPresenter$EmergencyModeListener;->onEmergencyModeChange(I)V

    goto :goto_0

    .line 3743
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$EmergencyModeListener;
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3744
    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallPresenter;->onCoverStateChanged(Z)V

    .line 3745
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    .line 3747
    :cond_1
    return-void
.end method

.method public onHmtStateChanged(Z)V
    .locals 6
    .param p1, "isDocked"    # Z

    .prologue
    const/4 v5, 0x1

    .line 3776
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

    .line 3778
    if-nez p1, :cond_0

    .line 3779
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

    .line 3780
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3782
    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getTargetClass()Ljava/lang/Class;

    move-result-object v1

    .line 3783
    .local v1, "cls":Ljava/lang/Class;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZLjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 3787
    .local v0, "activityIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3793
    .end local v0    # "activityIntent":Landroid/content/Intent;
    .end local v1    # "cls":Ljava/lang/Class;
    :cond_0
    :goto_0
    return-void

    .line 3788
    :catch_0
    move-exception v2

    .line 3789
    .local v2, "e":Landroid/content/ActivityNotFoundException;
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
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getConnectingOrConnectedCallCount()I

    move-result v12

    .line 1340
    .local v12, "liveCallCount":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    .line 1341
    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v12}, Lcom/android/incallui/bike/BikeModeController;->onIncomingCallConsumed(Lcom/android/incallui/Call;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1433
    :cond_0
    :goto_0
    return-void

    .line 1345
    :cond_1
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v13

    .line 1346
    .local v13, "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 1347
    .local v14, "oldState":Lcom/android/incallui/InCallPresenter$InCallState;
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_CDMA:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_GSM:Z

    if-eqz v1, :cond_3

    .line 1348
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1349
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->dismissDataUsageLimitDialog()V

    .line 1354
    :cond_3
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "support_sync_call"

    .line 1355
    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1356
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1357
    const/4 v7, 0x0

    .line 1359
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.kddi.android.evc.SettingsProvider/system"

    .line 1360
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1359
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1362
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 1363
    const/4 v8, 0x0

    .line 1364
    .local v8, "isIncomingShowPU":Z
    const/4 v9, 0x0

    .line 1365
    .local v9, "isSettingUseSyncCall":Z
    :cond_4
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1366
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1367
    .local v10, "key":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1368
    .local v16, "value":I
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

    .line 1369
    const-string v1, "setting_use_synccall"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_5

    .line 1370
    const/4 v9, 0x1

    goto :goto_1

    .line 1371
    :cond_5
    const-string v1, "setting_use_incoming_show_pu"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_4

    .line 1372
    const/4 v8, 0x1

    goto :goto_1

    .line 1375
    .end local v10    # "key":Ljava/lang/String;
    .end local v16    # "value":I
    :cond_6
    if-eqz v9, :cond_7

    if-eqz v8, :cond_7

    .line 1376
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->checkAndStartAM()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1383
    .end local v8    # "isIncomingShowPU":Z
    .end local v9    # "isSettingUseSyncCall":Z
    :cond_7
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1384
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1385
    const/4 v7, 0x0

    .line 1391
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_8
    :goto_2
    const-string v1, "feature_multisim_preferred_sim"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "feature_multisim_adaptive_callback"

    .line 1392
    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1393
    :cond_9
    invoke-static {}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->dismissDialog()V

    .line 1394
    invoke-static {}, Lcom/android/incallui/SelectSimActivity;->dismissDialogFromOutside()V

    .line 1398
    :cond_a
    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1399
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/service/EcidClient;->newIncoming(Lcom/android/incallui/Call;)V

    .line 1403
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

    .line 1404
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 1407
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1408
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1409
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    .line 1411
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    if-nez v1, :cond_d

    .line 1412
    new-instance v1, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-direct {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    .line 1413
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->startService(Landroid/content/Context;)V

    .line 1414
    const-string v1, "startService about AnswerMemoRecorder"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1418
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

    .line 1419
    .local v11, "listener":Lcom/android/incallui/InCallPresenter$IncomingCallListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    invoke-interface {v11, v14, v2, v0}, Lcom/android/incallui/InCallPresenter$IncomingCallListener;->onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    goto :goto_3

    .line 1380
    .end local v11    # "listener":Lcom/android/incallui/InCallPresenter$IncomingCallListener;
    .restart local v7    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v15

    .line 1381
    .local v15, "t":Ljava/lang/Throwable;
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

    .line 1383
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1384
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1385
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 1383
    .end local v15    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_e

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1384
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1385
    const/4 v7, 0x0

    :cond_e
    throw v1

    .line 1422
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_f
    const-string v1, "auto_call_test"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1423
    invoke-static {}, Lcom/android/incallui/util/VTAutoTestProxy;->getInstance()Lcom/android/incallui/util/VTAutoTestProxy;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VTAutoTestProxy;->handleMessage(I)V

    .line 1426
    :cond_10
    const-string v1, "UI"

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isEcholocateEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1427
    if-eqz p1, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->sendEcholocateUIState(I)V

    .line 1430
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_0

    .line 1431
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    goto/16 :goto_0
.end method

.method public onMobileKeyboardChanged()V
    .locals 3

    .prologue
    .line 3764
    const-string v1, "onMobileKeyboardChanged()"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3765
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

    .line 3766
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;
    invoke-interface {v0}, Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;->onMobileKeyboardChanged()V

    goto :goto_0

    .line 3768
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;
    :cond_0
    return-void
.end method

.method public onOnehandAnyScreenOnChanged()V
    .locals 3

    .prologue
    .line 3757
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

    .line 3758
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

    .line 3759
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;
    invoke-interface {v0}, Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;->onOnehandAnyScreenOnChanged()V

    goto :goto_0

    .line 3761
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;
    :cond_0
    return-void
.end method

.method public onOnehandModeChanged()V
    .locals 3

    .prologue
    .line 3750
    const-string v1, "onOnehandModeChanged()"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3751
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

    .line 3752
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$OnehandModeListener;
    invoke-interface {v0}, Lcom/android/incallui/InCallPresenter$OnehandModeListener;->onOnehandModeChanged()V

    goto :goto_0

    .line 3754
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$OnehandModeListener;
    :cond_0
    return-void
.end method

.method public onPostDialCharPause(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "chars"    # Ljava/lang/String;

    .prologue
    .line 2227
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2228
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->showPostCharPauseDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    :cond_0
    return-void
.end method

.method public onPostDialCharPauseComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "chars"    # Ljava/lang/String;

    .prologue
    .line 2235
    return-void
.end method

.method public onPostDialCharWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "chars"    # Ljava/lang/String;

    .prologue
    .line 2221
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2222
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    :cond_0
    return-void
.end method

.method public onReceivedMessageFromTelecom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "telecomCallId"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 3922
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

    .line 3923
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3924
    invoke-static {p2}, Lcom/android/incallui/util/VideoCallUtils;->onReceivedMessageFromTelecom(Ljava/lang/String;)V

    .line 3935
    :cond_0
    :goto_0
    return-void

    .line 3926
    :cond_1
    const-string v1, "onIncomingCallAnswered"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3927
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    .line 3928
    .local v0, "answerUi":Lcom/android/incallui/AnswerUi;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/AnswerUi;->isAnswerAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3929
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/util/SystemServiceUtils;->boostCPU(Landroid/content/Context;)V

    .line 3930
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/AnswerUi;->animateForAnswerCall(I)V

    goto :goto_0
.end method

.method public onServiceBind()V
    .locals 1

    .prologue
    .line 3234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    .line 3235
    return-void
.end method

.method public onServiceUnbind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3238
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/InCallPresenter;->setBoundAndWaitingForOutgoingCall(ZLandroid/telecom/PhoneAccountHandle;)V

    .line 3239
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    .line 3240
    return-void
.end method

.method public onShrinkAnimationComplete()V
    .locals 1

    .prologue
    .line 1741
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mAwaitingCallListUpdate:Z

    if-eqz v0, :cond_0

    .line 1742
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->onCallListChange(Lcom/android/incallui/CallList;)V

    .line 1744
    :cond_0
    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0
    .param p1, "isStarted"    # Z

    .prologue
    .line 3772
    return-void
.end method

.method public onUiShowing(Z)V
    .locals 6
    .param p1, "showing"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2147
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v2, :cond_0

    .line 2148
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2, v4, v5}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    .line 2151
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v2, :cond_1

    .line 2152
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v2, p1}, Lcom/android/incallui/ProximitySensor;->onInCallShowing(Z)V

    .line 2155
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incalluibind/ObjectFactory;->getUiReadyBroadcastIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 2156
    .local v0, "broadcastIntent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 2157
    const-string v4, "com.android.incallui.intent.extra.FIRST_TIME_SHOWN"

    iget-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2159
    if-eqz p1, :cond_4

    .line 2160
    const-string v2, "Sending sticky broadcast: "

    invoke-static {p0, v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2161
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2168
    :cond_2
    :goto_1
    if-eqz p1, :cond_5

    .line 2169
    iput-boolean v3, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    .line 2174
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

    .line 2175
    .local v1, "listener":Lcom/android/incallui/InCallPresenter$InCallUiListener;
    invoke-interface {v1, p1}, Lcom/android/incallui/InCallPresenter$InCallUiListener;->onUiShowing(Z)V

    goto :goto_3

    .line 2157
    .end local v1    # "listener":Lcom/android/incallui/InCallPresenter$InCallUiListener;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 2163
    :cond_4
    const-string v2, "Removing sticky broadcast: "

    invoke-static {p0, v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2164
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 2171
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->updateIsChangingConfigurations()V

    goto :goto_2

    .line 2177
    :cond_6
    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1437
    return-void
.end method

.method public onUpgradeToVideoFail(ILcom/android/incallui/Call;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1659
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

    .line 1660
    return-void
.end method

.method public onUpgradeToVideoRequest(Lcom/android/incallui/Call;I)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoState"    # I

    .prologue
    .line 1548
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

    .line 1550
    if-nez p1, :cond_1

    .line 1572
    :cond_0
    :goto_0
    return-void

    .line 1553
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    .line 1554
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1555
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    .line 1557
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/incallui/service/vt/VideoCallControl;->shouldRejectRequest(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1558
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    goto :goto_0

    .line 1561
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1562
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    .line 1564
    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/incallui/Call;->setRequestedVideoState(I)V

    .line 1565
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1566
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->hideDialpadForModifyCall()V

    .line 1569
    :cond_5
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_0

    .line 1570
    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/incallui/PrivatePolicy;->removeStatus(I)V

    goto :goto_0
.end method

.method public onUpgradeToVideoSuccess(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1648
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

    .line 1650
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/incallui/util/SoundEffect;->turnOnExtraVol(Z)V

    .line 1651
    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1652
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    .line 1653
    .local v0, "recorderManager":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->stopRecord()V

    .line 1655
    .end local v0    # "recorderManager":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    :cond_0
    return-void
.end method

.method protected postAccessibilityEventForUpdateScreen()V
    .locals 2

    .prologue
    .line 4262
    const-string v1, "postAccessibilityEventForUpdateScreen"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4263
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4269
    :cond_0
    :goto_0
    return-void

    .line 4266
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 4267
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isForegroundActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4268
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->postAccessibilityEventForUpdateScreen()V

    goto :goto_0
.end method

.method public refreshListeners()V
    .locals 5

    .prologue
    .line 1087
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

    .line 1088
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$InCallStateListener;
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

    .line 1089
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_0

    .line 1091
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$InCallStateListener;
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

    .line 1092
    .restart local v0    # "listener":Lcom/android/incallui/InCallPresenter$InCallStateListener;
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

    .line 1093
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_1

    .line 1095
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$InCallStateListener;
    :cond_1
    return-void
.end method

.method public removeCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$CanAddCallListener;

    .prologue
    .line 1829
    if-eqz p1, :cond_0

    .line 1830
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1832
    :cond_0
    return-void
.end method

.method public removeConfigurationListener(Lcom/android/incallui/InCallPresenter$ConfigurationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$ConfigurationListener;

    .prologue
    .line 1909
    if-eqz p1, :cond_0

    .line 1910
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mConfigurationListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1912
    :cond_0
    return-void
.end method

.method public removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallDetailsListener;

    .prologue
    .line 1818
    if-eqz p1, :cond_0

    .line 1819
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1821
    :cond_0
    return-void
.end method

.method public removeEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$EmergencyModeListener;

    .prologue
    .line 1865
    if-eqz p1, :cond_0

    .line 1866
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mEmergencyModeListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1868
    :cond_0
    return-void
.end method

.method public removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallEventListener;

    .prologue
    .line 1854
    if-eqz p1, :cond_0

    .line 1855
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1857
    :cond_0
    return-void
.end method

.method public removeInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallUiListener;

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    .prologue
    .line 1767
    if-eqz p1, :cond_0

    .line 1768
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1770
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallStateListener;

    .prologue
    .line 1805
    if-eqz p1, :cond_0

    .line 1806
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1808
    :cond_0
    return-void
.end method

.method public removeListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallStateListener;

    .prologue
    .line 1929
    if-eqz p1, :cond_0

    .line 1930
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListenersOfManager:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1932
    :cond_0
    return-void
.end method

.method public removeMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;

    .prologue
    .line 1898
    if-eqz p1, :cond_0

    .line 1899
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mMobileKeyboardListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1901
    :cond_0
    return-void
.end method

.method public removeMsgCheckUILocked()V
    .locals 3

    .prologue
    const/16 v2, 0x3ed

    .line 3908
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3909
    const-string v0, "removeMsgCheckUILocked"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3910
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3912
    :cond_0
    return-void
.end method

.method public removeOnehandAnyScreenOnListener(Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;

    .prologue
    .line 1887
    if-eqz p1, :cond_0

    .line 1888
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandAnyScreenOnListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1890
    :cond_0
    return-void
.end method

.method public removeOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$OnehandModeListener;

    .prologue
    .line 1876
    if-eqz p1, :cond_0

    .line 1877
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandModeListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1879
    :cond_0
    return-void
.end method

.method public removeOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallOrientationListener;

    .prologue
    .line 1840
    if-eqz p1, :cond_0

    .line 1841
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1843
    :cond_0
    return-void
.end method

.method public removeRejectCallNotification()V
    .locals 3

    .prologue
    .line 4276
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4277
    .local v0, "context":Landroid/content/Context;
    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 4278
    .local v1, "mNotificationManager":Landroid/app/NotificationManager;
    if-eqz v1, :cond_0

    .line 4279
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 4280
    :cond_0
    return-void
.end method

.method resetAutoAnsTimer()V
    .locals 1

    .prologue
    .line 4172
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    if-eqz v0, :cond_0

    .line 4173
    const-string v0, "resetAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4174
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;->cancel()V

    .line 4175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    .line 4177
    :cond_0
    return-void
.end method

.method public sendLockScreenEvent()V
    .locals 1

    .prologue
    .line 1949
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->sendLockScreenEvent(Z)V

    .line 1950
    return-void
.end method

.method public sendLockScreenEvent(Z)V
    .locals 2
    .param p1, "now"    # Z

    .prologue
    .line 1953
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

    .line 1954
    const-string v0, "lock_screen_during_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1955
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1956
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->sendLockScreenEvent(Z)V

    .line 1959
    :cond_0
    return-void
.end method

.method public sendMsgCallListChange()V
    .locals 1

    .prologue
    .line 3897
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->sendMsgCallListChange(I)V

    .line 3898
    return-void
.end method

.method public sendMsgCallListChange(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    const/16 v1, 0x3ea

    .line 3901
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3902
    const-string v0, "sendMsgCallListChange"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3903
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3905
    :cond_0
    return-void
.end method

.method public sendMsgCheckUILocked()V
    .locals 5

    .prologue
    const/16 v4, 0x3ed

    .line 3915
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3916
    const-string v0, "sendMsgCheckUILocked"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3917
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3919
    :cond_0
    return-void
.end method

.method public setActivity(Lcom/android/incallui/InCallActivity;)V
    .locals 11
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 904
    if-nez p1, :cond_0

    .line 905
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "registerActivity cannot be called with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eq v0, p1, :cond_1

    .line 908
    const-string v0, "Setting a second activity before destroying the first."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->forceFinish()V

    .line 912
    :cond_1
    const-string v0, "feature_dcm"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 913
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0, v2, v9}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v6

    .line 914
    .local v6, "call":Lcom/android/incallui/Call;
    if-eqz v6, :cond_3

    .line 915
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v8

    .line 916
    .local v8, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v8, :cond_3

    .line 917
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter;->DCM_APP_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 918
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 919
    const-string v0, "NTT DOCOMO : cursor != null && cursor count != 0 "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 920
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 921
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    if-ne v0, v10, :cond_2

    .line 922
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 923
    iput-boolean v10, v8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    .line 926
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 933
    :goto_0
    iget-boolean v0, v8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    if-eqz v0, :cond_3

    .line 934
    const-string v0, "NTT DOCOMO : registerContentObserver "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter;->DCM_APP_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mHideStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v10, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 941
    .end local v6    # "call":Lcom/android/incallui/Call;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->updateActivity(Lcom/android/incallui/InCallActivity;)V

    .line 942
    return-void

    .line 927
    .restart local v6    # "call":Lcom/android/incallui/Call;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 928
    const-string v0, "NTT DOCOMO : cursor count=0 "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 929
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 931
    :cond_5
    const-string v0, "NTT DOCOMO : cursor=null "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAnsMemoRecordMgr(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)V
    .locals 0
    .param p1, "mgr"    # Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    .prologue
    .line 4093
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    .line 4094
    return-void
.end method

.method public setAudioMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 3881
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

    .line 3882
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    .line 3883
    return-void
.end method

.method public setBlockToUpdateNotification(Z)V
    .locals 1
    .param p1, "block"    # Z

    .prologue
    .line 3358
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    .line 3359
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0, p1}, Lcom/android/incallui/StatusBarNotifier;->setBlockToUpdate(Z)V

    .line 3361
    :cond_0
    return-void
.end method

.method public setBoundAndWaitingForOutgoingCall(ZLandroid/telecom/PhoneAccountHandle;)V
    .locals 2
    .param p1, "isBound"    # Z
    .param p2, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 1722
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

    .line 1723
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mBoundAndWaitingForOutgoingCall:Z

    .line 1724
    iput-object p2, p0, Lcom/android/incallui/InCallPresenter;->mPendingPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 1725
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    .line 1726
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 1728
    :cond_0
    return-void
.end method

.method public setCallPopupService(Lcom/android/incallui/service/SecCallPopupService;)V
    .locals 0
    .param p1, "callPopupService"    # Lcom/android/incallui/service/SecCallPopupService;

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    .line 1076
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1
    .param p1, "isFullScreen"    # Z

    .prologue
    .line 4332
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/InCallPresenter;->setFullScreen(ZZ)V

    .line 4333
    return-void
.end method

.method public setFullScreen(ZZ)V
    .locals 2
    .param p1, "isFullScreen"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 4344
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4345
    const/4 p1, 0x0

    .line 4346
    const-string v0, "setFullScreen FullScreenMode is unavailable"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fullscreen(Ljava/lang/String;)V

    .line 4348
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    if-eq v0, p1, :cond_1

    .line 4349
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

    .line 4350
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    .line 4351
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->notifyFullscreenModeChange(Z)V

    .line 4353
    :cond_1
    return-void
.end method

.method public setInCallAllowsOrientationChange(Z)V
    .locals 2
    .param p1, "allowOrientationChange"    # Z

    .prologue
    .line 3433
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    .line 3434
    const-string v0, "mInCallActivity is null. Can\'t set requested orientation."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3448
    :goto_0
    return-void

    .line 3438
    :cond_0
    if-nez p1, :cond_1

    .line 3439
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->NO_SENSOR_SCREEN_ORIENTATION:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->setRequestedOrientation(I)V

    .line 3447
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->enableInCallOrientationEventListener(Z)V

    goto :goto_0

    .line 3444
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->FULL_SENSOR_SCREEN_ORIENTATION:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->setRequestedOrientation(I)V

    goto :goto_1
.end method

.method public setInCallState(Lcom/android/incallui/InCallPresenter$InCallState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    .line 4453
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 4454
    return-void
.end method

.method public setPhotoringBlocked(I)V
    .locals 1
    .param p1, "block"    # I

    .prologue
    .line 2260
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2261
    :cond_0
    iput p1, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    .line 2263
    :cond_1
    return-void
.end method

.method public setRecordMgr(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V
    .locals 1
    .param p1, "mgr"    # Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    .prologue
    .line 3873
    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    .line 3874
    return-void
.end method

.method public setSubNumberDialog(Lcom/android/incallui/util/SecSubNumberDialogActivity;)V
    .locals 0
    .param p1, "dialog"    # Lcom/android/incallui/util/SecSubNumberDialogActivity;

    .prologue
    .line 4449
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mSubNumberDialog:Lcom/android/incallui/util/SecSubNumberDialogActivity;

    .line 4450
    return-void
.end method

.method public setThemeColors()V
    .locals 5

    .prologue
    .line 3526
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/InCallPresenter;->getColorsFromCall(Lcom/android/incallui/Call;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    .line 3528
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v3, :cond_0

    .line 3546
    :goto_0
    return-void

    .line 3532
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3534
    .local v1, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0e0010

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3537
    const v3, 0x7f0f01e6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 3542
    .local v0, "color":I
    :goto_1
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 3543
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    const v3, 0x7f090044

    .line 3544
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 3545
    .local v2, "td":Landroid/app/ActivityManager$TaskDescription;
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3, v2}, Lcom/android/incallui/InCallActivity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    goto :goto_0

    .line 3539
    .end local v0    # "color":I
    .end local v2    # "td":Landroid/app/ActivityManager$TaskDescription;
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    iget v0, v3, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    .restart local v0    # "color":I
    goto :goto_1
.end method

.method public setUp(Landroid/content/Context;Lcom/android/incallui/CallList;Lcom/android/incallui/AudioModeProvider;Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/ProximitySensor;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callList"    # Lcom/android/incallui/CallList;
    .param p3, "audioModeProvider"    # Lcom/android/incallui/AudioModeProvider;
    .param p4, "statusBarNotifier"    # Lcom/android/incallui/StatusBarNotifier;
    .param p5, "contactInfoCache"    # Lcom/android/incallui/ContactInfoCache;
    .param p6, "proximitySensor"    # Lcom/android/incallui/ProximitySensor;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 697
    const-string v4, "perf - setUp()"

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 698
    iget-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    if-eqz v4, :cond_3

    .line 699
    const-string v4, "New service connection replacing existing one."

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 701
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    if-ne p1, v4, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 702
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-ne p2, v4, :cond_1

    move v4, v5

    :goto_1
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 703
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    if-ne p3, v4, :cond_2

    :goto_2
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 838
    :goto_3
    return-void

    :cond_0
    move v4, v6

    .line 701
    goto :goto_0

    :cond_1
    move v4, v6

    .line 702
    goto :goto_1

    :cond_2
    move v5, v6

    .line 703
    goto :goto_2

    .line 707
    :cond_3
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    .line 710
    iput-object p5, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    .line 711
    const-string v4, "yellowpage_callerid_info"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 712
    invoke-static {p1}, Lcom/android/incallui/secutils/YellowPageCallerid;->initContactService(Landroid/content/Context;)V

    .line 715
    :cond_4
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-nez v4, :cond_5

    .line 716
    iput-object p4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    .line 717
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 720
    :cond_5
    iput-object p3, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    .line 722
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-nez v4, :cond_6

    .line 723
    iput-object p6, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    .line 724
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 727
    :cond_6
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    if-nez v4, :cond_7

    .line 728
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    .line 729
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v4, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->addListenerToFirst(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    .line 732
    :cond_7
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 733
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallPresenter;->addInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)V

    .line 735
    iput-object p2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    .line 738
    iput-boolean v5, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    .line 742
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v4, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    .line 743
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/incallui/service/vt/VideoCallManager;->setUp(Lcom/android/incallui/InCallPresenter;)V

    .line 744
    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/incallui/VideoPauseController;->setUp(Lcom/android/incallui/InCallPresenter;)V

    .line 745
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->addSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V

    .line 748
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 749
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x20

    invoke-virtual {v4, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 752
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_e

    .line 753
    new-instance v4, Lcom/android/incallui/InCallPresenter$InCallReceiver;

    invoke-direct {v4, p0, v8}, Lcom/android/incallui/InCallPresenter$InCallReceiver;-><init>(Lcom/android/incallui/InCallPresenter;Lcom/android/incallui/InCallPresenter$1;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    .line 754
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 755
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "support_tphone"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 756
    const-string v4, "com.skt.prod.phone.action.FINISH_INCALLUI"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 758
    :cond_8
    const-string v4, "support_safetycare"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 759
    const-string v4, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 761
    :cond_9
    const-string v4, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 762
    const-string v4, "ims_ps_barring"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 763
    const-string v4, "com.android.intent.action.PSBARRED_FOR_VOLTE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 765
    :cond_a
    sget-boolean v4, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_CDMA:Z

    if-nez v4, :cond_b

    sget-boolean v4, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_GSM:Z

    if-eqz v4, :cond_c

    .line 766
    :cond_b
    const-string v4, "com.samsung.intent.action.DATAUSAGE_REACH_TO_WARNING"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 767
    const-string v4, "com.android.intent.action.VIDEO_DATAUSAGE_REACH_TO_LIMIT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 770
    :cond_c
    const-string v4, "support_bluetooth_multi_profile"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 771
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 774
    :cond_d
    const-string v4, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 776
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v1}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 779
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_e
    sget-boolean v4, Lcom/android/incallui/service/vt/VideoCallConfig;->EPDG_ERROR_EVENT:Z

    if-eqz v4, :cond_f

    .line 780
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    if-nez v4, :cond_f

    .line 781
    new-instance v4, Lcom/android/incallui/service/vt/EpdgManager;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/incallui/service/vt/EpdgManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    .line 785
    :cond_f
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_10

    .line 786
    new-instance v4, Lcom/android/incallui/util/ContactAgentUtils$ContactAgentReceiver;

    invoke-direct {v4}, Lcom/android/incallui/util/ContactAgentUtils$ContactAgentReceiver;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    .line 787
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 788
    .local v0, "contactAgentFilter":Landroid/content/IntentFilter;
    sget-object v4, Lcom/android/incallui/util/ContactAgentUtils;->ACTION_CONTACT_ORIGINAL_IMAGE_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 789
    const-string v4, "add receiver for coreapps"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 790
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v0}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 793
    .end local v0    # "contactAgentFilter":Landroid/content/IntentFilter;
    :cond_10
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallEdgeManager:Lcom/android/incallui/edge/CallEdgeManager;

    if-nez v4, :cond_11

    .line 794
    new-instance v4, Lcom/android/incallui/edge/CallEdgeManager;

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/android/incallui/edge/CallEdgeManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallEdgeManager:Lcom/android/incallui/edge/CallEdgeManager;

    .line 798
    :cond_11
    const-string v4, "smart_auto_answering"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 799
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_12

    .line 800
    new-instance v4, Lcom/android/incallui/InCallPresenter$SmartAnswerBroadcastReceiver;

    invoke-direct {v4, p0, v8}, Lcom/android/incallui/InCallPresenter$SmartAnswerBroadcastReceiver;-><init>(Lcom/android/incallui/InCallPresenter;Lcom/android/incallui/InCallPresenter$1;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 801
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 802
    .local v3, "smartAnswerFilter":Landroid/content/IntentFilter;
    const-string v4, "com.shhphone.autoanswer.AUTOANSWER_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 803
    const-string v4, "add receiver for smart answer"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 804
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v3}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 809
    .end local v3    # "smartAnswerFilter":Landroid/content/IntentFilter;
    :cond_12
    const-string v4, "add receiver for ACTION_ML_STATE"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 810
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 811
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v4, "com.samsung.android.mirrorlink.ML_STATE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 812
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mMirrorlinkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v1}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 816
    const-string v4, "add receiver for ACTION_CARMODE_STATE"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 817
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 818
    .local v2, "mCarModefilter":Landroid/content/IntentFilter;
    const-string v4, "com.sec.android.automotive.drivelink.carmodechanged"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 819
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mCarmodeStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v2}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 821
    new-instance v4, Lcom/android/incallui/bike/BikeModeController;

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/android/incallui/bike/BikeModeController;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    .line 822
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    invoke-virtual {v4}, Lcom/android/incallui/bike/BikeModeController;->setUp()V

    .line 824
    const-string v4, "support_bluetooth_multi_profile"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 825
    new-instance v4, Lcom/android/incallui/BluetoothProfileManager;

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/android/incallui/BluetoothProfileManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

    .line 826
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

    invoke-virtual {v4}, Lcom/android/incallui/BluetoothProfileManager;->initBluetoothProfileProxy()V

    .line 829
    :cond_13
    const-string v4, "support_knox_desktop"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 830
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->getInstance()Lcom/android/incallui/util/DesktopModeManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    .line 831
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/android/incallui/util/DesktopModeManager;->init(Landroid/content/Context;)V

    .line 835
    :cond_14
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/SALogging;->registerTelecommSALoggingReceiver(Landroid/content/Context;)Z

    .line 837
    const-string v4, "perf - Finished InCallPresenter.setUp"

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_3
.end method

.method public setVideoPopup(Lcom/android/incallui/service/SecVideoPopupService;)V
    .locals 0
    .param p1, "videoPopupService"    # Lcom/android/incallui/service/SecVideoPopupService;

    .prologue
    .line 893
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/service/SecVideoPopupService;

    .line 894
    return-void
.end method

.method public showConferenceCallManager(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 3491
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    .line 3496
    :goto_0
    return-void

    .line 3495
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->showConferenceCallManager(Z)V

    goto :goto_0
.end method

.method public showDialpadDuringPenMultiWindow(Z)Z
    .locals 2
    .param p1, "showDialpad"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3273
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3293
    :cond_0
    :goto_0
    return v1

    .line 3275
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3276
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3277
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3278
    const-string v0, "showDialpadDuringPenMultiWindow"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showInCall(ZZ)V
    .locals 10
    .param p1, "showDialpad"    # Z
    .param p2, "newOutgoingCall"    # Z

    .prologue
    const/16 v9, 0x3ed

    const/4 v8, 0x1

    .line 3186
    const-string v4, "showInCall"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3188
    const-string v4, "support_tphone"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3189
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3190
    const-string v4, "do not showInCall incallUi when tphone mode"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3231
    :cond_0
    :goto_0
    return-void

    .line 3195
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3196
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/incallui/InCallActivity;->showConferenceCallManager(Z)V

    .line 3199
    :cond_2
    const-string v4, "feature_multisim_preferred_sim"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "feature_multisim_adaptive_callback"

    .line 3200
    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3201
    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    .line 3202
    .local v2, "newState":Lcom/android/incallui/InCallPresenter$InCallState;
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

    .line 3203
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_SIM_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v4, :cond_4

    .line 3204
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->showSelectPhoneSimAccountDialog()V

    goto :goto_0

    .line 3209
    .end local v2    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getTargetClass()Ljava/lang/Class;

    move-result-object v3

    .line 3210
    .local v3, "targetClass":Ljava/lang/Class;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v3}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZLjava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 3214
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3215
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 3216
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v4, :cond_5

    if-eqz p2, :cond_5

    .line 3217
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->lock()V

    .line 3218
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3219
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3223
    :cond_5
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3224
    const-string v4, "perf - startActivity with Bundle"

    invoke-static {p0, v4, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3225
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getInCallActivityInfo()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 3227
    :cond_6
    const-string v4, "perf - startActivity "

    invoke-static {p0, v4, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3228
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public showVideoPopup()V
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/service/SecVideoPopupService;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/service/SecVideoPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecVideoPopupService;->showPopup()V

    .line 890
    :cond_0
    return-void
.end method

.method public smartAnsweringMode(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 4492
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 4493
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 4495
    const-string v1, "smartAnsweringMode() smart answer Broadcast, hasIncomingCall"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4496
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4497
    invoke-static {v3}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    .line 4499
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/incallui/InCallPresenter;->answerIncomingCall(Landroid/content/Context;I)V

    .line 4500
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4501
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnsweringMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4502
    invoke-static {v3}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnsweringMode(Z)V

    .line 4504
    :cond_0
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->playGuidance()V

    .line 4508
    :cond_1
    return-void
.end method

.method public startContactInfoSearch(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 4511
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    .line 4512
    .local v0, "cache":Lcom/android/incallui/ContactInfoCache;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 4513
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->queryCompleted:Z

    if-eqz v2, :cond_0

    .line 4514
    const-string v2, "skip startContactInfoSearch"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4537
    :goto_0
    return-void

    .line 4517
    :cond_0
    const/4 v2, 0x0

    new-instance v3, Lcom/android/incallui/InCallPresenter$9;

    invoke-direct {v3, p0}, Lcom/android/incallui/InCallPresenter$9;-><init>(Lcom/android/incallui/InCallPresenter;)V

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    goto :goto_0
.end method

.method public startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 21
    .param p1, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    .line 2706
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

    .line 2709
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

    .line 2710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/wrapper/KnoxCustomManagerWrapper;->getCallScreenDisabledItems(Landroid/content/Context;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/InCallPresenter;->mKnoxCustomDisabledItems:I

    .line 2711
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

    .line 2715
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v17

    if-nez v17, :cond_1

    .line 2716
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallApp;->unlock()V

    .line 2719
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v6

    .line 2720
    .local v6, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isKidsModeRunning()Z

    move-result v17

    if-eqz v17, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/incallui/Call;->isEmergencyCall()Z

    move-result v17

    if-nez v17, :cond_3

    .line 2721
    const-string v17, "kids mode is running, return"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2722
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

    .line 2723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallActivity;->finish()V

    .line 2927
    .end local p1    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_2
    :goto_0
    return-object p1

    .line 2727
    .restart local p1    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCarmodeHome()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 2728
    const-string v17, "car mode is running, return"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2732
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    move-object/from16 v17, v0

    .line 2733
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/bike/BikeModeController;->startOrFinishUiConsumed(Lcom/android/incallui/InCallPresenter$InCallState;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 2755
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

    .line 2756
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getLiveCallCounts()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    const/4 v5, 0x1

    .line 2757
    .local v5, "alreadyOutgoing":Z
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

    .line 2758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_2

    if-nez v5, :cond_2

    .line 2786
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_f

    const/16 v16, 0x1

    .line 2789
    .local v16, "startStartupSequence":Z
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

    .line 2803
    .local v14, "showAccountPicker":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v17

    if-nez v17, :cond_13

    const/4 v11, 0x1

    .line 2804
    .local v11, "mainUiNotVisible":Z
    :goto_4
    if-nez v11, :cond_8

    .line 2805
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->getCallCardFragmentVisible()Z

    move-result v17

    if-nez v17, :cond_14

    const/16 v17, 0x1

    :goto_5
    or-int v11, v11, v17

    .line 2807
    :cond_8
    if-nez v11, :cond_9

    .line 2808
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v17

    if-eqz v17, :cond_15

    .line 2809
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v17

    if-eqz v17, :cond_15

    const/16 v17, 0x1

    :goto_6
    or-int v11, v11, v17

    .line 2811
    :cond_9
    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v17

    if-nez v17, :cond_a

    .line 2812
    const/4 v11, 0x0

    .line 2818
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

    .line 2819
    .local v9, "isFirstPendingOutgoing":Z
    :goto_7
    if-eqz v11, :cond_17

    if-nez v9, :cond_b

    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_17

    :cond_b
    const/4 v15, 0x1

    .line 2820
    .local v15, "showCallUi":Z
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

    .line 2822
    const-string v17, "rich_call_screen_cmcc"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v17

    if-nez v17, :cond_d

    .line 2823
    const/4 v13, 0x0

    .line 2824
    .local v13, "primary":Lcom/android/incallui/Call;
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_18

    .line 2825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v13

    .line 2834
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

    .line 2835
    if-eqz v13, :cond_d

    .line 2836
    new-instance v10, Lcom/android/incallui/richscreen/RichCallScreenUtils;

    invoke-direct {v10}, Lcom/android/incallui/richscreen/RichCallScreenUtils;-><init>()V

    .line 2837
    .local v10, "mRichCallScreenUtils":Lcom/android/incallui/richscreen/RichCallScreenUtils;
    invoke-virtual {v13}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v17

    const-string v18, "1110000000"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/android/incallui/richscreen/RichCallScreenUtils;->getRichCallScreenPersonObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 2855
    .end local v10    # "mRichCallScreenUtils":Lcom/android/incallui/richscreen/RichCallScreenUtils;
    .end local v13    # "primary":Lcom/android/incallui/Call;
    :cond_d
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1b

    if-eqz v11, :cond_1b

    .line 2856
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

    .line 2862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v17

    if-nez v17, :cond_1c

    const/4 v4, 0x1

    .line 2863
    .local v4, "activityIsFinishing":Z
    :goto_b
    if-eqz v4, :cond_1d

    .line 2864
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

    .line 2865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 p1, v0

    goto/16 :goto_0

    .line 2756
    .end local v4    # "activityIsFinishing":Z
    .end local v5    # "alreadyOutgoing":Z
    .end local v9    # "isFirstPendingOutgoing":Z
    .end local v11    # "mainUiNotVisible":Z
    .end local v14    # "showAccountPicker":Z
    .end local v15    # "showCallUi":Z
    .end local v16    # "startStartupSequence":Z
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2786
    .restart local v5    # "alreadyOutgoing":Z
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 2789
    .restart local v16    # "startStartupSequence":Z
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

    .line 2803
    .restart local v14    # "showAccountPicker":Z
    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 2805
    .restart local v11    # "mainUiNotVisible":Z
    :cond_14
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 2809
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 2818
    :cond_16
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 2819
    .restart local v9    # "isFirstPendingOutgoing":Z
    :cond_17
    const/4 v15, 0x0

    goto/16 :goto_8

    .line 2826
    .restart local v13    # "primary":Lcom/android/incallui/Call;
    .restart local v15    # "showCallUi":Z
    :cond_18
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_19

    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1a

    .line 2827
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v13

    .line 2828
    if-nez v13, :cond_c

    .line 2829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v13

    goto/16 :goto_9

    .line 2831
    :cond_1a
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 2832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v13

    goto/16 :goto_9

    .line 2856
    .end local v13    # "primary":Lcom/android/incallui/Call;
    :cond_1b
    const/16 v17, 0x0

    goto/16 :goto_a

    .line 2862
    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 2868
    .restart local v4    # "activityIsFinishing":Z
    :cond_1d
    if-nez v15, :cond_1e

    if-eqz v14, :cond_22

    .line 2869
    :cond_1e
    const-string v17, "Start in call UI"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2870
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->clearDisconnectedTimeoutEvent()Z

    .line 2871
    const/16 v18, 0x0

    if-nez v14, :cond_20

    const/16 v17, 0x1

    :goto_c
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    .line 2872
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

    .line 2873
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v17

    if-nez v17, :cond_1f

    .line 2874
    const-string v17, "Minimize other popup window"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2875
    new-instance v12, Landroid/content/Intent;

    const-string v17, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2876
    .local v12, "minimizeIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2878
    .end local v12    # "minimizeIntent":Landroid/content/Intent;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "com.android.incallui"

    .line 2880
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v17

    if-eqz v17, :cond_21

    const-string v17, "OVDT"

    .line 2881
    :goto_d
    invoke-static {}, Lcom/android/incallui/util/AppLogging;->getCallTypeString()Ljava/lang/String;

    move-result-object v20

    .line 2878
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2871
    :cond_20
    const/16 v17, 0x0

    goto :goto_c

    .line 2880
    :cond_21
    const-string v17, "OVCT"

    goto :goto_d

    .line 2882
    :cond_22
    if-eqz v16, :cond_27

    .line 2883
    const-string v17, "Start Full Screen in call UI"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2887
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v17

    if-eqz v17, :cond_23

    .line 2888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v17, v0

    if-eqz v17, :cond_23

    .line 2889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 2892
    :cond_23
    const-string v17, "multi_number_cmcc"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mSubNumberDialog:Lcom/android/incallui/util/SecSubNumberDialogActivity;

    move-object/from16 v17, v0

    if-eqz v17, :cond_24

    .line 2893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mSubNumberDialog:Lcom/android/incallui/util/SecSubNumberDialogActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/util/SecSubNumberDialogActivity;->finish()V

    .line 2896
    :cond_24
    const-string v17, "support_tphone"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_25

    .line 2897
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v17

    if-eqz v17, :cond_25

    .line 2898
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v7

    .line 2899
    .local v7, "incomingCall":Lcom/android/incallui/Call;
    invoke-static {v7}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v17

    if-eqz v17, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v17

    if-eqz v17, :cond_25

    .line 2900
    const-string v17, "finish InCallActivity when incoming call in the tphone mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2901
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    goto/16 :goto_0

    .line 2906
    .end local v7    # "incomingCall":Lcom/android/incallui/Call;
    :cond_25
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v17

    if-eqz v17, :cond_26

    .line 2907
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getLiveCallCounts()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    move-object/from16 v17, v0

    .line 2908
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v17

    if-nez v17, :cond_26

    .line 2909
    new-instance v8, Landroid/content/Intent;

    const-string v17, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2910
    .local v8, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2913
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_26
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/InCallPresenter;->startUi(Lcom/android/incallui/InCallPresenter$InCallState;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 2917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 p1, v0

    goto/16 :goto_0

    .line 2919
    :cond_27
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 2921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    if-eqz v17, :cond_28

    .line 2922
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

    .line 2924
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    .line 2925
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    goto/16 :goto_0
.end method

.method public stopRecord()V
    .locals 4

    .prologue
    .line 3863
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    if-eqz v0, :cond_0

    .line 3864
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3865
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3866
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->stopRecord()V

    .line 3870
    :cond_0
    return-void
.end method

.method public tearDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 849
    const-string v0, "tearDown"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->clearOnDisconnect()V

    .line 851
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    .line 852
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    .line 854
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 855
    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoPauseController;->tearDown()V

    .line 856
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->tearDown()V

    .line 857
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->removeSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V

    .line 858
    return-void
.end method

.method public toggleSpeakerphone()V
    .locals 3

    .prologue
    .line 3887
    const/16 v0, 0x8

    .line 3889
    .local v0, "newMode":I
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 3890
    const/4 v0, 0x5

    .line 3893
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->setAudioMode(I)V

    .line 3894
    return-void
.end method

.method public unsetActivity(Lcom/android/incallui/InCallActivity;)V
    .locals 2
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 949
    if-nez p1, :cond_0

    .line 950
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unregisterActivity cannot be called with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_1

    .line 953
    const-string v0, "No InCallActivity currently set, no need to unset."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 962
    :goto_0
    return-void

    .line 956
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eq v0, p1, :cond_2

    .line 957
    const-string v0, "Second instance of InCallActivity is trying to unregister when another instance is active. Ignoring."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 961
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->updateActivity(Lcom/android/incallui/InCallActivity;)V

    goto :goto_0
.end method

.method public updateForegroundCallDetails()V
    .locals 4

    .prologue
    .line 2486
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2487
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->canUpdateDetailsChanged(Landroid/telecom/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2488
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mUpdateUtil:Lcom/android/incallui/util/CallUpdateUtil;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/CallUpdateUtil;->update(Ljava/lang/Object;)V

    .line 2490
    :cond_0
    return-void
.end method

.method updateIsChangingConfigurations()V
    .locals 2

    .prologue
    .line 2134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 2135
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 2136
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isChangingConfigurations()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 2138
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

    .line 2139
    return-void
.end method

.method public updateNotification()V
    .locals 3

    .prologue
    .line 3346
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    .line 3347
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    .line 3349
    :cond_0
    return-void
.end method

.method public updateNotification(Z)V
    .locals 3
    .param p1, "emergencymode"    # Z

    .prologue
    .line 3352
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    .line 3353
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;Z)Z

    .line 3355
    :cond_0
    return-void
.end method

.method public updatePhotoringState()V
    .locals 3

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 2251
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    iget v2, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallActivity;->updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V

    .line 2253
    :cond_0
    return-void
.end method

.method public updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;ILjava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;
    .param p2, "block"    # I
    .param p3, "path"    # Ljava/lang/Object;

    .prologue
    .line 2239
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

    .line 2240
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    .line 2241
    iput p2, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    .line 2242
    check-cast p3, Ljava/lang/String;

    .end local p3    # "path":Ljava/lang/Object;
    iput-object p3, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringContentPath:Ljava/lang/String;

    .line 2243
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

    .line 2244
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 2245
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V

    .line 2247
    :cond_0
    return-void
.end method

.method public updateRejectCallNotification(Z)V
    .locals 1
    .param p1, "hasMsg"    # Z

    .prologue
    .line 4272
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0, p1}, Lcom/android/incallui/StatusBarNotifier;->registerRejectCallNotification(Z)V

    .line 4273
    :cond_0
    return-void
.end method

.method public updateRightNow(Ljava/lang/Object;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 634
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v3, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, p1

    .line 635
    check-cast v2, Landroid/telecom/Call;

    .line 636
    .local v2, "telecomCall":Landroid/telecom/Call;
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v3, v2}, Lcom/android/incallui/CallList;->getCallByTelecomCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 637
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_2

    .line 638
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

    .line 641
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

    .line 642
    .local v1, "listener":Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
    invoke-virtual {v2}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Lcom/android/incallui/InCallPresenter$InCallDetailsListener;->onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V

    goto :goto_1
.end method
